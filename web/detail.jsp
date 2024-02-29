

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
    <head>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Detail Product</title>
  <!-- Roboto Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
  <link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <link href="css/style.css" rel="stylesheet" type="text/css"/>
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="css/mdb-pro.min.css">
  <!-- Material Design Bootstrap Ecommerce -->
  <link rel="stylesheet" href="css/mdb.ecommerce.min.css">
  <!-- Your custom styles (optional) -->
	
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        
         <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
    </head>
    <body class="skin-light">
        <jsp:include page="header.jsp"></jsp:include>
        
    
    
    <!--Main Navigation-->

  <!--Main layout-->
  <main>
    <div class="container" style="margin-top: 50px;">

      <!--Section: Block Content-->
      <section class="mb-5">

        <div class="row">
          <div class="col-md-6 mb-4 mb-md-0">

            <div id="mdb-lightbox-ui"></div>

            <div class="mdb-lightbox">

              <div class="row product-gallery mx-1">

                <div class="col-12 mb-0">
                  <figure class="view overlay rounded z-depth-1 main-img" style="max-height: 450px;">
                    <a href="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/15a.jpg"
                      data-size="710x823">
                      <img src="${detail.image}"
                        class="img-fluid z-depth-1" />
                    </a>
                  </figure>
                  <figure class="view overlay rounded z-depth-1" style="visibility: hidden;">
                    <a href="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12a.jpg"
                      data-size="710x823">
                    </a>
                  </figure>
                  <figure class="view overlay rounded z-depth-1" style="visibility: hidden;">
                    <a href="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13a.jpg"
                      data-size="710x823">
                    </a>
                  </figure>
                  <figure class="view overlay rounded z-depth-1" style="visibility: hidden;">
                    <a href="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14a.jpg"
                      data-size="710x823">
                    </a>
                  </figure>
                </div>
                <div class="col-12">
                  <div class="row">
                    <div class="col-3">
                      <div class="view overlay rounded z-depth-1 gallery-item hoverable" >
                        
                        <div class="mask rgba-white-slight"></div>
                      </div>
                    </div>
                    <div class="col-3">
                      <div class="view overlay rounded z-depth-1 gallery-item hoverable">
                       
                        <div class="mask rgba-white-slight"></div>
                      </div>
                    </div>
                    <div class="col-3">
                      <div class="view overlay rounded z-depth-1 gallery-item hoverable">
                        
                        <div class="mask rgba-white-slight"></div>
                      </div>
                    </div>
                    <div class="col-3">
                      <div class="view overlay rounded z-depth-1 gallery-item hoverable">
                       
                        <div class="mask rgba-white-slight"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            </div>

          </div>
          <div class="col-md-6">

            <h5>${detail.name}</h5>
        
            <p><span class="mr-1"><strong>${String.format("%,.2f", detail.price)} VND</strong></span></p>
            
                    
            <p class="pt-1">${detail.title}</p>
            <div class="table-responsive">
              <table class="table table-sm table-borderless mb-0">
                <tbody>
                  <tr>
                    <th class="pl-0 w-25" scope="row"><strong>Description</strong></th>
                    <td>${detail.description }</td>
                  </tr>
                  <tr>
                    <th class="pl-0 w-25" scope="row"><strong>Quantity</strong></th>
                    <td>${detail.quantity }</td>
                  </tr>
                  <tr>
                  </tr>
                </tbody>
              </table>
            </div>
            <hr>
            
            <form action="addCart?pid=${detail.id }" method="post">
            <div class="table-responsive mb-2">
              <table class="table table-sm table-borderless">
                <tbody>
                  <tr>
                    <td class="pl-0 pb-0 w-25">Quantity</td>
                  </tr>
                  <tr>
                    <td class="pl-0">
                    <div class="mt-1">
                      <div class="def-number-input number-input safari_only mb-0" style="display: flex; align-items: center;">
                        <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                          class="minus"></button>
                        <input class="quantity" min="0" name="quantity" value="1" type="number">
                        <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                          class="plus"></button>
                      </div>
                      </div>
                    </td>
                    <td>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="mt-1">
             <button type="submit" class="btn btn-primary btn-md mr-1 mb-2">Buy now</button>
           <button type="submit" class="btn btn-light btn-md mr-1 mb-2"><i class="fas fa-shopping-cart pr-2"></i>Add to
              cart</button>
              </div>
              </form>
              
          </div>
        </div>

      </section>
      <!--Section: Block Content-->

      <!-- Classic tabs -->
      <div class="classic-tabs">

        <ul class="nav tabs-primary nav-justified" id="advancedTab" role="tablist">
          <li class="nav-item">
            
          </li>
          <li class="nav-item">
        
          </li>
          <li class="nav-item">
       
          </li>
        </ul>
        <div class="tab-content" id="advancedTabContent">
          <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
            
            
            
          </div>
          <div class="tab-pane fade" id="info" role="tabpanel" aria-labelledby="info-tab">
           
            <table class="table table-striped table-bordered mt-3">
              <thead>
                <tr>
                  
                </tr>
              </thead>
              <tbody>
                <tr>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
           
            <p></p>
      
            <div>
              <!-- Your review -->
              <div class="md-form md-outline">
                <textarea id="form76" class="md-textarea form-control pr-6" rows="4"></textarea>
              </div>
              <div class="text-right pb-2">
              </div>
            </div>
          </div>
        </div>

      </div>
      <!-- Classic tabs -->

      <hr>

      <!--Section: Block Content-->
      <section class="text-center">

        <h4 class="text-center my-5"><strong>Recommended items</strong></h4>

        <!-- Grid row -->
        <div class="row">

	<c:forEach items="${listRelatedProduct}" var="o">
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3 mb-5">

            <!-- Card -->
            <div class="">

              <div class="view zoom overlay z-depth-2 rounded">
                <img class="img-fluid w-100"
                  src="${o.image }" alt="Sample">
                  <h4 class="mb-0"><span class="badge badge-primary badge-pill badge-news"></span></h4>
                <a href="detail?pid=${o.id}">
                  <div class="mask">
                    <img class="img-fluid w-100"
                      src="${o.image }">
                    <div class="mask rgba-black-slight"></div>
                  </div>
                </a>
              </div>

              <div class="pt-4">

                <h5>${o.title }</h5>
                <p><span class="text-danger mr-1"><strong>${String.format("%,.2f", o.price)} VND</strong></span></p>
                    
               

              </div>

            </div>
            <!-- Card -->

          </div>
          <!-- Grid column -->
	 </c:forEach>
	 
        </div>
        <!-- Grid row -->

      </section>
      <!--Section: Block Content-->

    </div>
  </main>
  <!--Main layout-->
  
     


       <jsp:include page="Footer.jsp"></jsp:include>
       <script>
        window.addEventListener("load",function loadAmountCart(){
                        	 $.ajax({
                                 url: "/loadAllAmountCart",
                                 type: "get", //send it through get method
                                 data: {
                                     
                                 },
                                 success: function (responseData) {
                                     document.getElementById("amountCart").innerHTML = responseData;
                                 }
                             });
                        },false); 
        
    
        }
        </script>
        <!-- SCRIPTS -->
  <!-- JQuery -->
  <script src="../../../js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
    <!-- MDB Ecommerce JavaScript -->
    <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
  <script>
    $(document).ready(function () {
      // MDB Lightbox Init
      $(function () {
        $("#mdb-lightbox-ui").load("../../../mdb-addons/mdb-lightbox-ui.html");
      });
    });
  </script>
    </body>
</html>
