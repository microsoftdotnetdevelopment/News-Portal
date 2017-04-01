<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="LoginUser.aspx.cs" Inherits="LoginUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="Style.css" rel="stylesheet" type="text/css"/>
    <div class="container">
    <div id="row">
        
    <div style="width:100%;margin-top:20px;">
        <div class="col-md-6 panel-danger " style="border-right:1px solid black">
             <div class="panel-heading ">
             <h3 class="panel-title"><span class="fa fa-plus"></span>Login</h3>
           
         </div>
            <div class="panel-body">
                <asp:login id="Login1" runat="server" >
    <layouttemplate>
        <div class="box">
            <div class="content">
                <h1>
                    Authentication Required</h1>
                <asp:textbox class="field" placeholder="Username" id="UserName" runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="UserNameRequired" runat="server" controltovalidate="UserName" errormessage="User Name is required." tooltip="User Name is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
                <br>
                <asp:textbox class="field" placeholder="Password" id="Password" runat="server" textmode="Password"></asp:textbox>
                <asp:requiredfieldvalidator id="PasswordRequired" runat="server" controltovalidate="Password" errormessage="Password is required." tooltip="Password is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
                <br>
                <asp:button class="btn" id="LoginButton" runat="server" commandname="Login" text="Log In" validationgroup="Login1"></asp:button>
             <br>
                <asp:literal id="FailureText" runat="server" enableviewstate="False"></asp:literal></div>
        </div>
    </layouttemplate>
</asp:login>
            </div>
           </div>      
       
           
        <div class="col-md-6 panel-danger" style="border-left:2px solid black">
            <div class="panel-heading">
            <h3 class="panel-title"><span class="fa fa-plus"></span>Register </h3></div>
            <div class="panel-body">
                <div class="box">
            <div class="content">
              <h5>
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
                    <WizardSteps>
                        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                            <CustomNavigationTemplate>
                               
                                            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Create User" ValidationGroup="CreateUserWizard1"  CssClass="btn"/>
                                      
                            </CustomNavigationTemplate>
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                        </asp:CompleteWizardStep>
                    </WizardSteps>
                   
                </asp:CreateUserWizard>
                  </h5>
                </div>
                     </div>
           </div> 
        </div>
    </div>
       </div>
        </div>
</asp:Content>

