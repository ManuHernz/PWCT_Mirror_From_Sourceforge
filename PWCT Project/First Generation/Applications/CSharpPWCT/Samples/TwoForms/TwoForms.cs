using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	public static void Main ( string[] argc )
	{
		Application.Run(  new win1() );
	}
	public win1 (  )
	{
		this.Load += new System.EventHandler( this.win1_Load );
		this.Click += new System.EventHandler( this.win1_Click );
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
		win2 win2obj = new win2() ;
		win2obj.Show(  ) ;
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {255,255,255} ;
		this.BackColor = System.Drawing.SystemColors.Control;
		this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Sizable;
		this.WindowState = System.Windows.Forms.FormWindowState.Normal;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 400 ;
		this.Height = 400 ;
		this.Text = "Window Title" ;
		this.Opacity = 100 ;
	}
}
public class win2 : Form
{
	public win2 (  )
	{
		this.Load += new System.EventHandler( this.win2_Load );
		this.Click += new System.EventHandler( this.win2_Click );
	}
	private void win2_Click( object sender, System.EventArgs e )
	{
	}
	private void win2_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {255,255,255} ;
		this.BackColor = System.Drawing.SystemColors.Control;
		this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Sizable;
		this.WindowState = System.Windows.Forms.FormWindowState.Normal;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 400 ;
		this.Height = 400 ;
		this.Text = "Window Title" ;
		this.Opacity = 100 ;
	}
}


