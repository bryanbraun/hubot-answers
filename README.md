# Hubot Answers

Let Hubot answer your yes/no questions.

```
@hubot Should I run a database change on production?
```
```
hubot: No way José.
```
(The `@hubot` changes depending on your bot's name)

## How it works
When a yes/no question is detected it randomly chooses a response from a pre-populated list of response. It can also respond with a yes/no gif from the yesno.wtf api.

## Installation
Run the following command to install this module as a Hubot dependency

```
$ npm install hubot-answers --save
```

Add **hubot-answers** to your `external-scripts.json` (you may need to create this file).

```
["hubot-answers"]
```

## Thanks
To Etienne Marais for borrowing some foundational code from [hubot-yesnowtf](https://github.com/etiennemarais/hubot-yesnowtf).

## License
[MIT](https://opensource.org/licenses/MIT)
