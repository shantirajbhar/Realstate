﻿<%@ Page Language="C#"  AutoEventWireup="false" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html>
<html>
    <head>
        <title>login</title>

        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <script src="Content/bootstrap.bundle.min.js"></script>
        <link href="Content/loginpage.css" rel="stylesheet" />
    </head>
    <body>
        <form runat="server">
    <div class="container-fluid mylog">
        <div class="row ">
            
                <div class="card p-4 newlog">
                    <img src="Content/images/download4.jpg" class="logo" width="120" height="120"alt="img"/>
           <h4 class="">Log In To Youe Account </h4>
            <div class="form-group username mt-2">
                <asp:TextBox ID="user_name"  CssClass="form-control" runat="server"></asp:TextBox>
          </div>

            <div class="form-group pass mt-2">
            <asp:TextBox ID="password" CssClass="form-control" runat="server" type="password"></asp:TextBox>
            </div>
           <asp:Button ID="Button1" CssClass="mt-2 buttonnew" runat="server" Text="Sign In" OnClick="userlogin"/>
                    <asp:Label ID="errormessage" runat="server" Text=""></asp:Label>
                    </div>
   
            </div>
        </div>
     
            </form>

        </body>
    </html>