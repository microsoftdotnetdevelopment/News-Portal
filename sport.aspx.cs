using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var list = NewsBL.sportsnewsfashion(13, 5);
        rptfashion.DataSource=list;
        rptfashion.DataBind();
    }
}