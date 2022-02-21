extends Node2D

func create_WoodBoxEffect():
	var WoodBox_Effect = load("res://Effects/WoodBox_effect.tscn") #load the scene
	var woodbox_effect = WoodBox_Effect.instance() #instance the scene
	var world = get_tree().current_scene #add that scene as a child to world
	world.add_child(woodbox_effect) 
	woodbox_effect.global_position = global_position #set its position

func _on_HurtBox_area_entered(area):
	create_WoodBoxEffect()
	queue_free()
