# Description:
#   Wraps the yesnowtf api and returns the response as a slack message.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   ask a question - gives very scientific answer
#
# Notes
#   See questions array for list of triggers.
#
# Author:
#   Etienne Marais <etienne.marais@olx.com>

triggers = require './data/triggers.json'
regex = new RegExp triggers.join('|'), 'gi'

module.exports = (robot) ->
    robot.respond regex, (msg) ->
        msg.http("http://yesno.wtf/api").get() (err, res, body) ->
            data = JSON.parse body
            msg.send("*" + data.answer + "* : " + data.image)