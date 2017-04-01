<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="updation.aspx.cs" Inherits="Admin_updation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="page-wrapper">

        <div class="panel-body">
            <div>
                <asp:Label ID="Label1"  runat="server" Text="News Date "></asp:Label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="fa fa-indent"></span>
                    </span>
                    <asp:TextBox ID="txtNewsDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div>
                <asp:Label ID="Label2"  runat="server" Text="News Type "></asp:Label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="fa fa-indent"></span>
                    </span>
                    <asp:DropDownList ID="ddlNewsType" class="form-control" runat="server" AutoPostBack="false"></asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div>
                <asp:Label ID="Label3"  runat="server" Text="News Category"></asp:Label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="fa fa-indent"></span>
                    </span>
                    <asp:DropDownList ID="ddlNewsCategory" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlNewsCategory_SelectedIndexChanged"    ></asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div>
                <asp:Label ID="Label4"  runat="server" Text="News Heading"></asp:Label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="fa fa-indent"></span>
                    </span>
                    <asp:DropDownList ID="ddlNewsHeading" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlNewsHeading_SelectedIndexChanged"  ></asp:DropDownList>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div>
                <h3>News Image/Description</h3>
            </div>
            <div class="panel-back">

                <asp:Label ID="Label5" runat="server" Text="News Image"></asp:Label><br />
                <br />
                <%--<asp:TextBox ID="txtNewsImage" runat="server" CssClass="form-control" Style="height: 200px;"></asp:TextBox><br />--%>
                <asp:Image ID="Image1"  runat="server" CssClass="form-control" Style="height: 200px;" />

                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" /><br />
                <asp:Button ID="btnImage" runat="server" Text="Update Image" OnClick="btnImage_Click"    /><br />
            </div>
            <br />
            <div class="panel-back">
                <asp:Label ID="Label6" runat="server" Text="News Description"></asp:Label><br />
                <br />
                <asp:TextBox ID="txtNewsDescription" TextMode="MultiLine" runat="server" CssClass="form-control" Style="height: 200px;"></asp:TextBox>

                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" /><br />
                <asp:Button ID="btnDescription" runat="server" Text="Update Description" OnClick="btnDescription_Click"  />
            </div>
        </div>


        <div class="col-md-6">
            <div>
                <h3>News Details</h3>
            </div>
            <div>
                <asp:Label ID="Label7" runat="server" Text="Subheading "></asp:Label>
                <div>

                    <asp:TextBox ID="txtSubheading" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                </div>
            </div>
            <hr />
            <div>
                <asp:Label ID="Label8" runat="server" Text="Reporter "></asp:Label>::<asp:Label ID="txtReporter" runat="server" Enabled="false" Text="Label"></asp:Label>
                <div>

                    <asp:DropDownList ID="ddlReporter" CssClass="form-control" runat="server" Enabled="false"></asp:DropDownList>
                </div>
            </div>
            <hr />

            <div>
                <asp:Label ID="Label9" runat="server" Text="Editor "></asp:Label>::<asp:Label ID="txtEditor" runat="server" Enabled="false" Text="Label"></asp:Label>
                <div>

                    <asp:DropDownList ID="ddlEditor" CssClass="form-control" runat="server" Enabled="false"></asp:DropDownList>
                </div>
            </div>
            <hr />
            <div>
                <asp:Label ID="Label10" runat="server" Text="Place "></asp:Label>::<asp:Label ID="txtPlace" runat="server" Enabled="false" Text="Label"></asp:Label>
                <div>

                    <asp:DropDownList ID="ddlPlace" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>
            <hr />
            <div>
                <asp:Label ID="Label11" runat="server" Text="Priority "></asp:Label>::<asp:Label ID="txtPriority" runat="server" Enabled="false" Text="Label"></asp:Label>
                <div>

                    <asp:DropDownList ID="ddlPriority" CssClass="form-control" runat="server" Enabled="false">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <hr />
            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"  />I Accept For Update.<br />
            <br />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"    CssClass="form-control btn-primary" />

        </div>
        <asp:Button ID="Button1" runat="server" Text="Update News" OnClick="Button1_Click"   CssClass="btn-primary form-control" />
    </div>
</asp:Content>

