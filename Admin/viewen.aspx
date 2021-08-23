<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewen.aspx.cs" Inherits="Admin_viewen" %>

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
                <div class="col-md-4">
                    <input type="text" class="form-control"  placeholder="Search Hear........." id="searchText">
                </div>

               <!-- Card Body -->
               <div class="card-body">
                    <div class="table-responsive">
                  <table class="table table-bordered" id="SearchTable">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">phone</th>
        <th scope="col">Message</th>
      <th scope="col">Property Name</th>
    </tr>
  </thead>
  <tbody>
   <asp:Repeater ID="enquiryList" runat="server">
       <ItemTemplate>
     <tr>
      <th >1</th>
      <td><%#Eval("clientname") %></td>
      <td><%#Eval("email") %></td>
      <td><%#Eval("phoneno") %></td>
         <td><%#Eval("message") %></td>
         <td><%#Eval("propertyname") %></td>
         <td><a class="openemailmodal" data-id="<%#Eval("id") %>" data-email="<%#Eval("email") %>" data-cname="<%#Eval("clientname") %>">sendemail</a></td>
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
    <!-- Modal -->
<div class="modal fade" id="viewInfoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
  
  <div class="form-group">
    <label >Client Name</label>
    <input type="text" class="form-control" id="mclientname" >
      <input type="hidden" class="form-control" id="mhiddenid" >
  </div>
  <div class="form-group">
    <label >Email</label>
    <input type="text" class="form-control" id="memail">
  </div>


  <div class="form-group">
    <label >Message</label>
    <textarea class="form-control customMsg" name="msg"  id="ms_editor"></textarea>
  </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary sendEmail">Send Email</button>
      </div>
    </div>
  </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            $(document).ready(function () {

                CKEDITOR.replace('ms_editor', {
                    height:100
                });

            $("#searchText").on('keyup', function () {
                let search = $("#searchText").val()//geting attribute id
                console.log(search);
               

                let searchResult = '';
                searchResult = `<table class="table table-bordered" id="SearchTable">
  <thead>
    <tr>
      <th>Sr No</th>
      <th >Name</th>
      <th>Email</th>
      <th >Phoneno</th>
       <th>Message</th>
      <th >Property Name</th>
    </tr>
  </thead>
  <tbody>`;

                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    url: "WebService.asmx/searchEnquiry",
                    data: "{'search':'" + search + "'}",
                    success: function (response) {
                        console.log("Response", response.d);
                        let resp = JSON.parse(response.d);
                        console.log("resp", resp);

                        resp.forEach(function (item) {
                            console.log(item)

                            searchResult += `<tr>
                                          <th >${item.id}</th>
                                          <td>${item.clientname}</td>
                                          <td>${item.email}</td>
                                          <td>${item.message}</td>
                                           <td>${item.phoneno}</td>
                                           <td>${item.propertyname}</td>
                                        </tr>`;

                        })
                        searchResult += `</tbody></table>`;

                        $("#SearchTable").html(searchResult);
                    },
                    dataType: "json"
                });
            })
        })

            //openModal
            $("#SearchTable").on('click', '.openemailmodal', function () {

             

                //let id = $(this).attr("data-id");
                //let email = $(this).attr("data-email");
                //let name = $(this).attr("data-cname");
                $("#mhiddenid").val($(this).attr("data-id"))
                $("#memail").val($(this).attr("data-email"))
                $("#mclientname").val($(this).attr("data-cname"))
                // console.log('clicm me', id, email, name)
                $("#viewInfoModal").modal('show')
            })


            //sendEmail
            
            $(".sendEmail").on('click', function () {
                // let id = $("#mhiddenid").val();
                let email = $("#memail").val();
                let name = $("#mclientname").val();
             
                let msg = CKEDITOR.instances.ms_editor.getData();
               
                console.log(email, name, msg)

                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    url: "WebService.asmx/sendEmail",
                    data: "{'email':'" + email + "','name':'" + name + "','msg':'" + msg + "'}",//declare in let
                    success: function (response) {
                        console.log("Response", response);
                        //setInterval(function(){ alert("Hello"); }, 3000);
                        location.reload()
                    },
                    dataType: "json"
                });

            })
</script>
