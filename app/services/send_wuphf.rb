class SendWuphf
  def initialize(message)
    @current_user = User.find(message.user_id)
    @wuphf = {
      phone: message.recipient_phone,
      email: message.recipient_email,
      twitter_handle: message.recipient_twitter_handle,
      from: message.user_name,
      message: message.content
    }
  end

  def execute
    send_email
    send_text
    send_tweet
  end

  def send_email
    WuphfMailer.wuphf_mail(@wuphf).deliver_now
  end

  def send_text
    twilio = TwilioWrapper.new
    twilio.message = @wuphf[:message]
    twilio.phone   = @wuphf[:phone]
    twilio.from    = @wuphf[:from]
    twilio.send_sms
  end

  def send_tweet
    return if no_twitter_connected || no_recipient_twitter

    token  = @current_user.twitter_token_digest
    secret = @current_user.twitter_secret_digest

    twitter = TwitterWrapper.new(token, secret)
    twitter.message        = @wuphf[:message]
    twitter.twitter_handle = @wuphf[:twitter_handle]

    twitter.tweet
  end

  def no_twitter_connected
    return true if @current_user.twitter_token_digest.nil? || @current_user.twitter_secret_digest.nil?
    @current_user.twitter_token_digest.empty? || @current_user.twitter_secret_digest.empty? ? true : false
  end

  def no_recipient_twitter
    @wuphf[:twitter_handle].empty?
  end
end
