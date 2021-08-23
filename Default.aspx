<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="carouselExampleControlsNoTouching" class="carousel slide" data-touch="false" data-interval="false">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="Content/images/back5.jpg" class="d-block w-100 animated bounce infinite"alt="img"/>
	  <div class="carousel-caption d-none d-md-block caption_title">
        <h5>Find Your Sweet Home</h5>
        <h2>Best Deling Real Estate Company</h2>
      </div>
    </div>
    <div class="carousel-item">
       <img src="Content/images/back4.jpg" class="d-block w-100 animated bounce infinite"alt="img"/>
	  <div class="carousel-caption d-none d-md-block caption_title">
        <h5>Find Your Sweet Home</h5>
        <h2>Best Deling Real Estate Company</h2>
      </div>
    </div>
    <div class="carousel-item">
       <img src="Content/images/back.jpg" class="d-block w-100 animated bounce infinite"alt="img"/>
	  <div class="carousel-caption d-none d-md-block caption_title">
        <h5>Find Your Sweet Home</h5>
        <h1>Best Deling Real Estate Company</h1>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControlsNoTouching" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControlsNoTouching" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

   <div class="container sec">
<div class="row second">
<div class="col-md-7">
<h4 class="color">About Company ______</h4>
<h1 class="text1">We're is this business since <span class="color">2016</span> and we provide the best real estate services</h1>
</div>
<div class="col-md-5">
<p>The 81 Acre Pvt Ltd was established in the year 2016 with the aim and objective of providing homes for every individual who is ready to purchase their dream home but requires professional assistance from experts in the field who will genuinely guide them and do proper analysis before investment from the client.</p>
</div>

</div>
<div class="row pt-5 mt-5">
<div class="col-md-3">
<div class="card bgcol p-4"><h3 class="text-center text-white pt-4">Modern Villa</h3>
<i class="fas fa-house-damage icon text-dark"></i>
</div></div>

<div class="col-md-3">
<div class="card bgcol p-4"><h3 class="text-center text-white pt-4">Family House</h3>
<i class="fa fa-home icon text-dark"></i></div></div>

<div class="col-md-3">
<div class="card bgcol p-4"><h3 class="text-center text-white pt-4">Town House</h3>
<i class="fas fa-house-user icon text-dark"></i></div></div>

<div class="col-md-3">
<div class="card bgcol p-4"><h3 class="text-center text-white pt-4">Appartment</h3>
<i class="fas fa-laptop-house icon text-dark"></i></div></div>
</div>
</div>

  <!-------------------------------Recent property 3 cards----------------------------->
<div class="container arrive">
<div class="text-center">
        <h5 class=" color">------New Arrival Collections-------</h5>
        <h1><b>Recent Properties</b></h1>
</div>
<div class="row mt-5">
<div class="col-md-6 ">
<div class="hoverproperty">
<div class="pl-5 pt-4 text-white img1" style="background-image:url('Content/images/img6.jpg');background-position: center;background-size:cover;">
<h6><span class="saleStyle">Sale</span> <span class="saleStyle">Featured</span></h6>
<h5 class="price text-dark">₹ 80 Lakh-₹ 1.69 Cr</h5>
<a href="Aboutcity.aspx" class="text-decoration-none text-white"><h4>Elan Epic, Sector 70, Gurugram, Haryana 122101, India</h4></a>
<i class="fas fa-map-marker-alt color pb-3"><span class="text-white ml-2">Golf Course Extension Road</span></i> 
</div></div></div>

<div class="col-md-6">
<div class="hoverproperty">
<div class="pl-5 pt-4 text-white img1" style="background-image:url('Content/images/img2.jpg');background-position: center;background-size:cover;">
<h6><span class="saleStyle">Sale</span> <span class="saleStyle">Featured</span></h6>
<h5 class="price text-dark">₹ 1.15 Cr-₹ 1.69 Cr</h5>
<a href="Aboutcity.aspx" class="text-decoration-none text-white"><h4>Elan Town Centre, Sector 67, Gurugram, Haryana, India</h4></a>
<i class="fas fa-map-marker-alt color pb-3"><span class="text-white ml-2">Sohna Road</span></i> 
</div>
</div>
</div>

</div>

<div class="row mt-3">
<div class="col-md-6">
<div class="hoverproperty">
<div class="pl-5 pt-4 text-white img1" style="background-image:url('Content/images/img.jpg');background-position: center;background-size:cover;">
<h6><span class="saleStyle">Sale</span> <span class="saleStyle">Featured</span></h6>
<h5 class="price text-dark">₹ 80 Lakh-₹ 1.69 Cr</h5>
<a href="Aboutcity.aspx" class="text-decoration-none text-white"><h4>AIPL Business Club, Sector 62, Gurugram, Haryana 122102, India</h4></a>
<i class="fas fa-map-marker-alt color pb-3"><span class="text-white ml-2">Dwarka Expressway</span></i> 
</div></div></div>

<div class="col-md-6">
<div class="hoverproperty">
<div class="pl-5 pt-4 text-white img1" style="background-image:url('Content/images/img5.jpg');background-position: center;background-size:cover;">
<h6><span class="saleStyle">Sale</span> <span class="saleStyle">Featured</span></h6>
<h5 class="price text-dark">₹ 1.15 Cr-₹ 1.69 Cr</h5>
<a href="aboutcity.aspx" class="text-decoration-none text-white"><h4>Elan Miracle , Sector 84, Gurugram, Haryana 122004, India</h4></a>
 <i class="fas fa-map-marker-alt color pb-3"><span class="text-white ml-2">Southern Peripheral Road</span></i> 
</div>
</div>
</div>

</div>
</div>

    <div class="container-fluid mt-5 contact">
<div class="container page2">
<div class="row">
<div class="col-md-8">
<h1><b>Great Experience For Real Estate Property Selling</b></h1></div>
<div class="col-md-4">
 
</div>

</div>
</div >
</div>

    <!--------------------------Featured Properties 3card------------------------------------------------------------------>
 <div class="container arrive">  
 <div class="text-center">
    <h5 class="color">------Find Out the Best One-------</h5>
     <h1><b>Featured Properties</b></h1>
 </div>
 
 
    <div class="owl-carousel owl-theme">

        <asp:Repeater ID="RepeatInformation" runat="server">  
            <ItemTemplate>  
 <div class="card">
<div class="featureText">
<img src="<%#Eval("uploadphoto")%>">
<h5 class="text-white">Fetured</h5>
</div>
 <div class="card-body">
 <h4><b><%#Eval("propertyname") %> </b></h4>
 <i class="fa fa-map-marker color"><span class="text-dark ml-2"><%#Eval("city") %></span></i> 
 <p class="mt-2"><span><i class="fa fa-clone  color"></i><%#Eval("areasqft") %> sqft</span><span class="ml-5"><i class="fa fa-bed color"></i><%#Eval("bedrooms") %> Bedrooms</span></p>
 <p><span><i class="fa fa-bath color"></i><%#Eval("bathrooms") %> Bathroom</span><span class="ml-4"><i class="fa fa-car color"></i><%#Eval("garage") %> Garage</span></p>
 </div>
  <div class="card-footer">
 <a href="Aboutcity.aspx?slugname=<%#Eval("slugname") %>" class="btn btn btn-lg btn-block view">View</a>
 </div>
 </div>
            </ItemTemplate>  
        </asp:Repeater>  
        
	
	</div>
 </div>

    <!----------------------------------contact now---------------------------------->
 <div class="container-fluid contactnow">
 <div class=" row ">
 <div class="col-md-4 conright mt-5">
 <div class="card p-2 mt-2 ">
 <div class="card-body">
 <h4><b>Dedicated Customer Care Number</b></h4>
 <p class="pt-4">The 81 Acre Pvt Ltd provides a 24/7 running helpline number which is backed with professionals. We bring in a customer care team who will guide you through every step patiently to get the 
 appropriate solutions you're looking for.</p>
 <button type="button" class="btn btn btn-lg view pl-4 pr-4">Contact</button></div>
 </div>
 </div>
 </div>
  </div>
<!---------------------our services----------------------->
    <div class="container arrive">  
  <div class="text-center">
    <h5 class="color">------What We Do?-------</h5>
     <h1><b>Our Services</b></h1>
  </div> 
  <div class="row mt-5">
   <div class="col-md-4">
   <i class="fas fa-hand-holding-usd icontag"></i>
    <h3><b>Real Estate Consulting</b></h3>
	<p>At “The Capital Square” we provide the solution for your every real estate query and needs. Our real estate experts who have years of experience in the field, classify the properties for you after analyzing Budget, Reviewing your needs,
	Specific Preferences.</p>
	<div class="card-footer"><div class="foot">></div></div>
   </div>
   
   <div class="col-md-4">
    <i class="fas fa-laptop-house icontag"></i>
    <h3><b>Real Estate Consulting</b></h3>
	<p>Non- Resident –Indian who are not residing in India but has the dream to purchase properties in India find it difficult to purchase properties back home due to too many middlemen and the corruption within the people who on their behalf check the work here.</p>
   <div class="card-footer"><div class="foot">></div></div>
   </div>
   <div class="col-md-4">
   <i class="fas fa-user-tag icontag"></i>
    <h3><b>Real Estate Consulting</b></h3>
	<p>“The Capital Square” assists you with the most difficult part of purchasing your dream home “HOME LOAN” it is not easy to get the best home loan which will provide you enough time to repay and would not pressurize you with the burden of home loans.</p>
   <div class="card-footer"><div class="foot">></div></div>
   </div>
  </div>
 </div>


</asp:Content>
