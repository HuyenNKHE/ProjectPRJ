<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Anringo BARKERY</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
<!--        <link href="css/main.css" rel="stylesheet" type="text/css"/>-->
    </head>
    <body onload="loadAmountCart()">
        <!--begin of header-->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark" >
            <div class="container">
                <a class="navbar-brand" href="home2">
                    <img src="images/logo.png" alt="Anringo Barkery" style="width: 100px;height: 50px;"/>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <form action="home1" method="get" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input name="key" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        
                    </form>
                    <ul class="navbar-nav m-auto">
                        <c:if test="${sessionScope.acc.isAdmin == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="admin">Aringo Statistics</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.acc.isSell == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="manager">Manager Product</a>
                            </li>
                        </c:if>


                        <c:if test="${sessionScope.acc == null}">
                            <li class="nav-item">
                                <a class="nav-link" href="login">Login </a>
                            </li>
                        </c:if>

                        <c:if test="${sessionScope.acc != null}">

                            <li class="usermode navbar--button">
                                <a class="nav-link" href="#">${sessionScope.acc.user}</a>
                                <ul class="usermode__menu navbar__subnav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="profile.jsp">Profile</a>
                                    </li>  

                                    <li class="nav-item">
                                        <a class="nav-link" href="logout">Logout</a>
                                    </li>  
                                </ul>
                            </li> 
                        </c:if>
                    </ul>
                    <c:set var="list" value="${requestScope.listC}"/>
                    
                <a class="btn btn-success btn-sm ml-3" href="managerCart">
                    <i class="fa fa-shopping-cart"></i> <span style="font-size: 14px;">Cart</span>
                    <b>
                     <c:if test="${list!=null}">
                       <span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;">${list.size()}</span>
                     </c:if>
                    </b>
                 
                </a>
                    
                </div>
            </div>
        </nav>
        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading">ANRINGO LÀ</h1>
                <p class="lead text-muted mb-0">Lựa chọn lý tưởng cho bánh ngọt chuẩn Pháp</p>
                <p class="lead text-muted mb-0">Dành nhiều tình cảm đặc biệt cho bánh ngọt Pháp, chúng tôi quyết tâm tạo nên thương hiệu Aringo Barkery để mang tới cho mọi người một trải nghiệm thưởng thức bánh thật tinh tế và tận tâm.</p>
            </div>
        </section>
        <!--end of menu-->
        <div class="container">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="home2">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Category</a></li>
                                <c:forEach items="${listCC}" var="o">
                                <li class="breadcrumb-item active ${tag == o.cid ? "active":""}"><a href="category?cid=${o.cid}">${o.cname}</a></li>
                                </c:forEach>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-3"> 
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                        <ul class="list-group category_block">
                            <c:forEach items="${listCC}" var="o">
                                <li class="list-group-item text-white ${tag == o.cid ? "active":""}"><a href="category?cid=${o.cid}">${o.cname}</a></li>
                                </c:forEach>

                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-success text-white text-uppercase">New product</div>
                        <div class="card-body">
                            <c:forEach items="${last}" var="p">
                            <img class="img-fluid" src="${p.image}" />
                            <h5 class="card-title"><a href="detail?pid=${p.id}" title="View Product">${p.name}</h5>
                            <p class="card-text" style="color: black;">${p.title}</p>
                            <p class="bloc_left_price" style="color: red;">${String.format("%,.2f", p.price)} VND</p>
                            <hr/>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <div class="col-sm-9">
                    <form class="row" name="f" action="" method="post">
                        <c:forEach items="${data}" var="o">
                            <c:set var="id" value="${o.id}"/>
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <p class="card-text show_txt">Số lượng:${o.quantity}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block">${String.format("%,.2f", o.price)} VND</p>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </form>
                </div>

            </div>
        </div>
        <div class="content">
            <c:set var="page" value="${requestScope.page}"/>
            <div class="jumbotron text-center paging" style="background-color: #eeeae3; padding-top: 50px;padding-bottom: 0px;margin-bottom: 0px;">

                <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                    <a class="${i==page?"active":""}" style="border-style: inset;padding-left: 10px;padding-right: 10px;" href="home2?page=${i}">${i}</a>
                </c:forEach>

            </div>

            <!-- Footer -->
            <footer class="text-light" style="margin-top: 50px;">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-lg-4 col-xl-3">
                            <h5>About</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <p class="mb-0">
                                Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.
                            </p>
                        </div>

                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                            <h5>Informations</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <ul class="list-unstyled">
                                <li><a href="">Link 1</a></li>
                                <li><a href="">Link 2</a></li>
                                <li><a href="">Link 3</a></li>
                                <li><a href="">Link 4</a></li>
                            </ul>
                        </div>

                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
                            <h5>Others links</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <ul class="list-unstyled">
                                <li><a href="">Link 1</a></li>
                                <li><a href="">Link 2</a></li>
                                <li><a href="">Link 3</a></li>
                                <li><a href="">Link 4</a></li>
                            </ul>
                        </div>

                        <div class="col-md-4 col-lg-3 col-xl-3">
                            <h5>Contact</h5>
                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                            <ul class="footer-contact" style=" display: flex; padding-left: 0px;">
                                <li style="margin-right: 10px;"><a href="" title="Facebook" class="flex-center lf-transition  h-12 w-12 rounded-sm border border-transparent active:bg-gray-100 active:duration-100 sm:hover:bg-gray-100" target="_blank" rel="noopener noreferrer"><span><svg width="24" height="24" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M23.4463 18L24.335 12.2087H18.7782V8.45063C18.7782 6.86625 19.5544 5.32188 22.0432 5.32188H24.5694V0.39125C24.5694 0.39125 22.2769 0 20.085 0C15.5088 0 12.5175 2.77375 12.5175 7.795V12.2087H7.43066V18H12.5175V32H18.7782V18H23.4463Z" fill="#444"></path></svg></span></a></li>
                                <li style="margin-right: 10px;"><a href="" title="Instagram" class="flex-center lf-transition  h-12 w-12 rounded-sm border border-transparent active:bg-gray-100 active:duration-100 sm:hover:bg-gray-100" target="_blank" rel="noopener noreferrer"><span><svg width="24" height="24" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.0036 7.7956C11.4632 7.7956 7.801 11.4587 7.801 16C7.801 20.5413 11.4632 24.2044 16.0036 24.2044C20.5439 24.2044 24.2061 20.5413 24.2061 16C24.2061 11.4587 20.5439 7.7956 16.0036 7.7956ZM16.0036 21.3339C13.0695 21.3339 10.6708 18.9419 10.6708 16C10.6708 13.0581 13.0624 10.6661 16.0036 10.6661C18.9448 10.6661 21.3363 13.0581 21.3363 16C21.3363 18.9419 18.9376 21.3339 16.0036 21.3339ZM26.4549 7.46C26.4549 8.52393 25.5982 9.37365 24.5417 9.37365C23.478 9.37365 22.6284 8.51679 22.6284 7.46C22.6284 6.40321 23.4851 5.54636 24.5417 5.54636C25.5982 5.54636 26.4549 6.40321 26.4549 7.46ZM31.8876 9.40221C31.7662 6.83878 31.1808 4.56811 29.3033 2.69731C27.4329 0.826509 25.1627 0.240991 22.5999 0.112462C19.9585 -0.0374874 12.0415 -0.0374874 9.40011 0.112462C6.8444 0.23385 4.57423 0.819368 2.69671 2.69017C0.819186 4.56097 0.240937 6.83164 0.112437 9.39507C-0.0374791 12.037 -0.0374791 19.9558 0.112437 22.5978C0.233798 25.1612 0.819186 27.4319 2.69671 29.3027C4.57423 31.1735 6.83726 31.759 9.40011 31.8875C12.0415 32.0375 19.9585 32.0375 22.5999 31.8875C25.1627 31.7661 27.4329 31.1806 29.3033 29.3027C31.1737 27.4319 31.7591 25.1612 31.8876 22.5978C32.0375 19.9558 32.0375 12.0442 31.8876 9.40221ZM28.4752 25.4326C27.9184 26.8321 26.8404 27.9103 25.434 28.4744C23.3281 29.3098 18.3308 29.117 16.0036 29.117C13.6763 29.117 8.67195 29.3027 6.57312 28.4744C5.1739 27.9174 4.09593 26.8392 3.53196 25.4326C2.69671 23.3261 2.88946 18.3278 2.88946 16C2.88946 13.6722 2.70385 8.66674 3.53196 6.56744C4.08879 5.16791 5.16676 4.0897 6.57312 3.52561C8.67909 2.69017 13.6763 2.88296 16.0036 2.88296C18.3308 2.88296 23.3352 2.69731 25.434 3.52561C26.8332 4.08256 27.9112 5.16077 28.4752 6.56744C29.3104 8.67388 29.1177 13.6722 29.1177 16C29.1177 18.3278 29.3104 23.3333 28.4752 25.4326Z" fill="#444"></path></svg></span></a></li>
                                <li style="margin-right: 10px;"><a href="" title="TikTok" class="flex-center lf-transition  h-12 w-12 rounded-sm border border-transparent active:bg-gray-100 active:duration-100 sm:hover:bg-gray-100" target="_blank" rel="noopener noreferrer"><span><svg width="24" height="24" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M30 13.1194C27.2484 13.126 24.5643 12.2678 22.3269 10.6663V21.8363C22.3261 23.9051 21.6938 25.9243 20.5144 27.6241C19.3351 29.3238 17.6649 30.6229 15.7272 31.3478C13.7896 32.0727 11.6768 32.1888 9.67142 31.6805C7.66603 31.1722 5.86361 30.0638 4.50517 28.5035C3.14673 26.9431 2.29702 25.0053 2.06966 22.949C1.84231 20.8927 2.24814 18.8161 3.23289 16.9967C4.21764 15.1773 5.73438 13.7019 7.58028 12.7677C9.42619 11.8336 11.5133 11.4853 13.5625 11.7694V17.3875C12.6248 17.0925 11.6178 17.1014 10.6855 17.4129C9.75309 17.7243 8.94298 18.3225 8.3708 19.1218C7.79863 19.9211 7.49367 20.8808 7.49946 21.8638C7.50525 22.8468 7.8215 23.8029 8.40304 24.5954C8.98459 25.3879 9.8017 25.9765 10.7377 26.2769C11.6736 26.5774 12.6806 26.5744 13.6148 26.2684C14.549 25.9624 15.3626 25.3691 15.9395 24.5731C16.5163 23.7772 16.8269 22.8193 16.8269 21.8363V0H22.3269C22.3231 0.464463 22.362 0.928292 22.4431 1.38563C22.6342 2.40655 23.0316 3.37775 23.611 4.23983C24.1903 5.10191 24.9394 5.83674 25.8125 6.39937C27.0546 7.22068 28.5109 7.65844 30 7.65812V13.1194Z" fill="#444"></path></svg></span></a></li>
                            </ul>
                        </div>
                        <div class="col-12 copyright mt-3">
                            <p class="float-left">
                                <a href="#">Back to top</a>
                            </p>
                        </div>
                    </div>
                </div>
            </footer>
    </body>
</html>

<script type="text/javascript">
             function loadAmountCart(){
             	 $.ajax({
                      url: "/loadAllAmountCart",
                      type: "get", //send it through get method
                      data: {
                          
                      },
                      success: function (responseData) {
                          document.getElementById("amountCart").innerHTML = responseData;
                      }
                  });
             }         

</script>