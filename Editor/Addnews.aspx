 <%@ Page Title="" Language="C#" MasterPageFile="~/Editor/Editor.master" AutoEventWireup="true" CodeFile="Addnews.aspx.cs" Inherits="Editor_Addnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="page-wrapper">
        <div class="panel-heading">
            <h3 class="panel-title"><span class="fa fa-plus"></span>Add News</h3>
        </div>
        <div class="panel-body">
            <div>
                <asp:label id="Label1" class="control-label" runat="server" text="News Type"></asp:label>
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <asp:dropdownlist id="ddlNt" runat="server" cssclass="form-control"></asp:dropdownlist>
                </div>
            </div>
        </div>
          <div class="panel-body">
            <div>
               <asp:Label ID="Label3" class="control-label" runat="server" Text="News category"></asp:Label>
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <asp:dropdownlist id="ddlNc" runat="server" cssclass="form-control"></asp:dropdownlist>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div> 
            <asp:label id="Label2" runat="server" text="Heading" cssclass="control-label"></asp:label>
            <div class="input-group">
                <span class="input-group-addon"><span class="fa fa-file-text"></span></span>
                <asp:textbox id="TxtH" runat="server" cssclass="form-control">         
                </asp:textbox>
                  <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="*" runat="server" ErrorMessage="enter heading " ControlToValidate="TxtH"></asp:RequiredFieldValidator></span>               
            </div>                 
        </div>
        </div>

         <div class="panel-body">
            <div>
                <asp:Label ID="Label11" class="control-label" runat="server" Text="Subheading"></asp:Label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="fa fa-file-text-o"></span>
                    </span>
                    <asp:TextBox ID="Txtsh" runat="server" class="form-control"></asp:TextBox>
                <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="*" runat="server" ErrorMessage="enter subheading " ControlToValidate="Txtsh"></asp:RequiredFieldValidator></span>               
            </div>  
                </div>
            </div>
       
          <div class="panel-body">           
       <div>
            <asp:label id="Label4" runat="server" text="Description" cssclass="control-label"></asp:label>
            <div class="input-group">
                <span class="input-group-addon"><span class="fa fa-upload"></span>
                    </span>
                <asp:fileupload id="Txtfu" runat="server" cssclass="form-control" />
               <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="*" runat="server" ErrorMessage="upload the file " ControlToValidate="Txtfu"></asp:RequiredFieldValidator></span>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="upload only txt files"  ControlToValidate="Txtfu"   ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.txt)$"></asp:RegularExpressionValidator>        
            </div> 
            </div>
        </div>
              
         <div class="panel-body">   
        <div>
            <asp:label id="Label5" runat="server" text="Reporterid" cssclass="control-label"></asp:label>
            <div class="input-group">
                 <span class="input-group-addon">
                    </span>
                <asp:dropdownlist id="ddlRi" runat="server" cssclass="form-control"></asp:dropdownlist>
            
            </div>
        </div>
             </div>
             <div class="panel-body">  
        <div>
            <asp:label id="Label6" runat="server" text="Place" cssclass="control-label"></asp:label>
            <div class="input-group">
                <span class="input-group-addon"><span class="fa fa-home"></span>
                    </span>
                <asp:textbox id="Txtpl" runat="server" cssclass="form-control"></asp:textbox>
            <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="*" runat="server" ErrorMessage="enter the place " ControlToValidate="Txtpl"></asp:RequiredFieldValidator></span> 
                 </div>
        </div>
                 </div>
             <div class="panel-body">  
        <div>
            <asp:label id="Label7" runat="server" text="Newsdate" cssclass="control-label"></asp:label>
            <div class="input-group">
                <span class="input-group-addon"><span class="fa fa-calendar"></span>
                    </span>
                <asp:textbox id="txtdate" runat="server" cssclass="form-control"></asp:textbox>
            <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Text="*" runat="server" ErrorMessage="enter the date " ControlToValidate="txtdate"></asp:RequiredFieldValidator></span> 
            </div>
        </div>
                 </div>
         <div class="panel-body">  
        <div>
            <asp:label id="Label12" runat="server" text="DateOfAdd" cssclass="control-label"></asp:label>
            <div class="input-group">
                <span class="input-group-addon"><span class="fa fa-calendar"></span>
                    </span>
                <asp:textbox id="txtdateadd" runat="server" cssclass="form-control"></asp:textbox>
            <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Text="*" runat="server" ErrorMessage="enter date of add " ControlToValidate="txtdateadd" ToolTip="enttt"></asp:RequiredFieldValidator></span> 
            </div>
        </div>
                 </div>
             <div class="panel-body">  
        <div>
            <asp:label id="Label8" runat="server" text="Image" cssclass="control-label"></asp:label>
            <div class="input-group">
                <span class="input-group-addon"><span class="fa fa-camera"></span>
                    </span>
                <asp:fileupload id="Txtfui" runat="server" cssclass="form-control" />
<span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Text="*" runat="server" ErrorMessage="upload the file " ControlToValidate="Txtfui"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="upload only jpg,png,jpeg files"  ControlToValidate="Txtfui"   ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.jpg|.JPG|.jpeg|.JPEG|.PNG|.png)$"></asp:RegularExpressionValidator>        

</span> 
            </div>
            </div>
        </div>
  <div class="panel-body">  
        <div>
            <asp:label id="Label9" runat="server" text="Editorid" cssclass="control-label"></asp:label>
            <div class="input-group">
                <span class="input-group-addon">$
                    </span>
                <asp:dropdownlist id="ddlEd" runat="server" cssclass="form-control"></asp:dropdownlist>
            </div>
        </div>
      </div>
        
         <%-- <div class="panel-body">           
       <div>
          
            <asp:label id="Label13" runat="server" text="Editor details" cssclass="control-label"></asp:label>
            <div class="input-group">
                <span class="input-group-addon"><span class="fa fa-upload"></span>
                    </span>
                <asp:fileupload id="fpueditor" runat="server" cssclass="form-control" />
               <span class="input-group-addon">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Text="*" runat="server" ErrorMessage="upload the file " ControlToValidate="Txtfu"></asp:RequiredFieldValidator></span>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="upload only txt files"  ControlToValidate="Txtfu"   ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.txt)$"></asp:RegularExpressionValidator>        
            </div> 
           
            </div>
        </div>--%>
         <div class="panel-body">  
        <div>
            <asp:label id="Label10" runat="server" text="Priority" cssclass="control-label"></asp:label>
            <div class="input-group">
                   <span class="input-group-addon">$
                    </span>
                <asp:dropdownlist id="ddlP"  runat="server" cssclass="form-control">
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
                   </asp:dropdownlist>
            </div>
        </div>
             </div>
           <div class="panel-body">
                
                    <asp:Button ID="Button2" runat="server" cssClass="btn btn-block btn-primary" Text="Submit" OnClick="Button1_Click"   />
               <asp:validationsummary runat="server" ID="summary" HeaderText="Fill these details:" ></asp:validationsummary>
               
            </div>
        <div class="panel-footer">

        </div>
        
    </div>
   
  
</asp:Content>

