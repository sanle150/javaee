<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>

    <meta name="viewport" content="width=100%; initial-scale=1; maximum-scale=1; minimum-scale=1; user-scalable=no;" />
    <link rel="icon" href="images/favicon.png" type="image/png" />
    <link rel="shortcut icon" href="images/favicon.png" type="image/png" />
    <title>Contact Us Page</title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <link href="css/prettyPhoto.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.quicksand.js"></script>
    <script type="text/javascript" src="js/superfish.js"></script>
    <script type="text/javascript" src="js/hoverIntent.js"></script>
    <script type="text/javascript" src="js/jquery.hoverdir.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="js/jflickrfeed.min.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.elastislide.js"></script>
    <script type="text/javascript" src="js/jquery.tweet.js"></script>
    <script type="text/javascript" src="js/smoothscroll.js"></script>
    <script type="text/javascript" src="js/jquery.ui.totop.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/ajax-mail.js"></script>
    <script type="text/javascript" src="js/accordion.settings.js"></script>
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
<!--breadcrumbs -->
<div class="container breadcrumbs">
    <h1>新增机构</h1>
    <div>You are here: &nbsp&nbsp<a href="#">Home</a> &nbsp/&nbsp Contact</div>
</div>

<!--container-->
<section id="container">
    <div class="container">
        <div class="row">
            <section id="page-sidebar" class="alignrleft span9">
                <article>
                    <h3>新增机构</h3>

                </article>

                <hr />

                <form name="contact" method="get" action="AddOrgServlet" class="af-form" id="af-form" >
                    <div class="af-outer af-required">
                        <div class="af-inner">
                            <label for="name" id="name_label">组织名称：</label>
                            <input type="text" name="orgname" id="orgname" size="30" value="" class="text-input input-xlarge" />
                            <label class="error" for="name" id="name_error">orgname is required.</label>
                        </div>
                    </div>
                    <div class="af-outer af-required">
                        <div class="af-inner">
                            <label for="email" id="email_label">联系人：</label>
                            <input type="text" name="contact" id="contact" size="30" value="" class="text-input input-xlarge" />
                            <label class="error" for="contact" id="name_error">Email is required.</label>
                        </div>
                    </div>
                     <div class="af-outer af-required">
                        <div class="af-inner">
                            <label for="email" id="email_label">联系电话：</label>
                            <input type="text" name="phone" id="phone" size="30" value="" class="text-input input-xlarge" />
                            <label class="error" for="phone" id="name_error">Email is required.</label>
                        </div>
                    </div>
                      <div class="af-outer af-required">
                        <div class="af-inner">
                            <label for="email" id="email_label">地址：</label>
                            <input type="text" name="address" id="address" size="30" value="" class="text-input input-xlarge" />
                            <label class="error" for="address" id="name_error">Email is required.</label>
                        </div>
                    </div>
                       <div class="af-outer af-required">
                        <div class="af-inner">
                            <label for="email" id="email_label">LOGO：</label>
                            <input type="text" name="logo" id="logo" size="30" value="" class="text-input input-xlarge" />
                            <label class="error" for="address" id="name_error">Email is required.</label>
                        </div>
                    </div>

                    <div class="af-outer af-required">
                        <div class="af-inner">
                            <label for="input-message" id="message_label">简介：</label>
                            <textarea name="intro" id="intro" cols="30" class="text-input"></textarea>
                            <label class="error" for="intro" id="message_error">Message is required.</label>
                        </div>
                    </div>
                    <div class="af-outer af-required">
                        <div class="af-inner">
                            <input type="submit" name="submit"  value="添加" />
                        </div>
                    </div>
                </form>


            </section>
            <!--sidebar-->
            <aside id="sidebar" class="alignright span3">
                <section>
                    <div class="title-divider">
                        <div class="divider-arrow"></div>
                        <h4>Address</h4>
                    </div>
                    <address>
                        <strong>Organization Name</strong><br />
                        Street Name 432/2<br />
                        London, 90210<br />
                        <abbr title="Phone">P:</abbr> (123) 456-7890
                      </address>
                    <address>
                        <strong>Full Name</strong><br />
                        <a href="mailto:#">info@email.com</a>
                    </address>
                </section>
                <!--twitter -->
                <section id="twitter-sidebar">
                    <div class="title-divider">
                        <div class="divider-arrow"></div>
                        <h4>Twitter</h4>
                    </div>
                    <div class="twitter"></div>
                    <script type="text/javascript">
                        $(document).ready(function(){
                            //twitter
                            $(".twitter").tweet({
                                join_text: "auto",
                                username: "twitter",
                                avatar_size:40,
                                count: 2,
                                auto_join_text_default: "we said,",
                                auto_join_text_ed: "we",
                                auto_join_text_ing: "we were",
                                auto_join_text_reply: "we replied",
                                auto_join_text_url: "we were checking out",
                                loading_text: "loading tweets..."
                            });
                        });
                    </script>
                </section>
            </aside>
        </div>
    </div>
</section>

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
            <p class="span4 pull-left">Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a></p>
            <p class="offset6 span2 pull-right"></span></p>

        </div>
    </div>
</section>

</body>
</html>