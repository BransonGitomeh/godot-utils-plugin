tool
extends Button

func _enter_tree():
    connect("pressed", self, "clicked")

func clicked():
    var output = []
    OS.execute( 'code', ['.'], true, output )
    for line in output:
        print( line )
    print("You clicked me!")