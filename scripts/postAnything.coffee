# Description:
#   Post anything to dashboard
#
# Dependencies:
#   request
#
# Configuration:
#   None
#
# Commands:
#   nmbot post 'message'
#
# Author:
#   shawnpetros

request = require 'request'

module.exports = (robot) ->
  robot.respond /post (.+)/i, (msg) ->
    options =
      url: 'http://174.138.56.13:3001/post-anything'
      json: true
      body:
        message: msg.match[1]
        user: msg.message.user.name
    request.post options, () ->
      msg.reply 'sent'
