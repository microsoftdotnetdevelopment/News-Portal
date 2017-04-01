<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Messageadmin.aspx.cs" Inherits="Messageadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><span>Message Details</span></h3>
                <div class="pull-right" style="margin-top: -20px;">
                    <label>Message Date</label>
                    <asp:TextBox ID="txtNewsdate" TextMode="Date" runat="server"></asp:TextBox>&nbsp;
               
        <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click"    /><br />

                </div>

            </div>

            <div class="panel-body">
                <asp:GridView ID="GridViewMessage" CssClass="table table-hover table-bordered table-condensed" runat="server" AutoGenerateColumns="false" ShowFooter="true" >
                    <Columns>
                        <asp:BoundField HeaderText="Message title" DataField="Title" />
                        <asp:BoundField HeaderText="Message Description" DataField="Editormsg" />
                        <asp:TemplateField HeaderText="Message Status">
                            <ItemTemplate>
                                <asp:Label ID="lblmessage" runat="server"></asp:Label>
                                <asp:Button ID="btnApproved" runat="server" CssClass="btn btn-sm btn-warning" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </div>

            <div class="panel-body">
                <div>

                    <asp:Label ID="Label2" class="control-label" runat="server" Text="Message Title"></asp:Label>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <hr />
                <div>
                    <asp:Label ID="Label4" runat="server" Text=" select Editor "></asp:Label>
                    <asp:DropDownList ID="ddlEditor" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
                <hr />
                <div>
                    <asp:Label ID="Label1" class="control-label" runat="server" Text="Enter Message"></asp:Label>
                    <asp:TextBox ID="txtmsg" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </div>
                <hr />
                <div>
                    <asp:Label ID="Label3" class="control-label" runat="server" Text="Message Date"></asp:Label>
                    <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>

                <br />
                <asp:Button ID="btnsend" runat="server" CssClass="btn btn-primary form-control" OnClick="btnsend_Click"  Text="Send" />
            </div>



        </div>
    </div>
</asp:Content>
--%>
