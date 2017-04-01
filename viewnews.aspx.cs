using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class viewnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!(IsPostBack))
        {
            NewsType();
            NewsCategory();
        }
    }
    public void NewsType()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";
        string query = "select ID,title from newstype";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            ddlNewsType.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        con.Close();

    }
    public void NewsCategory()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data source=SUNNY;Initial catalog=newsreporter;Integrated security=true";

        string query = "select ID,title from newscategory";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlNewsCategory.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        con.Close();

    }
    

    protected void btnNewsdate_Click(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Parse(txtNewsdate.Text);
        int pp = int.Parse(ddlNewsType.SelectedItem.Value);
        int qq = int.Parse(ddlNewsCategory.SelectedItem.Value);
        GridView1.DataSource = NewsBL.GetAllNewsBl(dt,pp,qq);
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        bool approved = Convert.ToBoolean(DataBinder.Eval(e.Row.DataItem, "Approved"));
        bool rejected = Convert.ToBoolean(DataBinder.Eval(e.Row.DataItem, "Active"));
        bool readed = Convert.ToBoolean(DataBinder.Eval(e.Row.DataItem, "Reed"));

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label aprvd = ((Label)e.Row.FindControl("lblApproved"));
            Label reject = ((Label)e.Row.FindControl("lblRejected"));
            Label read = ((Label)e.Row.FindControl("lblRead"));

            Button btnaprvd = ((Button)e.Row.FindControl("btnApproved"));
            Button btnreject = ((Button)e.Row.FindControl("btnRejected"));
            Button btnread = ((Button)e.Row.FindControl("btnRead"));

            aprvd.Text = approved ? "Approved" : "Not Approved";
            reject.Text = rejected ? "Rejected" : "Not Rejected";
            read.Text = readed ? "Read" : "Not Read";
            btnaprvd.Text = aprvd.Text == "Approved" ? "UnApprove" : "Approve";
            btnreject.Text = reject.Text == "Rejected" ? "UnReject" : "Reject";
            btnread.Text = read.Text == "Read" ? "UnRead" : "Read";
        }
    }
    [WebMethod]
    public static string NewsDetails(string newsid)
    {
        return newsid;
    }
}