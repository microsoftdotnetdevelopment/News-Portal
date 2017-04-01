using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class explain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var list = NewsBL.lefttechno(13,8);
        Repeater1.DataSource = list;
        Repeater1.DataBind();
        var list2 = NewsBL.newsdetails();
        Repeater2.DataSource = list2;
        Repeater2.DataBind();
        
    }



}