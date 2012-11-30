repl = require 'readline'
{spawn} = require 'child_process'
module.exports = (url, question, extras, cb)->
  if typeof extras is 'function'
    cb = extras
  browsercmd = switch process.platform
    when 'darwin' then 'open'
    when 'linux' then 'xdg-open'
  spawn browsercmd, [url]
  if typeof extras is 'string'
    console.log extras
  rl = repl.createInterface
    input:process.stdin
    output:process.stdout
  rl.question question, (thing)->
    cb thing
    rl.close()

