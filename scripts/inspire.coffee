# Description:
#   Display a inspirational quote whenever the automated build server or someone mentions failure
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   failed - Responds with a great inspirational quote
#
# Author:
#   Bellspringsteen

data = require './datas/inspirational-quotes.json'
quote = []
Object.keys(data).forEach (key) ->
  quote.push data[key]
  return

module.exports = (robot) ->

  robot.hear /(sux)|(suck)|(fail)|(blows)/i, (msg) ->
      msg.send msg.random quote
