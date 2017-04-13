# WUPHF - Whenever. Wherever.

Inspired by [NBC's The Office](http://www.nbc.com/the-office)

This is an open-source toy app to annoy your friends. The live demo can be viewed [here](http://www.wuphf.io/). The goal is to eventually create user sign-ups so that a registered user can save friends to their **dog pack**. Wuphf'ing a member of your dog pack will be easier than manually entering recipient information every time.

## How It Works (With Images)

__Fill out the form__
<img src="https://cloud.githubusercontent.com/assets/8096483/24992866/72c70b66-1fd8-11e7-82df-8848606133e5.png" width="500px">

Wuphfee receives an email
![Alt text](https://cloud.githubusercontent.com/assets/8096483/24992865/72c589c6-1fd8-11e7-8388-1a8fc452f781.png "Wuphfee reeives an email")

Wuphfee receives a text
![Alt text](https://cloud.githubusercontent.com/assets/8096483/24992895/97c09248-1fd8-11e7-8528-8186805a1f65.png "Wuphfee receives a text")

Wuphfee is tweeted at
![Alt text](https://cloud.githubusercontent.com/assets/8096483/24992864/72b7d1c8-1fd8-11e7-8f52-2404073fbf7e.png "Wuphfee is tweeted at")

## Sending a Wuphf from the landing page

Currently, Wuphf'ing from the landing page will:

* Send the recipient an email via SendGrid
* Send the recipient a text message via Twilio
* Post a tweet with an @ mention of the recipient's twitter handle to the [Wuphf's twitter page](https://twitter.com/wuphfwuphf)

## TODO

* Create User Registrations (w/ OAuth)
  - a registered user can create a `friend` object that they may send wuphfs too
  - a registered user can send tweets and DMs through their own twitter account
  - a registered user can post on their friend's facebook wall
