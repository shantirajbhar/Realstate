<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false"  CodeFile="editproperty.aspx.cs" Inherits="Admin_editproperty" %>

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
                   <asp:Repeater ID="editprop" runat="server">
                       <ItemTemplate>
                   <form runat="server">
                  <div class="form-group">
                        <label for="exampleInputEmail1">Property Name</label>
                      <asp:textbox ID="propertyName" cssClass="form-control" Text='<%#Eval("propertyname") %>' runat="server"></asp:textbox>
                  </div>
                  <div class="form-row">
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">Minimum Price</label>
                        <asp:textbox ID="MinPrice" cssClass="form-control" Text='<%#Eval("minimumprice") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">Maximum Price</label>
                        <asp:textbox ID="maxPrice" cssClass="form-control" Text='<%#Eval("maximumprice") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-4">
                       <label for="inputEmail4">Upload Photo</label>
                         <asp:fileupload ID="photos" runat="server" cssClass="form-control"></asp:fileupload>
                     </div>
                  </div>
                  <div class="form-row">
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Facebook Url</label>
                        <asp:textbox ID="facebookUrl" cssClass="form-control" Text='<%#Eval("facebookurl") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-3">
                      <label for="inputEmail4">Instagram Url</label>
                        <asp:textbox ID="InstaGram" cssClass="form-control" Text='<%#Eval("instagram") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-3">
                     <label for="inputEmail4">Whatsapp No</label>
                        <asp:textbox ID="whatSapp" cssClass="form-control" Text='<%#Eval("whatsapp") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-3">
                     <label for="inputEmail4">YouTube View Url</label>
                        <asp:textbox ID="youTube" cssClass="form-control" Text='<%#Eval("youtube") %>' runat="server"></asp:textbox>
                     </div>
                  </div>
                  <div class="form-row">
                     <div class="form-group col-md-3">
                       <label for="inputEmail4">Area in Sqft</label>
                       <asp:textbox ID="area" cssClass="form-control"  Text='<%#Eval("areasqft") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-3">
                         <label for="inputEmail4">No.of Bedroom</label>
                       <asp:textbox ID="bedRoom" cssClass="form-control"  Text='<%#Eval("bedrooms") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">No of Bathroom</label>
                        <asp:textbox ID="bathRoom" cssClass="form-control"  Text='<%#Eval("bathrooms") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Garage</label>
                        <asp:textbox ID="garage" cssClass="form-control"  Text='<%#Eval("garage") %>' runat="server"></asp:textbox>

                     </div>
                  </div>
                  <div class="form-row">
                     <div class="form-group col-md-3">
                         <label for="inputEmail4">List Property For</label>
                         <select  name="listProperty" class="form-control">
                               <option value="For Sale"></option>
                                <option value="For Rent"></option>
                               <option value="PG"></option>
                             <option value="Flatmates"></option>
                             <option value="Other"></option>
                         </select>
                        
                     </div>
                     <div class="form-group col-md-3">
                    <label for="inputEmail4">I have a</label>
                         <select  name="iHave" class="form-control">
                               <option value="Residential"></option>
                                <option value="Commercial"></option>
                               <option value="Agriculture"></option>
                         </select>
                       
                     </div>
                     <div class="form-group col-md-3">
                       <label for="inputEmail4">Property Type</label>
                         <select  name="propertyType" class="form-control">
                               <option value="Apartment"></option>
                                <option value="House"></option>
                               <option value="Villa"></option>
                                 <option value="Bilderfloor"></option>
                               <option value="Floor"></option>
                                <option value="Appartment"></option>
                               <option value="Farmhousevolvo"></option>
                         </select>
  
                     </div>
                  </div>
                  <%-- Map --%>
                  <div class="form-group">
                     <label for="exampleInputEmail1">Google Map Url</label>
                     <textarea  class="form-control"  name="googlemap" aria-describedby="emailHelp"><%#Eval("googleurl") %></textarea>
                  </div>
                  <div class="form-group">
                     <label for="exampleInputEmail1">Short Discription</label>
                     <textarea  class="form-control"  name="shortdis" ><%#Eval("propshort") %></textarea>
                  </div>

                   <div class="form-group">
                     <label for="exampleInputEmail1">Long Discription</label>
                     <textarea  class="form-control" id="editor3" name="longdis" rows="10" aria-describedby="emailHelp"><%#Eval("proplong") %></textarea>
                  </div>


                  <div class="form-group">
                     <label for="exampleInputEmail1">Near By Places</label>
                     <textarea  class="form-control" id="editor2" name="nearby" rows="10" aria-describedby="emailHelp"><%#Eval("nearby") %></textarea>
                  </div>

                  <div class="form-row">
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">Landmark</label>
                        <asp:textbox ID="landmark" cssClass="form-control" Text='<%#Eval("land_mark") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">City</label>
                       <asp:textbox ID="city" cssClass="form-control" Text='<%#Eval("city") %>' runat="server"></asp:textbox>
                     </div>
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">Pincode</label>
                        <asp:textbox ID="pincode" cssClass="form-control" Text='<%#Eval("pincode") %>' runat="server"></asp:textbox>
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="exampleInputEmail1">Full Address</label>
                    <asp:textbox ID="fulladd" cssClass="form-control" Text='<%#Eval("fulladdress") %>' runat="server"></asp:textbox>
                  </div>
                  <asp:button ID="Button1" CssClass="btn btn-success" runat="server" Text="Update" OnClick="UpdateProp" />
              </form>
                       </ItemTemplate>
                       </asp:Repeater>

               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
<script>
   CKEDITOR.replace('editor2', {
     height: 200,
     baseFloatZIndex: 10005
   });
   
   CKEDITOR.replace('editor3', {
       height: 200,
       baseFloatZIndex: 10005
   });
</script>
<!--#include file="Footer.aspx"-->