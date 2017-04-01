<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddReporterEditor.aspx.cs" Inherits="Admin_AddReporterEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="panel panel-danger" id="page-wrapper">      

         <div class="panel panel-heading " >
        <h3 class="panel-title"><span class="fa fa-plus">Add Person Details</span></h3> 

    </div>
         <div class="panel-body">
              <div>
             <asp:Label ID="Label4" runat="server" Text="Available Person" CssClass="control-label"></asp:Label>
                  <div class="input-group">
                    <span class="input-group-addon">$</span>
             <asp:DropDownList ID="ddlavper" runat="server" CssClass="form-control"></asp:DropDownList>
                       </div>
            </div>
        </div>
         <div class="panel-body">
            <div>                
              <asp:Label ID="Label2" runat="server" Text="Persontype" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
             <asp:DropDownList ID="ddlpt" runat="server" CssClass="form-control"  AutoPostBack="true" OnSelectedIndexChanged="ddlpt_SelectedIndexChanged"   >          
                 <asp:ListItem>E</asp:ListItem>
                 <asp:ListItem>R</asp:ListItem>
             </asp:DropDownList>
                             </div>
            </div>
        </div>
         <div class="panel-body">
            <div>
             <asp:Label ID="Label5" runat="server" Text="Select Editor" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
             <asp:DropDownList ID="ddledi" runat="server" CssClass="form-control" AutoPostBack="true"   ></asp:DropDownList>
                                        </div>
            </div>
        </div>
         <div class="panel-body">
            <div> 
             <asp:Label ID="Label3" runat="server" Text="Person name" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                <span class="input-group-addon"><span class="fa fa-file-text"></span></span>
             <asp:TextBox ID="txtper" runat="server" CssClass="form-control"></asp:TextBox>
                      <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="*" runat="server" ErrorMessage="enter person name " ControlToValidate="txtper"></asp:RequiredFieldValidator></span>               
            </div>                 
        </div>
        </div>
         <div class="panel-body">
            <div> 
             <asp:Label ID="Label13" runat="server" Text="place" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
             <asp:DropDownList ID="ddlplace" runat="server" CssClass="form-control" ></asp:DropDownList>
                         </div>
            </div>
        </div>
         <div class="panel-body">
            <div> 
         <asp:Label ID="Label6" runat="server" Text="Mobile Number" CssClass="control-label"></asp:Label>
                  <div class="input-group">
                  <span class="input-group-addon">$</span>
         <asp:TextBox ID="txtmob" runat="server" CssClass="form-control"></asp:TextBox>
                                            <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="*" runat="server" ErrorMessage="enter mobile number " ControlToValidate="txtmob"></asp:RequiredFieldValidator></span>               

         </div>
            </div>
        </div>
         <div class="panel-body">
            <div>
         <asp:Label ID="Label7" runat="server" Text="Email Id" CssClass="control-label"></asp:Label>
                <div class="input-group">
                  <span class="input-group-addon">$</span>
         <asp:TextBox ID="txtemail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                                                <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="*" runat="server" ErrorMessage="enter emailid " ControlToValidate="txtemail"></asp:RequiredFieldValidator></span>               

                    </div>
            </div>
        </div>
         <div class="panel-body">
            <div>
         <asp:Label ID="Label8" runat="server" Text="Correspondence Address" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
         <asp:TextBox ID="txtca" runat="server" CssClass="form-control"></asp:TextBox>
                                                                                     <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="*" runat="server" ErrorMessage="enter c address " ControlToValidate="txtca"></asp:RequiredFieldValidator></span>               

                     </div>
            </div>
        </div>
          <div class="panel-body">
            <div>
         <asp:Label ID="Label9" runat="server" Text="Permanent Address" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
         <asp:TextBox ID="txtpa" runat="server" CssClass="form-control"></asp:TextBox>
                                                                                              <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Text="*" runat="server" ErrorMessage="enter p address " ControlToValidate="txtpa"></asp:RequiredFieldValidator></span>               
                      </div>
            </div>
        </div>
         <div class="panel-body">
            <div>
         <asp:Label ID="Label10" runat="server" Text="Date Of Joining" CssClass="control-label"></asp:Label>
                  <div class="input-group">
                  <span class="input-group-addon">$</span>
         <asp:TextBox ID="txtdoj" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                                                                                        <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Text="*" runat="server" ErrorMessage="enter date of joining " ControlToValidate="txtdoj"></asp:RequiredFieldValidator></span>               
                      </div>
            </div>
        </div>
          <div class="panel-body">
            <div>
         <asp:Label ID="Label11" runat="server" Text="Date Of Birth" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
         <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                                                                                 <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Text="*" runat="server" ErrorMessage="enter date of birth " ControlToValidate="txtdob"></asp:RequiredFieldValidator></span>               
                      </div>
            </div>
        </div>
         <div class="panel-body">
            <div>
         <asp:Label ID="Label12" runat="server" Text="Gender" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
             <asp:DropDownList ID="ddlgen" runat="server" CssClass="form-control">
                 <asp:ListItem>M</asp:ListItem>
                 <asp:ListItem>F</asp:ListItem>
             </asp:DropDownList>
                      </div>
            </div>
        </div>
        <div class="panel-body">
            <div>
               <asp:Label ID="Label1" runat="server" Text="Anniversary" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
             <asp:TextBox ID="txtann" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>       
                                                                                                       <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Text="*" runat="server" ErrorMessage="enter date of anniversary " ControlToValidate="txtann"></asp:RequiredFieldValidator></span>               
                      </div>
            </div>
        </div>
            
       <%-- <div class="panel-body">
            <div>
         <asp:Label ID="Label15" runat="server" Text="Active" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
         <asp:TextBox ID="TActive" runat="server" CssClass="form-control"></asp:TextBox>
                                                                                         <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Text="*" runat="server" ErrorMessage="enter date of anniversary " ControlToValidate="TActive"></asp:RequiredFieldValidator></span>               
                      </div>
            </div>
        </div>--%>
          <div class="panel-body">
            <div>
         <asp:Label ID="Label14" runat="server" Text="editor image" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
                     <asp:FileUpload ID="ediimage" runat="server" />                                                                                         <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" Text="*" runat="server" ErrorMessage="enter " ControlToValidate="ediimage"></asp:RequiredFieldValidator></span>               
                      </div>
            </div>
        </div>
          <div class="panel-body">
            <div>
         <asp:Label ID="Label16" runat="server" Text="editor description" CssClass="control-label"></asp:Label>
                 <div class="input-group">
                  <span class="input-group-addon">$</span>
                     <asp:FileUpload ID="edidescription" runat="server" />                                                                                         <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator11" Text="*" runat="server" ErrorMessage="enter date of anniversary " ControlToValidate="edidescription"></asp:RequiredFieldValidator></span>               
                      </div>
            </div>
        </div>
            <br />

             <asp:Button ID="Button3" runat="server" Text="Add" CssClass="btn btn-primary btn-block"   OnClick="Button3_Click"  />
                        <asp:validationsummary runat="server" ID="summary" HeaderText="Fill these details:" ></asp:validationsummary>

         </div>

        
       
         

    
         


       
       
</asp:Content>

