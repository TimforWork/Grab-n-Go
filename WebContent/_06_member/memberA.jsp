<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>檢視個人資料-Grab &amp; Go</title>
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

<body id="top" class="cbp-spmenu-push">

<!--   主選單 & 旁邊抽屜 -->
 <jsp:include page="../_IncludeJsp/User_mainNav.jsp" />
 
    
    <div class="insideTitle">
        <h2>檢視個人資料</h2>
    </div>
    <main>
        <div class="brcame"><a href="../index.jsp">首頁</a> / 檢視個人資料</div>
        <section class="content">
           <div class="memberAccount">
            <div class="memberLeft">
               <figure>
			<img src='${pageContext.servletContext.contextPath}/_00_init/getImageA?id=${LoginOK.memberId}&type=MEMBER' alt="Photo" title="Photo">
			</figure>
            </div>
            <div class="memberRight">
                <div class="memberInfo">
                    <h3>${LoginOK.memberId}</h3>
                    <div class="star"><i class="icon-star on"></i> <i class="icon-star on"></i> <i class="icon-star on"></i> <i class="icon-star"></i> <i class="icon-star"></i></div>
                </div>
                <div class="formList">
                    <div class="formTitle"><i class="icon-user"></i>姓名</div>
                    <div class="formInfo">${LoginOK.name}</div>
                </div>
                <div class="formList">
                    <div class="formTitle"><i class="icon-location"></i>地址</div>
                    <div class="formInfo">${LoginOK.address}</div>
                </div>
                <div class="formList">
                    <div class="formTitle"><i class="icon-phone"></i>電話</div>
                    <div class="formInfo">${LoginOK.phone}</div>
                </div>
                <div class="formList">
                    <div class="formTitle"><i class="icon-mail"></i>E-mail</div>
                    <div class="formInfo">${LoginOK.email}</div>
                </div>
                <div class="formList">
                    <div class="formTitle"><i class="icon-birth"></i>生日</div>
                    <div class="formInfo">${LoginOK.birthday}</div>
                </div>
            </div>
            </div>
        </section>
    </main>
    <!--搜尋-->
    <div class="search">
        <div class="searchBg"></div>
        <section class="searchContent">
            <h2>Hello! 今天想吃什麼呢?</h2>
            <div class="closeBtn"><i class="icon-close" title="關閉"></i></div>
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
                    <input type="text" name="storeName" id="storeName" placeholder="請輸入店家名稱">
                </div>
                <div class="searchList">
                    <input type="text" name="foodName" id="foodName" placeholder="請輸入料理名稱">
                </div>
                <div class="searchBtn">
                    <input name="reset" type="reset" id="reset" value="重填">
                    <input name="submit" type="submit" id="submit" value="搜尋">
                </div>
            </form>
        </section>
    </div>
    <!--搜尋 end-->
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