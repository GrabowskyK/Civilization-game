using Godot;
using System;

public partial class test : Node
{
	
	
	
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
	
	
	private void _on_mouse_entered()
	{
		GD.Print("XD");
	}
}


