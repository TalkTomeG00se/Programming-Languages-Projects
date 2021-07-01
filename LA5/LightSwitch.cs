using System.Windows.Forms;
using System.Drawing;
using System;

public class LightSwitch : Form
{
	private ToggleButton button;
	private BinaryCounter counter;
	
	public LightSwitch(string one, string two, int count)
	{
		Text = "LightSwitch";
		Size = new Size(300, 150);
		
		button = new ToggleButton(one, two);
		counter = new BinaryCounter(count);

		button.Location = new Point(75, 20);
		counter.Location = new Point(75, 50);
		
		button.Click += new EventHandler(counter.clicked);
		
		Controls.Add(button);
		Controls.Add(counter);
		CenterToScreen();
	}
	
	static public void Main()
	{
		Application.Run(new LightSwitch("Off", "On", 0));
	}
}