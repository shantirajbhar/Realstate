<%@ Page Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Aboutcity.aspx.cs" Inherits="Aboutcity" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater ID="singleProList" runat="server" >
        <ItemTemplate>
    <div class="card bg-dark text-white">
        <img src="<%#Eval("uploadphoto")%>" class="card-img " alt="img"/>
  <div class="card-img-overlay">
    <div class="aboutText">
        <h5 class="card-title"><%#Eval("propertyname") %></h5>
    <div class="row">
	<div class="col-md-6">
        <p class="card-text"><%#Eval("propshort") %></p>
  </div>

    </div>
  </div></div>

</div>
  <nav aria-label="breadcrumb">
  <ol class="breadcrumb breadcrumbCustom">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item"><a href="#">Property</a></li>
    <li class="breadcrumb-item active"><a href="#">Info</a></li>
	<li class="breadcrumb-item active"aria-current="page"><%#Eval("propertyname") %></li>
  </ol>
</nav>

<div class="container-fluid ">
<div class="row details">
<div class="col-md-8">
  <h5><span class="saleStyle1">For Sale</span><span class="priceStyle1"><%#Eval("minimumprice") %>- <%#Eval("maximumprice") %></span></h5>
 <h4 class="pt-2"><b> <%#Eval("propertyname") %></b></h4>
 <i class="fa fa-map-marker color"><span class="ml-2"></i> Address:<%#Eval("fulladdress") %>,<%#Eval("land_mark") %>City:<%#Eval("city") %>, Code:<%#Eval("pincode") %></span><p class="mt-4"><span><i class="fa fa-clone  color mr-2"></i><%#Eval("areasqft") %> sqft</span><span class="ml-5"><i class="fa fa-bed color mr-2"></i><%#Eval("bedrooms") %>Bedrooms</span>
  <span class="ml-4"><i class="fa fa-bath color mr-2"></i><%#Eval("bathrooms") %> Bathroom</span><span class="ml-4"><i class="fa fa-car color mr-2"></i><%#Eval("garage") %>Garage</span>
  </p>
</div>
<div class="col-md-3">
<ul class="socialIcons1">
 <li data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fab fa-facebook-f "></i></li>
 <li data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fab fa-twitter "></i></li>
 <li data-toggle="tooltip" data-placement="top" title="Instagram "><i class="fab fa-instagram "></i></li>
 <li data-toggle="tooltip" data-placement="top" title="Linkedin-in"><i class="fab fa-linkedin-in "></i></li>
 <li data-toggle="tooltip" data-placement="top" title="Behance"><i class="fab fa-behance"></i></li>
</ul>


</div>
</div>
</div>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="Content/images/img9.jpg" class="d-block w-100" alt="img"/>
    </div>
    <div class="carousel-item">
      <img src="Content/images/about3.jpg" class="d-block w-100" alt="img"/>
    </div>
    <div class="carousel-item">
      <img src="Content/images/img8.jpg" class="d-block w-100" alt="img"/>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="container pt-5">
<div class="row">
<div class="col-md-7">
  <h3>Description</h3>
  <p><%#Eval("proplong") %> </p>

 <div class="card-footer mt-5 pt-4">
  <h3>Property Details</h3>
  
  <ul class="list-group list-group-horizontal property">
  <li class="bedroom">Bedrooms :<%#Eval("bedrooms") %></li>
  <li class="newarea"> Garages :<%#Eval("garage") %></li>
 
  </ul>
  
   <ul class="list-group list-group-horizontal property">
  <li class="bedroom">Bathrooms :<%#Eval("bathrooms") %></li>
  <li class="newarea"> Area : <%#Eval("areasqft") %>sqft</li>
  
  </ul>
  
 
 </div>

    <iframe src=" <%#Eval("googleurl") %>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
     <%--https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d120562.19154963724!2d72.93141930796347!3d19.21404075236611!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b8fcfe76fd59%3A0xcf367d85f7c50283!2sThane%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1627453433099!5m2!1sen!2sin--%>
</div>

<div class="col-md-5">
<div class="card p-4 pt-3">
  <h3>Contact an Agent</h3>
  <div class="form-row">
    <div class="d-flex justify-content-between">
        <img src="Content/images/women1.jpg" class="womenimg rounded-circle"  width="100" height="100"alt="img"/>
	<div class="list2 mt-2"><li><b>81acre admin</b></li>
	<li>info@81acre.com</li></div>
	</div>
    
	<!-------------form------------>
  <div class="form-group col-md-12 pt-4">
<asp:TextBox ID="clintName" CssClass="form-control" runat="server"  placeholder="your Name"></asp:TextBox>
      <asp:TextBox ID="propid" type="hidden" runat="server" Text='<%# Eval("id") %>'></asp:TextBox>
  </div>

	<div class="form-group col-md-12 pt-4">
<asp:TextBox ID="email" CssClass="form-control" runat="server"  placeholder="Email Address"></asp:TextBox>
	</div>
	
	<div class="form-group col-md-12 pt-4">
     <asp:TextBox ID="phoneNo"  CssClass="form-control" runat="server" placeholder="Phone"></asp:TextBox>
	</div>
	
	<div class="form-group col-md-12 pt-4">
	<textarea name="message" placeholder="Type Your Massage" class="form-control"></textarea></div>
  </div>

    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="clientform" />
</div>
</div>
</div>
</div>
</ItemTemplate>
</asp:Repeater>

</asp:Content>