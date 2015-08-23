# Description:
#   Load a random Dickbutt from an array of images.
#   Based on pugme.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot dickbutt me - Receive a dickbutt
#   hubot dickbutt bomb N - get N dickbutts
#
# Author:
#   James

dickbutts = [
  "http://i.imgur.com/76l52tr.gif", # Dickbutt 1
  "http://i.imgur.com/l0uGIKj.jpg", # Dickbutt 2
  "http://i.imgur.com/Q6r9GOE.jpg", # Dickbutt 3
  "http://i.imgur.com/BCzyRR1.jpg", # Dickbutt 4
  "http://i.imgur.com/EEiNzAX.png", # Dickbutt 5
  "http://i.imgur.com/kcpfvcS.gif",   # Dickbutt 6
  "http://i.imgur.com/lUKTDgV.gif",    # Dickbutt 7
  "http://i.imgur.com/pj8oXmU.jpg",   # Duckbutt 8
  "http://i.imgur.com/WDJMw1F.png",  # Dickbutt 9
  "http://i.imgur.com/PCwjnq2.jpg" # Dickbutt 10
]

module.exports = (robot) ->
  robot.respond /dickbutt me/i, (msg) ->
    msg.send dickbutts[Math.floor(Math.random()*dickbutts.length)]

  robot.respond /dickbutt bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    for i in [1..count] by 1
      msg.send dickbutts[Math.floor(Math.random()*dickbutts.length)]

  robot.respond /how many dickbutts are there/i, (msg) ->
    msg.send "There are #{dickbutts.length} dickbutts."

