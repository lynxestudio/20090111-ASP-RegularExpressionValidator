using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blog.listings
{
public class RegularExpression : Page {
	protected TextBox txtDate, txtCp, 
				txtUrl, txtEmail;
	protected RequiredFieldValidator reqvtxtCp, 
				reqvtxtUrl, reqvtxtDate, reqvtxtEmail;
	protected RegularExpressionValidator rexpvtxtDate, 
				rexpvtxtCp, rexpvtxtUrl, rexpvtxtEmail;
	protected Button btnSubmit;
	protected Label lbMsg;
	
	protected override void OnInit(EventArgs e){
	this.Load += new EventHandler(g_Load);
	this.btnSubmit.Click += new EventHandler(btnSubmit_Click);
	}
	
	protected void g_Load(Object o, EventArgs e){
	}
	
	protected void btnSubmit_Click(Object sender, EventArgs e){
	if (Page.IsValid){
		lbMsg.Text = "Los valores son validos";
	}
	}
}
}