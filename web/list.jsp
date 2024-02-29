<%-- 
    Document   : list
    Created on : Oct 20, 2023, 11:02:59 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aringo BARKERY</title>
        <link rel="stylesheet" href="css/filter.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/main.css" rel="stylesheet" typ-e="text/css"/>

        <script type="text/javascript">
            function setCheck(obj) {
                var fries = document.getElementsByName('cidd');
                if ((obj.id == 'c0') && (fries[0]).checked == true) {
                    for (var i = 1; i < fries.length; i++)
                        fries[i].checked = false;
                } else {
                    for (var i = 1; i < fries.length; i++) {
                        if (fries[i].checked == true) {
                            fries[0].checked = false;
                            break;
                        }
                    }
                }
                document.getElementById('f1').submit();
            }
            function setCheck1(obj) {
                var fries = document.getElementsByName('price');
                if ((obj.id == 'g0') && (fries[0]).checked == true) {
                    for (var i = 1; i < fries.length; i++)
                        fries[i].checked = false;
                } else {
                    for (var i = 1; i < fries.length; i++) {
                        if (fries[i].checked == true) {
                            fries[0].checked = false;
                            break;
                        }
                    }
                }
                document.getElementById('f2').submit();
            }
        </script>
    </head>
    <body>
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
                                <a class="nav-link" href="login.jsp">Login </a>
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
                    <form action="home1" method="get" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input name="key" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <a class="btn btn-success btn-sm ml-3" href="managerCart" style="color: #495057;background-color: #fff;border-color: #d7cdad;">
                            <i class="fa fa-shopping-cart">Cart</i> 
                            <span class="badge badge-light"></span>
                        </a>
                    </form>
                </div>
            </div>
        </nav>

                </div>
            </div>
        </nav>
        <div class="clr"></div>
        <div id="menu_tab">
            <c:set var="cat" value="${requestScope.data}"/>
            <c:set var="cid" value="${requestScope.cid}"/>
            <ul class="menu" style="text-align: center;background-color: rgba(0,0,0,.075)">
                <li><a class="${cid==0?"active":""}" href="home1?cid=${0}" style="color: #495057;">ALL</a></li>
                    <c:forEach items="${cat}" var="c">
                    <li><a class="${c.cid==cid?"active":""}" href="home1?cid=${c.cid}" style="color: #495057;">${c.cname}</a></li>
                    </c:forEach>
            </ul>
        </div>
        <div class="clr"></div>
        <div id="content">
            <div id="tab1" style="margin-left: 50px;border: 1px solid;margin-top: 100px;"  >
                <c:set var="chid" value="${requestScope.chid}"/>
                <hr style="border-top: 1px solid chocolate"/>
                <h5 style="color: black">Category</h5>
                <hr style="border-top: 1px solid chocolate"/>
                <form id="f1" action="home1">
                    <input type="checkbox" id="c0" name="cidd"
                           ${chid[0]?"checked":""}
                           value="${0}" onclick="setCheck(this)"/>All<br/>
                    <c:forEach begin="0" end="${cat.size()-1}" var="i">
                        <input type="checkbox" id="cm" name="cidd"
                               ${cat.get(i).getCid()==id?"checked":""}
                               value="${cat.get(i).getCid()}"
                               ${chid[(i+1)]?"checked":""}
                               onclick="setCheck(this)"/>
                        ${cat.get(i).getCname()}<br/>
                    </c:forEach>
                </form>
                <hr style="border-top: 1px solid chocolate"/>
                <h5 style="color: black">Price Range</h5>
                <hr style="border-top: 1px solid chocolate"/>
                <c:set var="pp" value="${requestScope.pp}"/>
                <c:set var="pb" value="${requestScope.pb}"/>

                <form id="f2" action="home1">
                    <input type="checkbox" id="g0" name="price"
                           ${pb[0]?"checked":""}
                           value="0" onclick="setCheck1(this)"/>All<br/>
                    <c:forEach begin="0" end="${4}" var="i">
                        <input type="checkbox" id="g1" name="price"
                               ${pb[i+1]?"checked":""}
                               value="${(i+1)}"
                               onclick="setCheck1(this)"/>${pp[i]}<br/>
                    </c:forEach>
                </form>
            </div>

            <div id="tab2">
                <c:set var="list" value="${requestScope.listP}"/>
                <c:if test="${list!=null}">
                    <h4 style="color: black;margin-left: 50px;">
                        <ul class="indicator" style=" display: flex;">
                            BARKERY (${list.size()} sản phẩm)
                            <div class="filter-condition" style="text-align: right;margin-left: 450px;">
                                <span>View As a</span>
                                <select name="" id="select">
                                    <option value="Default">Default</option>
                                    <option value="LowToHigh">Low to high</option>
                                    <option value="HighToLow">High to low</option>
                                </select>
                            </div>
                        </ul>
                    </h4>
                            
                    <div class="product-field">
                        <ul class="item">            
                            <c:forEach items="${list}" var="p">
                                <li data-category="" data-price="">
                                    <a href="detail?pid=${p.id}">
                                        <img src="${p.image}" width="80px" height="80px"/>
                                        <p>${p.name}</p>
                                        <p>${String.format("%,.2f", p.price)} VND</p>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </c:if>



                <c:set var="list" value="${requestScope.products}"/>
                <c:if test="${list!=null}">
                    <h4 style="color: black;margin-left: 50px;">
                        <ul class="indicator" style=" display: flex;">
                            BARKERY (${list.size()} sản phẩm)
                            <div class="filter-condition" style="text-align: right;margin-left: 450px;">
                                <span>View As a</span>
                                <select name="" id="select">
                                    <option value="Default">Default</option>
                                    <option value="LowToHigh">Low to high</option>
                                    <option value="HighToLow">High to low</option>
                                </select>
                            </div>
                        </ul>
                    </h4>
                    <div class="product-field">
                        <ul class="item">
                            <c:forEach items="${list}" var="p">
                                <li data-category="" data-price="">
                                    <a href="detail?pid=${p.id}">
                                        <img src="${p.image}" width="80px" height="80px"/>

                                        <p>${p.name}</p>
                                        <p>${String.format("%,.2f", p.price)} VND</p>
                                    </a>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                </c:if>
            </div>        
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
<script type="text/javascript" src="js/main.js"></script>
