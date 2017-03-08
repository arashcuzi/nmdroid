# Description
#   Your face is a hubot script. It replies with "your face"isms.
#
# Configuration:
#   HUBOT_YOURFACE_PERCENT (optional)
#		Percent chance that hubot will repond with a "Your face". Default is 40%
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Joe Bott

module.exports = (robot) ->
	percent = process.env.HUBOT_YOURFACE_PERCENT or 40

	lastYourFace = {}
	robot.hear /^([ \w]* )(is|was|isn't|wasn't) ([ \w]+)[\.!]?$/, (res) ->
		name = res.message.user.name;
		if name = 'rwendorf' or name = 'keyu'
			percent = 100
		lower = res.match[1].toLowerCase()
		if lower.indexOf("your face") < 0 and lower.indexOf("how") < 0 and lower.indexOf("why") < 0 and lower.indexOf("wtf") < 0 and lower.indexOf("when") < 0 and lower.indexOf("where") < 0
			yourFace = "Your face " + res.match[2] + " " + res.match[3]
			lastYourFace[(res.res.user.name + '').toLowerCase()] = yourFace
			if Math.random() <= (percent / 100.0)
				setTimeout (->
					res.send yourFace
					), 1000
		return
