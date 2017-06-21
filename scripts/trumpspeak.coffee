# Description:
#   Applause from Orson Welles and others
#
# Dependencies:
#   request
#
# Configuration:
#   None
#
# Commands:
#   trump
#
# Author:
#   shawnpetros

module.exports = (robot) ->
  robot.hear /trump/i, (msg) ->
    msg.http("https://api.whatdoestrumpthink.com/api/v1/quotes/random")
      .get() (err, res, body) ->
        json = JSON.parse body
        message = json.message
        msg.reply message
