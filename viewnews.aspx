<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="viewnews.aspx.cs" Inherits="viewnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="page-wrapper">
        <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><span>News Details</span></h3> 
            <div class="pull-right" style="margin-top:-20px;">
                <label>News Date</label>
                <asp:TextBox ID="txtNewsdate" TextMode="Date" runat="server"></asp:TextBox>&nbsp;
                <label>News Type</label>
                <asp:DropDownList ID="ddlNewsType" runat="server"></asp:DropDownList>
                &nbsp;
                <label>News Category</label>
                <asp:DropDownList ID="ddlNewsCategory" runat="server"></asp:DropDownList> &nbsp;
        <asp:Button ID="btnNewsdate" runat="server" Text="Search" OnClick="btnNewsdate_Click" /><br />

            </div>
            
        </div>
        <div class="panel-body">
            <asp:GridView ID="GridView1" AllowPaging="true" PageSize="8" CssClass="table table-hover table-bordered table-condensed" runat="server" AutoGenerateColumns="false" ShowFooter="true" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
              
                <asp:BoundField HeaderText="News Heading" DataField="Heading" />
                  <asp:TemplateField HeaderText="News Image">
                    <ItemTemplate>
                <asp:Image ID="imgnews" runat="server" ImageUrl='<%# "~/Data/Images/"+ System.IO.Path.GetFileName(Eval("Images").ToString())%>' Height="100px" Width="140px"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="News Place" DataField="Place" />
                <asp:BoundField HeaderText="News Priority" ItemStyle-Font-Bold="true" ItemStyle-ForeColor="Red"  DataField="Rangee" />
                <asp:TemplateField HeaderText="Approved Status">
                    <ItemTemplate>
                        <asp:Label ID="lblApproved" runat="server"></asp:Label> 
                        <asp:Button ID="btnApproved" runat="server" CssClass="btn btn-sm btn-warning" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Rejected Status">
                    <ItemTemplate>
                     <asp:Label ID="lblRejected" runat="server"></asp:Label> 
                     <asp:Button ID="btnRejected" runat="server" CssClass="btn btn-sm btn-warning" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Read Status">
                    <ItemTemplate>
                        <asp:Label ID="lblRead" runat="server"></asp:Label>  
<%--                        <input type="button" value="btnReed" class="btn btn-sm btn-warning" runat="server"></input>--%>
                        <asp:Button ID="btnRead" runat="server" CssClass="btn btn-sm btn-warning readmore" data-id='<%# Eval("Newsid") %> ' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>

        </div>
        <div class="panel-footer"></div>
           

        </div>
        
        
    </div>
 <div class="modal fade" id="NewsDetail" tabindex="-1" >
        <div class="modal-dialog" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                    <h2 class="modal-title">News Details</h2>
                </div>

                <div class="modal-body">
                    <div class="row">
                       <div class="col-md-12">

                            <div class="col-md-6">
                                <asp:Image ID="Image2" Height="100%" Width="100%" runat="server" />
                            </div>

                            <div class="col-md-6">
                                <div class="panel panel-info">

                                    <div class="panel-heading">
                                        <h3 class="panel-title">News Details</h3>

                                    </div>
                                    <div class="panel-body">
                                        <table class="table table-hover table-condensed">
                                            <tr>
                                                <td><span class="fa fa-male"></span></td>
                                                <td>Reporter</td>
                                                <td>
                                                    <asp:Label ID="lblReporter" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><span class="fa fa-male"></span></td>
                                                <td>Editor</td>
                                                <td>
                                                    <asp:Label ID="lblEdior" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><span class="fa fa-arrow-up"></span></td>
                                                <td>Visit</td>
                                                <td>
                                                    <asp:Label ID="lblVisit" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td><span class="fa fa-calendar"></span></td>
                                                <td>Date Of Add</td>
                                                <td>
                                                    <asp:Label ID="lblDOA" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>

                                </div>
                            </div>
                       </div>
                       <div class="col-md-12"></div>
                        
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>


