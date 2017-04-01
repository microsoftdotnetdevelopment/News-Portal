<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <link href="Style.css" rel="stylesheet" type="text/css"/>

    <div id="page-wrapper">        
    <div style="width:100%;margin-top:20px;">
          <div class="panel-heading " >
                <h3 class="panel-title"><span class="fa fa-plus"></span>Recover password</h3>
            </div>
       </div>
            
        <div class="panel-body" style="margin-top:5px";>

    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
        <UserNameTemplate>
            <div class="box" >
            <div class="content">
                <h1>
                   Forgot Password</h1>
           
                                    <asp:TextBox ID="UserName" runat="server"  CssClass="field" placeholder="Username"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                <br />
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                               <br />
                                    <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" ValidationGroup="PasswordRecovery1"  CssClass="btn"/>
           </div>     
          </div>
        </UserNameTemplate>
                </asp:PasswordRecovery>
                </div>
     
        </div>
         
</asp:Content>

