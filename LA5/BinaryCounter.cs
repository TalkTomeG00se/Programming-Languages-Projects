using System.Windows.Forms;
using System.Drawing;
using System;

public class BinaryCounter : TextBox
{
	private int count;
	
	public BinaryCounter(int currentCount)
	{
		count = currentCount;
		Text = Convert.ToString(currentCount, 2);
		ReadOnly = true;
	}

	public void clicked(object sender, EventArgs e)
	{
		count++;
		Text = Convert.ToString(count, 2);
	}
	
}