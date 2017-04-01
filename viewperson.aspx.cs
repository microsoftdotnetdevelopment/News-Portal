using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewperson : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btndetails_Click(object sender, EventArgs e)
    {
        Guid name = Guid.Parse(ddlpnames.SelectedItem.Value);
        GridView1.DataSource = NewsBL.GetAllpersondetils(name);
        GridView1.DataBind();
    }



    protected void ddlpType_SelectedIndexChanged(object sender, EventArgs e)
    {
        //    int per = Convert.ToInt32(ddlpType.SelectedValue);
        //    SqlConnection con = new SqlConnection();
        //    con.ConnectionString="Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select * from RegionTable where StateID=" + StateID, con);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    con.Close();
        //    ddlRegion.DataSource = ds;
        //    ddlRegion.DataTextField = "RegionName";
        //    ddlRegion.DataValueField = "RegionID";
        //    ddlRegion.DataBind();
        //    ddlRegion.Items.Insert(0, new ListItem("--Select--", "0"));
        if (ddlpType.SelectedItem.Value == "E")
        {
            ddlpnames.Items.Clear();
            editer();
        }
        else
        {
            ddlpnames.Items.Clear();
            reporter();
        }
    }
    public void editer()
    {
        ddlpnames.DataSource = NewsBL.GetEditer();
        ddlpnames.DataBind();
        ddlpnames.DataTextField = "name";
        ddlpnames.DataValueField = "id";
        ddlpnames.DataBind();
    }
    public void reporter()
    {
        ddlpnames.DataSource = NewsBL.GetReporter();
        ddlpnames.DataBind();
        ddlpnames.DataTextField = "name";
        ddlpnames.DataValueField = "id";
        ddlpnames.DataBind();
    }
}

