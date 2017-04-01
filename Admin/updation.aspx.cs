using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Admin_updation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            NewsType();
            NewsCategory();
            Place();
            Reporter();
            Editor();
        }

    }
    public void NewsType()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=SUNNY;Initial Catalog=newsreporter;Integrated Security=true";
        DataTable dt = new DataTable();
        string str = "select * from newstype";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        ddlNewsType.DataSource = dt;
        ddlNewsType.DataTextField = "title";
        ddlNewsType.DataValueField = "ID";
        ddlNewsType.DataBind();
        ddlNewsType.Items.Insert(0, "Select Newtype");
        con.Close();
    }
    public void NewsCategory()
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=SUNNY;Initial Catalog=newsreporter;Integrated Security=true";
        DataTable dt = new DataTable();
        string str = "select * from newscategory";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        
        ddlNewsCategory.DataSource = dt;
        ddlNewsCategory.DataTextField = "title";
        ddlNewsCategory.DataValueField = "ID";
        ddlNewsCategory.DataBind();
        ddlNewsCategory.Items.Insert(0, "Select NewCategory");
        con.Close();
    }
    public void Heading()
    {


        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=SUNNY;Initial Catalog=newsreporter;Integrated Security=true";
        ddlNewsHeading.Items.Clear();
        TextBoxEmpty();
        DataTable dt = new DataTable();
        string str = "select * from News where Newscategoryid=@Newscategoryid and  Newstypeid=@Newstypeid ";

        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@Newscategoryid",int.Parse( ddlNewsCategory.SelectedItem.Value));
        cmd.Parameters.AddWithValue("@Newstypeid", int.Parse(ddlNewsType.SelectedItem.Value));
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        ddlNewsHeading.DataSource = dt;
        ddlNewsHeading.DataTextField = "Heading";
        ddlNewsHeading.DataValueField = "Newsid";
        ddlNewsHeading.DataBind();
        ddlNewsHeading.Items.Insert(0, "Select");

        con.Close();
    }
    public void Place()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=SUNNY;Initial Catalog=newsreporter;Integrated Security=true";
        DataTable dt = new DataTable();

        SqlCommand cmd = new SqlCommand("select * from Places", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddlPlace.DataSource = dt;
            ddlPlace.DataTextField = "name";
            ddlPlace.DataValueField = "ID";
            ddlPlace.DataBind();
            ddlPlace.Items.Insert(0, "Select");
        }

        con.Close();
    }
    public void Reporter()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=SUNNY;Initial Catalog=newsreporter;Integrated Security=true";
        DataTable dt = new DataTable();
        con.Open();
        SqlCommand cmd = new SqlCommand("select *  from Person where persontype='R'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddlReporter.DataSource = dt;
            ddlReporter.DataTextField = "PersonName";
            ddlReporter.DataValueField = "Personid";
            ddlReporter.DataBind();
            ddlReporter.Items.Insert(0, "Select");
        }
        con.Close();
    }
    public void Editor()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=SUNNY;Initial Catalog=newsreporter;Integrated Security=true";
        DataTable dt = new DataTable();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Person where Persontype='E'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddlEditor.DataSource = dt;
            ddlEditor.DataTextField = "PersonName";
            ddlEditor.DataValueField = "Personid";
            ddlEditor.DataBind();
            ddlEditor.Items.Insert(0, "Select");
        }
        con.Close();
    }
    public void TextBoxEmpty()
    {

    }

   



    protected void ddlNewsCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        Heading();
       // Response.Write(ddlNewsType.SelectedItem.Value);
      //  Response.Write(ddlNewsCategory.SelectedItem.Value);
    }

    protected void ddlNewsHeading_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=SUNNY;Initial Catalog=newsreporter;Integrated Security=true";
        string str = "select Subheading,Place,Rangee,Reporterid,Editorid,descriptio,Images from News where Newsid=@Newsid";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@Newsid", ddlNewsHeading.SelectedItem.Value);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            txtSubheading.Text = dr[0].ToString();
            txtPlace.Text = dr[1].ToString();
            txtPriority.Text = dr[2].ToString();
            txtReporter.Text = dr[3].ToString();
            txtEditor.Text = dr[4].ToString();
            Image1.ImageUrl = "~/Data/Images/" + Path.GetFileName(dr[6].ToString());
            txtNewsDescription.Text = File.ReadAllText(dr[5].ToString());
        }
        con.Close();
    }

    protected void btnImage_Click(object sender, EventArgs e)
    {
        Image1.ImageUrl = NewsBL.UpdateImageBL(FileUpload1, Server.MapPath("~/Data/Image/"), int.Parse(ddlNewsHeading.SelectedItem.Value));
        if (Image1.ImageUrl == null)
            Image1.AlternateText = "Image Can't be Uploaded";
    }

    protected void btnDescription_Click(object sender, EventArgs e)
    {
        string st = NewsBL.UpdateDescriptionBL(FileUpload2, Server.MapPath("~/Data/Description/"), int.Parse(ddlNewsHeading.SelectedItem.Value));
        txtNewsDescription.Text = File.ReadAllText(st);
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}