<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewproperty.aspx.cs" Inherits="Admin_viewproperty" %>

<!--#include file="Header.aspx"-->
<!-- Sidebar -->
<!--#include file="Sidebar.aspx"-->
<!-- End of Sidebar -->
<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">
<!-- Main Content -->
<div id="content">
   <!-- Topbar -->
   <!--#include file="Topbar.aspx"-->
   <!-- End of Topbar -->
   <!-- Begin Page Content -->
   <div class="container-fluid">
      <!-- Page Heading -->
      <div class="d-sm-flex align-items-center justify-content-between mb-4">
         <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
         <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
      </div>
      <div class="row">
         <!-- Area Chart -->
         <div class="col-xl-12 col-lg-7">
            <div class="card shadow mb-4">
               <!-- Card Body -->
               <div class="card-body">
                  <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">No</th>
        <th scope="col">Property Name</th>
      <th scope="col">Phone</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
       <asp:Repeater ID="viewproperty" runat="server">
       <ItemTemplate>
      <tr>
          <th><%#Eval("id") %></th>
          <th><%#Eval("propertyname") %></th>
          <th><%#Eval("whatsapp") %></th>
          <th><a href="editproperty.aspx?id=<%#Eval("id") %>">edit</a>/<a data-id="<%#Eval("id") %>" class="Onclickdelete">delete</a></th>
      </tr> 
       </ItemTemplate>
   </asp:Repeater>
   
  </tbody>
     
</table>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
    <script
  src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script>
        $(document).ready(function () {
            $(".Onclickdelete").on('click', function () {
                let id = $(this).attr("data-id")//geting attribute id
                console.log(id);
                console.log("hello");
                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    url: "WebService.asmx/deleteproperty",
                    data: "{'id':'"+id+"'}",
                    success: function (response) {
                        console.log("Response", response);
                        location.reload()
                    },
                    dataType: "json"
                });
            })
           
        })
    </script>