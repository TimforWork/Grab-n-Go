
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="SYSTEM" class="_00_init.GlobalService" scope="application"/>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport">
<title>Grab &amp; Go</title>
<meta name="keywords" content="Grab &amp; Go, 訂餐, 帶著就走, 上班族" />
<meta name="description"
	content="短短的午休時間您受夠了在水深火熱中跟人家相爭排隊買午餐嗎? Grab &amp; Go 預約訂餐系統讓您輕鬆帶著走。" />
<meta name="author" content="Grab &amp; Go">
<meta name="copyright" content="Grab &amp; Go">
<meta name="robots" content="index, follow">
<meta name="GOOGLEBOT" content="index, follow">
<meta name="distribution" content="GLOBAL">
<meta property="og:title" content="Grab &amp; Go " />
<meta property="og:description"
	content="短短的午休時間您受夠了在水深火熱中跟人家相爭排隊買午餐嗎? Grab &amp; Go 預約訂餐系統讓您輕鬆帶著走。" />
<meta property="og:site_name" content="Grab &amp; Go" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.chewchew.com.tw" />
<meta property="og:image" content="http://lovegreenfood.com/gg/fb.jpg" />
<link rel="image_src" href="http://lovegreenfood.com/gg/fb.jpg" />
<link rel="SHORTCUT ICON" href="images/favicon.ico" />
<link rel="icon" href="images/favicon.ico" type="image/ico" />
<!--main css-->
<link href="css_web/default.css" rel="stylesheet" type="text/css" />
<link
	href="https://file.myfontastic.com/JgbKu4HBhSiTuUxrtB7R5d/icons.css"
	rel="stylesheet">
<link href="css_web/component.css" rel="stylesheet" type="text/css" />
<!--輪播 css-->
<link href="css_web/slick.css" rel="stylesheet" type="text/css">
<!--animation-->
<link href="css_web/animate.css" rel="stylesheet" type="text/css" />
</head>

<body id="top" class="cbp-spmenu-push">
	<header>
	<div id="showLeftPush" class="menuBtn">
		<i class="icon-menu" title="Menu"></i>
	</div>
	<div class="storeBtn">
		<a href="_02_storeLogin/StoreLogin.jsp">我是店家</a>
	</div>
	<div class="logo">
		<a href="indexA.jsp"><img src="images/share/logo.svg"
			alt="Grab &amp; Go" title="Grab &amp; Go"></a>
	</div>
	<div class="rightBtn searchItem">
		<a href="#" title="搜尋"><i class="icon-search"></i></a>
	</div>
	<div class="rightBtn">
		<a href="_04_ShoppingCart/cart.htm" title="購物車"><i
			class="icon-bag"></i></a>
	</div>
	<div class="account">
		<ul>
			<!--未登入用這組-->
			<c:if test="${empty LoginOK}">
				<li><a href="_02_login/loginA.jsp">登入</a></li>
			</c:if>
<!-- 			<li><a href="_02_login/loginA.jsp">登入</a></li> -->
			<!--未登入用這組 end-->
			<!--已登入用這組-->
			<c:if test="${! empty LoginOK}">
				<li><a href="_06_member/member.htm">${LoginOK.memberId}</a></li>
				<li><a href="logout.do">登出</a></li>
				<!--已登入用這組 end-->
			</c:if>
		</ul>
	</div>
	</header>
		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
			id="cbp-spmenu-s1"> 
			<!--已登入用這組 未登入的話這塊隱藏-->
	<c:if test="${!empty LoginOK}">
		<div class="memberLogin">
			<figure>
			<img src="images/userImage/user_photo.jpg" alt="Photo" title="Photo"></figure>
			<p>
				${LoginOK.memberId}<a href="logout.do">登出</a>
			</p>
		</div>
	</c:if>
	<!--已登入用這組 未登入的話這塊隱藏 end-->
	<ul>
		<li><a href="_06_member/member.htm"><i class="icon-user"></i>檢視/編輯個人資料</a></li>
		<li><a href="_06_member/order.htm"><i class="icon-list"></i>訂購紀錄</a></li>
		<li><a href="_08_about/about.htm"><i class="icon-gg"></i>關於Grab
				&amp; Go</a></li>
	</ul>
	<!-- AddToAny BEGIN -->
	<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
		<a class="a2a_button_facebook"></a> <a class="a2a_button_line"></a> <a
			class="a2a_button_google_plus"></a> <a class="a2a_button_twitter"></a>
		<a class="a2a_button_email"></a>
	</div>
	<script async src="https://static.addtoany.com/menu/page.js"></script>
	<!-- AddToAny END --> </nav>
	<div class="mainBanner">
		<h1 class="slider wow fadeInDown" data-wow-delay="0.3s">
			What do you want<br>
			<span class="wBig">TO EAT</span><br>
			<span class="wSmall">today?</span><br>
			<span class="wRed">今天想吃什麼</span>
		</h1>
		<!--main banner 輪播-->
		<div class="banner slider wow fadeIn">
			<div>
				<img src="images/banner/main_banner20170610001.jpg"
					alt="Grab &amp; Go" title="Grab &amp; Go">
			</div>
			<div>
				<img src="images/banner/main_banner20170610002.jpg"
					alt="Grab &amp; Go" title="Grab &amp; Go">
			</div>
		</div>
		<!--main banner 輪播 end-->
	</div>
	<main> <!--標語--> <section class="content bgRed">
	<h2 class="slogan slider wow fadeIn" data-wow-delay="0.5s">
		"短短的午休時間您受夠了在水深火熱中跟人家相爭排隊買午餐嗎?<br>Grab &amp; Go 預約訂餐系統讓您輕鬆帶著走。"
	</h2>
	</section> <!--標語 end--> <!--瀑布流--> <section class="grid slider wow fadeIn"
		id="container">
	<div class="gridItem">
		<figure>
		<img src="images/restImage/ss_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	<div class="gridItem">
		<figure>
		<img src="images/restImage/fk_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	<div class="gridItem">
		<figure>
		<img src="images/restImage/ds_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	<div class="gridItem">
		<figure>
		<img src="images/restImage/wb_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	<div class="gridItem">
		<figure>
		<img src="images/restImage/ss_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	<div class="gridItem">
		<figure>
		<img src="images/restImage/ss_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	<div class="gridItem">
		<figure>
		<img src="images/restImage/fk_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	<div class="gridItem">
		<figure>
		<img src="images/restImage/ds_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	<div class="gridItem">
		<figure>
		<img src="images/restImage/wb_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	<div class="gridItem">
		<figure>
		<img src="images/restImage/ss_coverImg.jpg" alt="紗舞缡-極品集"
			title="紗舞缡-極品集">
		<div class="mask">
			<a href="_07_storePage/store.htm">觀看菜單</a>
		</div>
		</figure>
		<div class="storeInfo">
			<h2>
				<a href="_07_storePage/store.htm">紗舞缡-極品集</a>
			</h2>
			<!--有亮的星星class要加上on-->
			<div class="star">
				<i class="icon-star on"></i> <i class="icon-star on"></i> <i
					class="icon-star on"></i> <i class="icon-star"></i> <i
					class="icon-star"></i>
			</div>
			<div class="dist">
				<i class="icon-location"></i>大安區
			</div>
			<div class="tagOrder">
				<div class="tag">
					<span>日式料理</span>
				</div>
				<div class="orderCount">
					目前訂單<span>999</span>
				</div>
			</div>
		</div>
	</div>
	</section> </main>
	<!--搜尋-->
	<div class="search">
		<div class="searchBg"></div>
		<section class="searchContent">
		<h2>Hello! 今天想吃什麼呢?</h2>
		<div class="closeBtn">
			<i class="icon-close" title="關閉"></i>
		</div>
		<form action="#" method="post">
			<div class="searchList">
				<select name="foodKind" id="foodKind">
					<option value="日式料理">日式料理</option>
					<option value="中式料理">中式料理</option>
					<option value="義式料理">義式料理</option>
					<option value="早午餐/下午茶">早午餐/下午茶</option>
					<option value="暗黑料理">暗黑料理</option>
					<option value="台灣小吃">台灣小吃</option>
				</select>
			</div>
			<div class="searchList">
				<input type="text" name="storeName" id="storeName"
					placeholder="請輸入店家名稱">
			</div>
			<div class="searchList">
				<input type="text" name="foodName" id="foodName"
					placeholder="請輸入料理名稱">
			</div>
			<div class="searchBtn">
				<input name="reset" type="reset" id="reset" value="重填"> <input
					name="submit" type="submit" id="submit" value="搜尋">
			</div>
		</form>
		</section>
	</div>
	<!--搜尋 end-->
	<footer> <figure>
	<img src="images/share/logo.svg" alt="Grab &amp; Go"
		title="Grab &amp; Go"></figure>
	<p>Copyright © Garb and Go All rights reserved.</p>
	<a href="#" class="backToTop">TOP</a></footer>
	
	<!--main js-->
	<!--[if lt IE 8]><script type="text/javascript" src="javascript/html5.js"></script><![endif]-->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<!--nav-->
	<script type="text/javascript" src="javascript/classie.js"></script>
	<!--animation js-->
	<script type="text/javascript" src="javascript/wow.js"></script>
	<!--silder-->
	<script src="javascript/slick.js"></script>
	<script>
		$(function() {
			$('.banner').slick({
				dots : true,
				arrows : false,
				infinite : true,
				slidesToShow : 1,
				slidesToScroll : 1,
			});
		});
	</script>
	<!--瀑布流-->
	<script src="javascript/masonry.pkgd.min.js"></script>
	<script src="javascript/imagesloaded.pkgd.min.js"></script>
	<script>
		var $grid = $('.grid').imagesLoaded(function() {
			$grid.masonry({
				itemSelector : '.gridItem',
				percentPosition : true,
			});
		});
	</script>
	<!--share js-->
	<script src="javascript/share.js"></script>
	<!-- 取得使用者位置 -->
	<script	 src = "js/getUsrLocation.js"></script>
</body>

</html>