<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<meta charset="UTF-8">
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark " >
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
            <a class="btn btn-success btn-sm ml-3" href="managerCart" style="color: #495057;background-color: #fff;border-color: #d7cdad;">
                <i class="fa fa-shopping-cart">Cart</i> 
                <span class="badge badge-light"></span>
            </a>
        </div>
    </div>
</nav>
<section class="jumbotron text-center"style="padding-top: 64px;padding-left: 32px;padding-bottom: 64px; ">
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
                    <li class="breadcrumb-item"><a href="#">Categories</a></li>
                   
                </ol>
            </nav>
        </div>
    </div>
</div>
