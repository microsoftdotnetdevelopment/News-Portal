using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class allinone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var list = NewsBL.getpoliticnews(13,10);
        rptpolitics.DataSource = list;
        rptpolitics.DataBind();
        var list1 = NewsBL.getpoliticnews(13,10);
        rptrightpolitics.DataSource = list1;
        rptrightpolitics.DataBind();
        var list3 = NewsBL.gethealthnews(13,12);
        rpthealth.DataSource = list3;
        rpthealth.DataBind();
        var list4 = NewsBL.getautonews(13,13);
        rptautomobilenews.DataSource = list4;
        rptautomobilenews.DataBind();
        var list5 = NewsBL.gethealthautoindia(13, 12, 13);
        rptautohealth.DataSource = list5;
        rptautohealth.DataBind();
        var list6 = NewsBL.business(13, 7);
        rptbusinindia.DataSource = list6;
        rptbusinindia.DataBind();
        var list2 = NewsBL.businessindia();
        rptrightbusinesindia.DataSource = list2;
        rptrightbusinesindia.DataBind();
        var list7 = NewsBL.sports(13, 5);
        rptsportsleft.DataSource = list7;
        rptsportsleft.DataBind();
        var list8 = NewsBL.sportsright(13, 5);
        rptrightsports.DataSource = list8;
        rptrightsports.DataBind();
        var list9 = NewsBL.enterleft(13, 6);
        rptentertainment.DataSource = list9;
        rptentertainment.DataBind();
        var list10 = NewsBL.enterright(13, 6);
        rptrightenterta.DataSource = list10;
        rptrightenterta.DataBind();
        var list11 = NewsBL.lefttechno(13, 8);
        rptlefttechno.DataSource = list11;
        rptlefttechno.DataBind();
        var list12 = NewsBL.righttechno(13, 8);
        rptrighttechno.DataSource = list12;
        rptrighttechno.DataBind();
        var list13 = NewsBL.culture(13, 9);
        rptculture.DataSource = list13;
        rptculture.DataBind();
        var list14 = NewsBL.mostpopular(13, 14);
        rptpopular.DataSource = list14;
        rptpopular.DataBind();
        var list15 = NewsBL.flicker();
        rptflicker.DataSource = list15;
        rptflicker.DataBind();




    }
}