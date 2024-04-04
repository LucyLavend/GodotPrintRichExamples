extends Node

signal button_pressed
@onready var example_label = $ExampleLabel

func _ready():
	#you can turn on linewrap in the editor's code setting to make long strings easier to read
	#--------------------------------------
	
	_set_example_text("")
	
	#bold
	await button_pressed
	_set_example_text("[b]text[/b]")
	print_rich("[b]This text is BOLD[/b]")
	
	#italic (and strikethrough)
	await button_pressed
	_set_example_text("[i]text[/i]")
	print("")
	print_rich("[i]This text is [s]italian[/s] italic[/i]")
	
	#underlined
	await button_pressed
	_set_example_text("[u]text[/u]")
	print("")
	print_rich("[u]And this text is underlined :)[/u]")
	
	#font size
	await button_pressed
	_set_example_text("[font_size=30]text[/font_size]")
	print("")
	print_rich("You can [font_size=30]change [/font_size][font_size=8]its [/font_size][font_size=100]size![/font_size]")
	
	#color 
	#in color name or hex
	#you don't necessarily have to close bb code tags, the last tag is to make the next print messages white again)
	await button_pressed
	_set_example_text("[color=BLUE]...  [bgcolor=WHITE]...")
	print("")
	print_rich("[color=CRIMSON]Change [color=FOREST_GREEN]its [color=CORNFLOWER_BLUE]color and [color=black][bgcolor=WHITE]background color[/bgcolor][color=#ffffff]")
	
	#-----------------------------------

	#font
	await button_pressed
	_set_example_text("[font=res://font.ttf]text[/font]")
	print("")
	print_rich("[font_size=100][font=res://Fonts/LittleKidsHandwriting/LittleKidsHandwriting-Regular.otf]i liek godot it is free[/font][/font_size]")
	
	#big capital letter
	await button_pressed
	_set_example_text("[dropcap {properties}]T[/dropcap]")
	print("")
	print_rich("[font_size=40][font=res://Fonts/MorrisRomanBlack.ttf][dropcap font_size=130 color=white margins=0,0,8,0 font=res://Fonts/GothicLeaf/GothicLeaf.ttf ]T[/dropcap]hou hast presented the incorrect arguments for this function, and it doth behoove thee to rework this code with due diligence, employing the noble crafts of thy trade and harnessing the faculties of the human thinking organ for the betterment thereof. It is indeed a prudent choice that thou hast made in selecting Godot for this quest; however, I beseech thee to delve deeper into its mysteries and acquire the knowledge requisite for its proficient usage. [/font][/font_size]")
	
	#wave
	await button_pressed
	_set_example_text("[wave]text[/wave]")
	print("")
	print_rich("[font_size=30][wave amp=50.0 freq=-5.0 connected=1][color=CORNFLOWER_BLUE]Yoooooo dudeeee it can waaaaveeeee[/color][/wave][/font_size]")
	
	#shake
	await button_pressed
	_set_example_text("[shake]text[/shake]")
	print("")
	print_rich("[color=CRIMSON][font_size=30][font=res://Fonts/ThinkTwice/MB-ThinkTwice_Regular.ttf][shake rate=20.0 level=5 connected=1]ERROR    ERROR     ERROR[/shake][/font][/font_size][/color]")

	#pulse
	await button_pressed
	_set_example_text("[pulse]text[/pulse]")
	print("")
	print_rich("[color=RED][pulse freq=2.5]=========== WARNING ============[/pulse][/color]")
	
	#rainbow
	await button_pressed
	_set_example_text("[rainbow]text[/rainbow]")
	print("")
	print_rich("[rainbow freq=1.0 sat=0.8 val=0.8]WOW good programming work!! Your janky code actually works somehow lol[/rainbow]")

	#image
	await button_pressed
	_set_example_text("[img]res://image.png[/img]")
	print("")
	print_rich("[img=160x160]res://Images/Haiiiii.png[/img]")

	#animated image
	await button_pressed
	_set_example_text("[img]res://animated_image.tres[/img] (AnimatedTexture)")
	print("")
	print_rich("[img=160x160]res://Images/funny_cat.tres[/img]")

	#fade
	await button_pressed
	_set_example_text("[rainbow]text[/rainbow]")
	print("")
	print_rich("[fade start=20 length=24][color=ffde66]⬤ scene/resources/packed_scene.cpp:717 - Condition !common_parent is true[/color][/fade]")
	print_rich("Unlock more detailed error messages and more with [b]Godot [color=DODGER_BLUE]Premium[/color][/b]! ")
	print_rich("Start your 14 day free trial now at [u][color=cornflowerblue][url]godotengine.org[/url][/color][/u]!")


	#-----------------------------------
	
	#table
	await button_pressed
	_set_example_text("[table=1][cell]text[cell][/table]")
	print("")
	var table = "[table=6]" #6 is the amount of columns
	for i in 24:
		table += "[cell border=white]test item %s[/cell]" % (i + 1)
		#look up "Godot string formatting" if you want to learn more about the %s syntax
	print_rich(table + "[/table]")
	
	#table with images
	await button_pressed
	_set_example_text("[table=width][cell]text[cell][/table]")
	print("")
	var silly_table = "[table=6]"
	for i in 24:
		if randi() % 2: #randomly generate true (1) or false (0)
			silly_table += "[cell border=white][img=60x60]res://Images/funny_cat.tres[/img][/cell]"
		else:
			silly_table += "[cell border=white][img=60x60]res://Images/Haiiiii.png[/img][/cell]"
	print_rich(silly_table + "[/table]")
	
	
	var long_string = "Nerf Guns
Rubber Ducks
Laptop & charger
D20 Stress Ball
Post-it Notes
Whiteboard markers
Team shirts
Midi Keyboard
Caffeine
Drawing tablet
Plushies
RGB Keyboard
Funny Mousepad
Trombone
Pizza Coupon"
	
	#ordered list
	await button_pressed
	_set_example_text("[ol]multiline text")
	print("")
	print_rich("[ol]" + long_string)
	
	#unordered list
	await button_pressed
	_set_example_text("[ul]multiline text[/ul]")
	print("")
	print_rich("[ul]" + long_string)
	
	#link
	await button_pressed
	_set_example_text("[url]link[/url]")
	print("")
	print_rich("[color=CORNFLOWER_BLUE][url]https://docs.godotengine.org/en/stable/tutorials/ui/bbcode_in_richtextlabel.html[/url][/color]")
	
	#text link
	await button_pressed
	_set_example_text("[url=link]text[/url]")
	print("")
	print_rich("[color=CORNFLOWER_BLUE][url=https://docs.godotengine.org/en/stable/tutorials/ui/bbcode_in_richtextlabel.html]click me[/url][/color]")
	
	#tooltip
	await button_pressed
	_set_example_text("[hint=tooltip text]text[/hint]")
	print("")
	print_rich("[hint=Extra information in tooltip]Printed text with tooltip[/hint]")
	print("")
	
	#detailed tooltips
	await button_pressed
	var example_variable = 12.7
	print_rich("[hint=Strength: " + str(example_variable) + "    Speed: 67.2    Color: Red    Seed: 72698932]Bezerker[/hint] enemy spawned at [hint=(-93.3735, 312.1289)](-93, 312)[/hint]")
	#the BB code tags seem to break when used with linebreaks,
	#so multiline tooltips sadly do not seem to work in the console 
	print("")


func _set_example_text(text : String):
	example_label.text = "print_rich(\"" + text + "\")"
	#  \" lets you have quotes in strings (see "escape character strings")

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		emit_signal("button_pressed")
