tool
extends EditorPlugin

func _enter_tree():
    # Initialization of the plugin goes here
    print("plugin innitializing")
    add_custom_type(
        "MyButton", 
        "Button", 
        preload("my_button.gd"),
        preload("drawing.png")
    )
    pass

func _exit_tree():
    # Clean-up of the plugin goes here
    print("plugin quiting")
    remove_custom_type("MyButton")
    pass