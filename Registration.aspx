<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<<html>
    <head>
        <title>Registration</title>

        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <script src="Content/bootstrap.bundle.min.js"></script>
        <link href="Registration.css" rel="stylesheet" />
    </head>
    <body>
        <form runat="server">
    <div class="container-fluid mylog">
        <div class="row ">
            
                <div class="card p-4 newlog">
                    <img src="Content/images/download4.jpg" class="logo" width="120" height="120"alt="img"/>
           <h4 class="">Register Youe Account </h4>

            <div class="form-group username mt-2">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="f_name"  CssClass="form-control" runat="server"></asp:TextBox>
          </div>

           <div class="form-group username mt-2">
                 <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox ID="l_name"  CssClass="form-control" runat="server"></asp:TextBox>
           </div>

           <div class="form-group username mt-2">
                 <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
                <asp:TextBox ID="userName"  CssClass="form-control" runat="server"></asp:TextBox>
          </div>

            <div class="form-group pass mt-2">
                  <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="password" CssClass="form-control" runat="server" type="password"></asp:TextBox>
            </div>

           <asp:Button ID="Button1" CssClass="mt-2 buttonnew" runat="server" Text="Register" OnClick="registerlogin"/>
                    <asp:Label ID="errormessage" runat="server" Text=""></asp:Label>
                    </div>
   
            </div>
        </div>
     
            </form>

        </body>
    </html>