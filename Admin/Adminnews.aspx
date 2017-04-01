<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Adminnews.aspx.cs" Inherits="Admin_Adminnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="col-md-6 panel-danger">
            <div class="panel-heading">
                <h3 class="panel-title"><span class="fa fa-plus"></span>News Type</h3>
            </div>
            
            <div class="panel-body">
                <div>
                    <asp:Label ID="Label2" class="control-label" runat="server" Text="Available Title"></asp:Label>
                    <div class="input-group">
                        <span class="input-group-addon"></span>
                        <asp:DropDownList ID="DropDownList3" Class="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div>
                    <asp:Label ID="Label3" class="control-label" runat="server" Text="New Title"></asp:Label>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="fa fa-pencil-square"></span>
                        </span>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control"></asp:TextBox>
                        <span class="input-group-addon">
                        <asp:requiredfieldvalidator ID="RequiredFieldValidator1" runat="server" errormessage="enter title" Text="*" ControlToValidate="TextBox1" ></asp:requiredfieldvalidator></span>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                
                    <asp:Button ID="Button1" runat="server" cssClass="btn btn-block btn-primary" Text="Submit" OnClick="Button1_Click"   />
                    
               
            </div>

        </div>
        <div class="col-md-6 panel-danger">
            <div class="panel-heading">
                <h3 class="panel-title"><span class="fa fa-plus"></span>News Category</h3>
            </div>
           
            <div class="panel-body">
                <div>
                    <asp:Label ID="Label4" class="control-label" runat="server" Text="Available Category"></asp:Label>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="fa fa-clipboard"></span>
                        </span>
                        <asp:DropDownList ID="DropDownList4" Class="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div>
                    <asp:Label ID="Label5" class="control-label" runat="server" Text="New Category"></asp:Label>
                    <div class="input-group">
                  <span class="input-group-addon">$</span>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control"></asp:TextBox>
                         <span class="input-group-addon">
                                                <asp:requiredfieldvalidator ID="RequiredFieldValidator2" runat="server" errormessage="enter category" Text="*" ControlToValidate="TextBox2" ></asp:requiredfieldvalidator></span>

                    </div>
                </div>
            </div>
             <div class="panel-body">
                
                    <asp:Button ID="Button2" runat="server" cssClass="btn btn-block btn-primary" Text="Submit" OnClick="Button2_Click"   />
                    
               
            </div>
        </div>
    </div>
</asp:Content>

