using System.Windows.Forms;
using System.Drawing;
using System;

public class ToggleButton : Button
{
	
	private string label1;
	private string label2; 
	
	public ToggleButton(string one, string two)
	{
		Text = one;
		label1 = one;
		label2 = two;
		Click += new EventHandler(clicked);
	}
	
	void clicked(object sender, EventArgs e) {
		string buttonLabel = label2;
		label2 = label1;
		label1 = buttonLabel;
		Text = label1;
	}
}