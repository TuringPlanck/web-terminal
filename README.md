# web-terminal
<br>
Ready to use on child or instance inheriting from Terminal prototype.<br>
Add commands to prototype as desired. For default use, run **terminal.init()** on instance.<br>

A basic example can be found at: <a href="https://jsfiddle.net/martelogan/4dm43g8j/2/" target="_blank">JSFiddle</a>


### Usage: terminal = new Terminal(target, PS1, welcome, guide, commands)

#### target
**Type:** String<br>
target element for terminal (**default: ".shell .text"**)

#### PS1
**Type:** String<br>
prompt string (**default: "$ "**)

#### welcome
**Type:** String<br>
inital greeting (**default: "./hello_world"**)

#### guide
**Type:** String<br>
user instructions for terminal (**default: "Run 'help' for basic commands"**)

#### commands
**Type:** Array<br>
array of strings representing commands (**default: ["no commands available"]**)
