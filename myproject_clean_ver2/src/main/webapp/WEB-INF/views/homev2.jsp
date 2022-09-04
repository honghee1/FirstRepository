<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<!-- Basic need -->
<title>Open Pediatrics</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<link rel="profile" href="#">
<!--Google Font-->
<link rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
<!-- Mobile specific meta -->
<meta name=viewport content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone-no">
<!-- CSS files -->
<link rel="stylesheet" href="css/plugins.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!--preloading-->
	<div id="preloader">
		<img class="logo" src="images/logo1.png" alt="" width="119"
			height="58">
		<div id="status">
			<span></span><span></span>
		</div>
	</div>
	<!--end of preloading-->
	
	<!--login form popup-->
	
                 <jsp:include page="maintemplate/login_form_pop.jsp" flush="false"></jsp:include> 
                 
	<!--end of login form popup-->
	
	<!--signup form popup-->
	
                 <jsp:include page="maintemplate/signup_form_pop.jsp" flush="false"></jsp:include> 

	<!--end of signup form popup-->
	
	<!-- BEGIN | Header -->
	
                 <jsp:include page="maintemplate/header.jsp" flush="false"></jsp:include> 
                 
	<!-- END | Header -->
	
	<!-- BEGIN | mainslider -->
	
                 <jsp:include page="maintemplate/mainpage/mainslider.jsp" flush="false"></jsp:include> 
                 
	<!-- END | mainslider -->
	
	<!-- BEGIN | subslider -->
	
				<jsp:include page="maintemplate/mainpage/subslider.jsp" flush="false"></jsp:include> 
				
	<!-- END | subslider -->
	
	<div class="trailers full-width">
		<div class="row ipad-width">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="title-hd">
					<h2>in theater</h2>
					<a href="#" class="viewall">View all <i
						class="ion-ios-arrow-right"></i></a>
				</div>
				<div class="videos">
					<div class="slider-for-2 video-ft">
						<div>
							<iframe class="item-video" src=""
								data-src="https://www.youtube.com/embed/1Q8fG0TtVAY"></iframe>
						</div>
						<div>
							<iframe class="item-video" src=""
								data-src="https://www.youtube.com/embed/w0qQkSuWOS8"></iframe>
						</div>
						<div>
							<iframe class="item-video" src=""
								data-src="https://www.youtube.com/embed/44LdLqgOpjo"></iframe>
						</div>
						<div>
							<iframe class="item-video" src=""
								data-src="https://www.youtube.com/embed/gbug3zTm3Ws"></iframe>
						</div>
						<div>
							<iframe class="item-video" src=""
								data-src="https://www.youtube.com/embed/e3Nl_TCQXuw"></iframe>
						</div>
						<div>
							<iframe class="item-video" src=""
								data-src="https://www.youtube.com/embed/NxhEZG0k9_w"></iframe>
						</div>
					</div>
					<div class="slider-nav-2 thumb-ft">
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer7.jpg"
									alt="photo by Barn Images" width="4096" height="2737">
							</div>
							<div class="trailer-infor">
								<h4 class="desc">Wonder Woman</h4>
								<p>2:30</p>
							</div>
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer2.jpg"
									alt="photo by Barn Images" width="350" height="200">
							</div>
							<div class="trailer-infor">
								<h4 class="desc">Oblivion: Official Teaser Trailer</h4>
								<p>2:37</p>
							</div>
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer6.jpg"
									alt="photo by Joshua Earle" width="509" height="301">
							</div>
							<div class="trailer-infor">
								<h4 class="desc">Exclusive Interview: Skull Island</h4>
								<p>2:44</p>
							</div>
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer3.png"
									alt="photo by Alexander Dimitrov" width="100" height="56">
							</div>
							<div class="trailer-infor">
								<h4 class="desc">Logan: Director James Mangold Interview</h4>
								<p>2:43</p>
							</div>
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer4.png"
									alt="photo by Wojciech Szaturski" width="100" height="56">
							</div>
							<div class="trailer-infor">
								<h4 class="desc">Beauty and the Beast: Official Teaser
									Trailer 2</h4>
								<p>2: 32</p>
							</div>
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer5.jpg"
									alt="photo by Wojciech Szaturski" width="360" height="189">
							</div>
							<div class="trailer-infor">
								<h4 class="desc">Fast&Furious 8</h4>
								<p>3:11</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="sidebar">
					<div class="celebrities">
						<h4 class="sb-title">Spotlight Celebrities</h4>
						<div class="celeb-item">
							<a href="#"><img src="images/uploads/ava1.jpg" alt=""
								width="70" height="70"></a>
							<div class="celeb-author">
								<h6>
									<a href="#">Samuel N. Jack</a>
								</h6>
								<span>Actor</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="#"><img src="images/uploads/ava2.jpg" alt=""
								width="70" height="70"></a>
							<div class="celeb-author">
								<h6>
									<a href="#">Benjamin Carroll</a>
								</h6>
								<span>Actor</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="#"><img src="images/uploads/ava3.jpg" alt=""
								width="70" height="70"></a>
							<div class="celeb-author">
								<h6>
									<a href="#">Beverly Griffin</a>
								</h6>
								<span>Actor</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="#"><img src="images/uploads/ava4.jpg" alt=""
								width="70" height="70"></a>
							<div class="celeb-author">
								<h6>
									<a href="#">Justin Weaver</a>
								</h6>
								<span>Actor</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- latest new v2 section-->
	<div class="latestnew full-width">
		<div class="row">
			<div class="col-md-9">
				<div class="ads adsv2">
					<img src="images/uploads/ads2.png" alt="">
				</div>
				<div class="title-hd">
					<h2>Latest news</h2>
					<a href="bloggrid.html" class="viewall">see all news <i
						class="ion-ios-arrow-right"></i></a>
				</div>
				<div class="latestnewv2">
					<div class="blog-item-style-2">
						<a href="blogdetail.html"><img
							src="images/uploads/blogv21.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3>
								<a href="blogdetail.html">Godzilla: King Of The Monsters
									Adds OâShea Jackson Jr</a>
							</h3>
							<span class="time">27 Mar 2017</span>
							<p>Looks like Kong: Skull Island started a tradition with its
								casting of Straight ...</p>
						</div>
					</div>
					<div class="blog-item-style-2">
						<a href="blogdetail.html"><img
							src="images/uploads/blogv22.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3>
								<a href="blogdetail.html">First Official Images of Alicia
									Vikander As Tomb Raiderâs Lara Croft</a>
							</h3>
							<span class="time">27 Mar 2017</span>
							<p>Aside from the her digital incarnation, the most
								recognisable image of Tomb ...</p>
						</div>
					</div>
					<div class="blog-item-style-2">
						<a href="blogdetail.html"><img
							src="images/uploads/blogv23.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3>
								<a href="blogdetail.html">New Spider-Man: Homecoming Poster
									Finds Peter Parker At Rest</a>
							</h3>
							<span class="time">27 Mar 2017</span>
							<p>He might be a primary protector of New York City, but at
								heart, Peter Parker is ...</p>
						</div>
					</div>
					<div class="blog-item-style-2">
						<a href="blogdetail.html"><img
							src="images/uploads/blogv24.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3>
								<a href="blogdetail.html">Joseph Gordon-Levitt Directing
									Moive Musical Comedy Wingmen</a>
							</h3>
							<span class="time">27 Mar 2017</span>
							<p>A little over a year ago, we learned that Joseph
								Gordon-Levitt and Channing ...</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="sidebar">
					<div class="sb-facebook sb-it">
						<h4 class="sb-title">Find us on Facebook</h4>
						<iframe src=""
							data-src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fhaintheme%2F%3Ffref%3Dts&tabs=timeline&width=340&height=315px&small_header=true&adapt_container_width=false&hide_cover=false&show_facepile=true&appId"
							height="315" style="width: 100%; border: none; overflow: hidden"></iframe>
					</div>
					<div class="sb-twitter sb-it">
						<h4 class="sb-title">Tweet to us</h4>
						<div class="slick-tw">
							<div class="tweet item" id="599202861751410688"></div>
							<div class="tweet item" id="297462728598122498"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end of latest new v2 section-->
	<!-- footer v2 section-->
	<footer class="ht-footer full-width-ft">
		<div class="row">
			<div class="flex-parent-ft">
				<div class="flex-child-ft item1">
					<a href="index.html"><img class="logo" src="images/logo1.png"
						alt=""></a>
					<p>
						5th Avenue st, manhattan<br> New York, NY 10001
					</p>
					<p>
						Call us: <a href="#">(+01) 202 342 6789</a>
					</p>
				</div>
				<div class="flex-child-ft item2">
					<h4>Resources</h4>
					<ul>
						<li><a href="#">About</a></li>
						<li><a href="#">Blockbuster</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Forums</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Help Center</a></li>
					</ul>
				</div>
				<div class="flex-child-ft item3">
					<h4>Legal</h4>
					<ul>
						<li><a href="#">Terms of Use</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Security</a></li>
					</ul>
				</div>
				<div class="flex-child-ft item4">
					<h4>Account</h4>
					<ul>
						<li><a href="#">My Account</a></li>
						<li><a href="#">Watchlist</a></li>
						<li><a href="#">Collections</a></li>
						<li><a href="#">User Guide</a></li>
					</ul>
				</div>
				<div class="flex-child-ft item5">
					<h4>Newsletter</h4>
					<p>
						Subscribe to our newsletter system now <br>to get latest news
						from us.
					</p>
					<form action="#">
						<input type="text" placeholder="Enter your email">
					</form>
					<a href="#" class="btn">Subscribe now <i
						class="ion-ios-arrow-forward"></i></a>
				</div>
			</div>
			<div class="ft-copyright">
				<div class="ft-left">
					<p>
						Â© 2017 Blockbuster. All Rights <a
							href="http://www.bootstrapmb.com/" title="bootstrapmb">Reserved</a>.
						Designed by leehari.
					</p>
				</div>
				<div class="backtotop">
					<p>
						<a href="#" id="back-to-top">Back to top <i
							class="ion-ios-arrow-thin-up"></i></a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- end of footer v2 section-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>