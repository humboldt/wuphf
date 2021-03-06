class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:home, :twitter_auth]

  def home
    unless current_user.nil?
      token    = current_user.twitter_token_digest
      secret   = current_user.twitter_secret_digest
      @twitter = TwitterWrapper.new(token, secret)
    end

    @recipients = current_user.recipients
    @message    = current_user.messages.build
  end

  def twitter_auth
    twitter_auth  = TwitterAuth.new
    callback_url  = twitter_auth.callback_url
    request_token = twitter_auth.consumer.get_request_token(:oauth_callback => callback_url)

    session[:token]        = request_token.token
    session[:token_secret] = request_token.secret

    redirect_to request_token.authorize_url(:oauth_callback => callback_url)
  end

  def twitter_enabled
    twitter_auth     = TwitterAuth.new
    token_and_secret = { oauth_token: session[:token], oauth_token_secret: session[:token_secret]}
    request_token    = twitter_auth.request_token(twitter_auth.consumer, token_and_secret)
    access_token     = request_token.get_access_token(oauth_verifier: params[:oauth_verifier])

    current_user.update_attribute(:twitter_token_digest, access_token.token)
    current_user.update_attribute(:twitter_secret_digest, access_token.secret)

    redirect_to dashboard_url
  end

  def twitter_unlink
    current_user.update_attribute(:twitter_token_digest, nil)
    current_user.update_attribute(:twitter_secret_digest, nil)

    redirect_to dashboard_url
  end
end
