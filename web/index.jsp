<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]>
<html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]>
<html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]>
<html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en"> <!--<![endif]-->

<head>
    
    <meta name="viewport" content="width=100%; initial-scale=1; maximum-scale=1; minimum-scale=1; user-scalable=no;" />
    <link rel="icon" href="images/favicon.png" type="image/png" />
    <link rel="shortcut icon" href="images/favicon.png" type="image/png" />
    <title>绵阳康养信息聚合平台</title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.quicksand.js"></script>
    <script type="text/javascript" src="js/superfish.js"></script>
    <script type="text/javascript" src="js/hoverIntent.js"></script>
    <script type="text/javascript" src="js/jquery.hoverdir.js"></script>
    <script type="text/javascript" src="js/jflickrfeed.min.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.elastislide.js"></script>
    <script type="text/javascript" src="js/jquery.tweet.js"></script>
    <script type="text/javascript" src="js/smoothscroll.js"></script>
    <script type="text/javascript" src="js/jquery.ui.totop.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/ajax-mail.js"></script>
    <script type="text/javascript" src="js/accordion.settings.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <!--Le Google Web Fonts-->
    <link href='css/Dosis400500.css' rel='stylesheet' type='text/css' />
    <link href='css/Andada.css' rel='stylesheet' type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>

<header id="header">
    <div id="top-menu">
        <div id="social" class="span4 pull-right">

            <div id="vimeo"> <a id="vimeo_img" href="#">Vimeo</a></div>
            <div id="lin"> <a id="lin_img" href="#">Linkedin</a></div>
            <div id="twitter"> <a id="twitter_img" href="#">Twitter</a></div>
            <div id="facebook"> <a id="facebook_img" href="#">Facebook</a></div>
            <div id="rss"> <a id="rss_img" href="#">Rss</a></div>
            <div id="gplus"> <a id="gplus_img" href="#">Google plus</a></div>
        </div>
    </div>
    <jsp:include page="loginmenu.jsp"></jsp:include>
</header>
<jsp:include page="menu.jsp"></jsp:include>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
<section id="slider">
    <div class="flexslider">
        <ul class="slides">
            <c:forEach items="${bs}" var="b">
                <li>
                    <img style="height: 500px" src="${b.url}" />
                </li>
            </c:forEach>
        </ul>
    </div>
</section>
<section id="welcome">
    <h1>Lorem ipsum solor <span class="color2">lacus ut purus </span>pharetra eget mattis turpis .
    </h1>

    <p class="color3"> – check the great feature list why you should buy –</p>
    <!--Button group goes here-->
    <span class="read-buttons"><button class="btn btn-more" type="button">READ MORE</button><em> -or- </em><button class="btn btn-more" type="button">BUY NOW</button></span>
</section>
<section id="container">
    <div class="container">
        <!--Recent Projects Block-->
        <div class="row">
            <div class="span3">
                <h3>康养服务优秀人员${us.size()}</h3>
                <p class="hidden-phone">
                    不知道写什么，我是毒液，我是毒液
                </p>
                <a class="read-more hidden-phone" href="#">Read More...</a>
            </div>
            <div class="span9">
                <div class="carousel btleft" id="latest-work">
                    <div class="carousel-wrapper">
                        <ul class="da-thumbs" style="width: 1800px; display: block; margin-left: 0px;">
                            <c:forEach items="${us}" var="u">
                            <li style="margin-right: 30px; width: 270px;">
                                <img src="${u.image}" />
                                <div style="display: block;" class="da-animate da-slideFromLeft">
                                    <a data-rel="prettyPhoto" class="p-view" href="example/view.jpg" rel="prettyPhoto"></a>
                                    <a class="p-link" href="ainfo.jsp"></a>
                                </div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="es-nav"><span class="es-nav-prev" style="opacity: 0.5;">Previous</span><span class="es-nav-next" style="opacity: 1;">Next</span></div></div>
                <script type="text/javascript">
                    $(document).ready(function(){
                        $('#latest-work').elastislide({
                            imageW  : 270,
                            margin  : 30
                        });
                    });
                </script>
            </div>
        </div>
        <div class="divider">
            <img alt="" src="images/div-bg.jpg" />
        </div>
        <!--3 columns block-->
        <div class="row bottom30">
            <c:forEach items="${us}" var="u">
            <div class="span4 features-block">
                <img class="im-bottom" src="images/icon1a.png" />
                <img class="im-top" src="images/icon1.png" />
                <h3>${u.name}</h3>

                <p>还没想好</p>
                <button class="btn btn-read" type="button">read more</button>
            </div>
            </c:forEach>
        </div>

</div></section>

<!--footer-->
<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="span3">
                <h3>Menu</h3>
               <ul class="menu-widget">
                   <li><a>About</a></li>
                   <li><a>Elements</a></li>
                   <li><a>Blog</a></li>
                   <li><a>Portfolio</a></li>
                   <li><a>Contacts</a></li>
               </ul>

            </div>
            <div class="span3">
                <h3>Follow Us</h3>
             <!--   <ul class="flickr clearfix"></ul>  -->
                <ul class="menu-widget">
                    <li><img class="mim-bottom" src="./images/fba.png" /><img class="mim-top" src="./images/fb.png" /><a class="follow-widget">Facebook</a></li>
                    <li><img class="mim-bottom" src="./images/fla.png" /><img class="mim-top" src="./images/fl.png" /><a class="follow-widget">Flickr</a></li>
                    <li><img class="mim-bottom" src="./images/twa.png" /><img class="mim-top" src="./images/tw.png" /><a class="follow-widget">Twitter</a></li>
                    <li><img class="mim-bottom" src="./images/bla.png" /><img class="mim-top" src="./images/bl.png" /><a class="follow-widget">Blogger</a></li>
                    <li><img class="mim-bottom" src="./images/dla.png" /><img class="mim-top" src="./images/dl.png" /><a class="follow-widget">Delicious</a></li>
                </ul>
            </div>
            <div class="span3">
                <h3>Contact Form</h3>

                <form id="contact" class="form-horizontal" method="post" />
                    <div class="control-group">
                        <label class="control-label" for="inputName">Name</label>

                        <div class="controls">
                            <input type="text" id="inputName" placeholder="Name" name="inputName" />
                            <label class="ferror" for="inputName" id="fname_error">Name is required.</label>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Email</label>

                        <div class="controls">
                            <input type="text" id="inputEmail" placeholder="Email" name="inputEmail" />
                            <label class="ferror" for="inputEmail" id="femail_error">Email is required.</label>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputMessage"></label>

                        <div class="controls">
                            <textarea rows="3" id="inputMessage" name="inputMessage"></textarea>
                            <label class="ferror" for="inputMessage" id="fmessage_error">Message is required.</label>
                        </div>
                    </div>
                    <div class="submit-div">
                        <input type="submit" class="btn pull-right footer-button" value="SUBMIT!" />
                    </div>
                </form>
            </div>
            <div class="span3">
                <h3>Address</h3>
                <address>
                    Companyname inc.<br />
                    London, Baker Street, 90210<br />
                    <i class="myicon-phone"></i>(123) 456-7890<br />
                    <i class="myicon-mail"></i>info@dxthemes.com
                </address>
                Ut eu nulla eget massa blandit eleifend vel sedis lacus. Sed at viverra nulla. Fusce vel adipisci odio.
                Phasellus commodo, mauris eget pharetra scelerisque, est justo lacinia tortor.
            </div>
        </div>
    </div>
</footer>

<!--footer menu-->
<section id="footer-menu">
    <div class="container">
        <div class="row">
            <p class="span4 pull-left">Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></p>
            <p class="offset6 span2 pull-right"></p>

        </div>
    </div>
</section>

<script>
    $(window).load(function() {
        $('.flexslider').flexslider({
            animation: "slide"
        });
    });
</script>

</body>
</html>