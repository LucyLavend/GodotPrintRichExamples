@tool
extends Node

# This script lets you generate an AnimatedTexture resource
# from all the images in a selected folder.

# Put this script on a node, set the properties in the inspector and hit generate
# then you can view and save the output from the inspector

# You can use sites like ezgif.com to extract all the frames from a gif

@export_dir var images_directory
@export var frame_duration_sec = .1

@export var generate: bool = false:
	set = _set_generate_button

@export var output: AnimatedTexture

func _set_generate_button(_new_value: bool):
	generate = false
	
	var new_animated_texture = AnimatedTexture.new()
	var dir = DirAccess.open(images_directory)
	var file_counter = 0

	for file in dir.get_files():
		if file.ends_with(".png"):
			var image_texture : CompressedTexture2D = load(images_directory + "/" + file)
			if image_texture != null:
				new_animated_texture.set_frame_texture(file_counter, image_texture)
				new_animated_texture.set_frame_duration(file_counter, frame_duration_sec)
				file_counter += 1
	
	new_animated_texture.frames = file_counter
	output = new_animated_texture
