<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="viewperson.aspx.cs" Inherits="viewperson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="page-wrapper">
        <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><span>Person Details</span></h3> 
            <div class="pull-right" style="margin-top:-20px;">
              
                <label>person Type</label>
                <asp:DropDownList ID="ddlpType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlpType_SelectedIndexChanged"   >
                   
                     <asp:ListItem>E</asp:ListItem>
                    <asp:ListItem>R</asp:ListItem>
                   
                </asp:DropDownList>
                &nbsp;
                <label>person names</label>
                <asp:DropDownList ID="ddlpnames" runat="server"></asp:DropDownList> &nbsp;
        <asp:Button ID="btndetails" runat="server" Text="Search"  OnClick="btndetails_Click"     /><br />

            </div>
            
        </div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
          </div>
</asp:Content>

