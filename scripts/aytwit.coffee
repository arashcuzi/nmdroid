# Description:
#   Hubot listens for key phrases and
#   responds in Pinky and the Brain
#   style
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   unknown

phrases = (name) -> [
  "Uh, I think so, #{name}, but where will we find \
  a duck and a hose at this hour?"
  "I think so, but where will we find an open tattoo \
  parlor at this time of night?"
  "Wuh, I think so, #{name}, but if we didn\'t have \
  ears, we\'d look like weasels."
  "Uh... yeah, #{name}, but where are we going to find rubber pants our size?"
  "Uh, I think so, #{name}, but balancing a family and \
  a career ...oooh, it\'s all too much for me."
  "Wuh, I think so, #{name}, but isn\'t Regis Philbin already married?"
  "Uh, I think so, #{name}, but burlap chafes me so."
  "Sure, #{name}, but how are we going to find chaps our size?"
  "Uh, I think so, #{name}, but we\'ll never get a monkey to use dental floss."
  "Uh, I think so, #{name}, but this time, you wear the tutu."
  "I think so, #{name}, but culottes have a tendency to ride up so."
  "I think so, #{name}, but if they called them sad meals, \
  kids wouldn\'t buy them."
  "I think so, #{name}, but me and Pippi Longstocking... I mean, \
  what would the children look like?"
  "I think so, #{name}, but this time, you put the trousers on the chimp."
  "Well, I think so, #{name}, but I can\'t memorize a whole opera in Yiddish."
]

module.exports = (robot) ->
  robot.hear /are you thinking|what (im|i'm) thinking|aytwit/ig, (msg) ->
    msg.send msg.random(phrases(msg.message.user.name))