<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>訂購紀錄-Grab &amp; Go</title>
    <meta name="keywords" content="Grab &amp; Go, 訂餐, 帶著就走, 上班族" />
    <meta name="description" content="短短的午休時間您受夠了在水深火熱中跟人家相爭排隊買午餐嗎? Grab &amp; Go 預約訂餐系統讓您輕鬆帶著走。" />
    <meta name="author" content="Grab &amp; Go">
    <meta name="copyright" content="Grab &amp; Go">
    <meta name="robots" content="index, follow">
    <meta name="GOOGLEBOT" content="index, follow">
    <meta name="distribution" content="GLOBAL">
    <meta property="og:title" content="Grab &amp; Go " />
    <meta property="og:description" content="短短的午休時間您受夠了在水深火熱中跟人家相爭排隊買午餐嗎? Grab &amp; Go 預約訂餐系統讓您輕鬆帶著走。" />
    <meta property="og:site_name" content="Grab &amp; Go" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.chewchew.com.tw" />
    <meta property="og:image" content="http://lovegreenfood.com/gg/fb.jpg" />
    <link rel="image_src" href="http://lovegreenfood.com/gg/fb.jpg" />
    <link rel="SHORTCUT ICON" href="../images/favicon.ico" />
    <link rel="icon" href="../images/favicon.ico" type="image/ico" />
    <!--main css-->
    <link href="../css_web/default.css" rel="stylesheet" type="text/css" />
    <link href="https://file.myfontastic.com/JgbKu4HBhSiTuUxrtB7R5d/icons.css" rel="stylesheet">
    <link href="../css_web/component.css" rel="stylesheet" type="text/css" />
</head>
<jsp:useBean id="orderBeans" class="_05_orderProcess.model.OrderDAO" scope="page"/>
<c:set target="${orderBeans}" property="username" value="${LoginOK.memberId}"/>
<body id="top" class="cbp-spmenu-push">
 <jsp:include page="../_IncludeJsp/User_mainNav.jsp" />

    <div class="insideTitle">
        <h2>訂購紀錄</h2>
    </div>
    <main>
        <div class="brcame"><a href="../index.jsp">首頁</a> / 訂購紀錄</div>
        <section class="content">
          <div class="orderList head">
              <div class="order nNumber">訂單編號</div>
              <div class="order date">訂購日期</div>
              <div class="order store">店家</div>
              <div class="order price">應付金額</div>
              <div class="order status">訂單狀態</div>
              <div class="order detail">訂單內容</div>
          </div>
          <c:forEach var="anOrderBean" varStatus="statusX" items="${orderBeans.memberOrders}">
          <div class="orderList">
              <div class="order nNumber">${anOrderBean.ord_id}</div>
              
              <div class="order date"><fmt:formatDate type = "both"  pattern="yyyy-MM-dd HH:mm" value ="${anOrderBean.ord_time}" /></div>
              <div class="order store">${anOrderBean.rest_name}</div>
              <div class="order price">${anOrderBean.ord_totalPrice}</div>
              <div class="order status">${anOrderBean.ord_status}</div>
              <div class="order detail"><a href="order_detail.jsp?ordId=${anOrderBean.ord_id}&restName=${anOrderBean.rest_name}&totalPrice=${anOrderBean.ord_totalPrice}">檢視</a></div>
          </div>
          </c:forEach>
        </section>
    </main>
       <!--搜尋-->
   <jsp:include page="../_IncludeJsp/User_search.jsp" />
   
    <footer>
        <figure><img src="../images/share/logo.svg" alt="Grab &amp; Go" title="Grab &amp; Go"></figure>
        <p>Copyright © Garb and Go All rights reserved.</p><a href="#" class="backToTop">TOP</a></footer>
    <!--main js-->
    <!--[if lt IE 8]><script type="text/javascript" src="javascript/html5.js"></script><![endif]-->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <!--nav-->
    <script type="text/javascript" src="../javascript/classie.js"></script>
    <!--share js-->
    <script src="../javascript/share.js"></script>
</body>

</html>