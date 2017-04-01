using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var list = NewsBL.GetNews(14);
        rptWorldNews.DataSource = list;
        rptWorldNews.DataBind();
        var list1 = NewsBL.GetNews(13);
        rptIndiaNews.DataSource = list1;
        rptIndiaNews.DataBind();
        var list2 = NewsBL.GetTNews();
        rptTech.DataSource = list2;
        rptTech.DataBind();
        var list3 = NewsBL.GetBNews(7, 13, 14);
        rptbusiindwor.DataSource = list3;
         rptbusiindwor.DataBind();
        var list4 = NewsBL.GetENews(6,13,14);
        rptenterindwor.DataSource = list4;
        rptenterindwor.DataBind();
        var list5 = NewsBL.Topnews();
        rpttrend.DataSource = list5;
        rpttrend.DataBind();
        var list6 = NewsBL.Ranimage();
        rptimage.DataSource = list6;
        rptimage.DataBind();
        var list7 = NewsBL.imgslide();
        rptslider.DataSource = list7;
        rptslider.DataBind();



    }
}