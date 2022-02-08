# Description:
#   Hubot answers yes/no questions directed at it.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   @hubot [yes/no question]?

questions = require './data/questions.json'
answers = require './data/answers.json'
regex = new RegExp questions.join('|'), 'gi'

getTextAnswer = (msg) ->
  textAnswer = answers[Math.floor(Math.random() * answers.length)];
  msg.send(textAnswer)

getGifAnswer = (msg) ->
  msg.http("https://yesno.wtf/api").get() (err, res, body) ->
    data = JSON.parse body
    msg.send(data.answer + " : " + data.image)

module.exports = (robot) ->
    robot.respond regex, (msg) ->
        if Math.random() > 0.2
          getTextAnswer(msg)
        else
          getGifAnswer(msg)
