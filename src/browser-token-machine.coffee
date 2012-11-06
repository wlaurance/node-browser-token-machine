repl = require 'readline'
{spawn} = require 'child_process'
module.exports = (url, question, cb)->
  browsercmd = switch process.platform
    when 'darwin' then 'open'
    when 'linux' then 'xdg-open'
  spawn browsermcd, [url]
  rl = repl.createInterface
    input:process.stdin
    output:process.stdout
  rl.question question, (thing)->
    cb thing

