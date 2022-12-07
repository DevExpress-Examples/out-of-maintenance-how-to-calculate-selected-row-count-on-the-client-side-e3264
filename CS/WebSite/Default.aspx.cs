using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
	protected void Page_Load(object sender, EventArgs e) {
	}
	protected void cbEditCategories_TextChanged(object sender, EventArgs e) {

	}
	protected void selectedRowCount_Load(object sender, EventArgs e) {
		ASPxLabel l = sender as ASPxLabel;

		if (grid.Selection.Count > 0) {
			l.Text = grid.Selection.Count.ToString();
			l.ClientVisible = true;
		}
		else
			l.ClientVisible = false;
		
	}
}