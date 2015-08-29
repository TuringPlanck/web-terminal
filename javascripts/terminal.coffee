# © 2015 Logan Martel
# Extensible class for terminal emulator in web application
class Terminal
	constructor:\
	(	@target=".shell .text" 
	,	@PS1="$ " 
	,	@welcome="./hello_world"
	,	@guide="Run 'help' for basic commands"
	,	@commands= ["about", "projects", "skills", "contact"]
	) ->
		instance = @
		# process command on enter
		$(document.body).on 'keyup', 'input#command', (e) ->
			if e.keyCode == 13
				$(@).blur()
				$(@).prop 'readonly', true
				command = $(@).val()
				instance.print("<br>")
				# try calling command
				try
					instance["#{command}"]()
				catch e
					instance.print("command unavailable")
				finally
					instance.newline()

	command_line = '<input type="text" id="command" value="">'

	init: ->
		@greet(@welcome, 0, 100)

	print: (element) ->
		$target = $(@target)
		$target.append(element)
	
	newline: ->
		@print("<br> #{@PS1}")
		@print(command_line)
		$("input#command").last().focus()

	greet: (message, index, interval) ->
		if index < message.length
			@print(message[index++])
			setTimeout (=> @greet(message, index, interval)), interval
		else
			@print("<br> #{@guide}")
			@newline()
	
	help: ->
		@print ("#{command}<br>") for command in @commands

# terminal = new Terminal()
# terminal.init()