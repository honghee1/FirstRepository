<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    ${requestScope.movie.title }
<%-- <c:forEach var="movie" items="${requestScope.movie }" varStatus="status">
<p>${requestScope.movie.title }<</p>
</c:forEach> --%>
<%-- <div class="slider sliderv2">
		<div class="container">
			<div class="row">
				<div class="slider-single-item">
					<div class="movie-item">
						<div class="row">
							<div class="col-md-8 col-sm-12 col-xs-12">
								<div class="title-in">
									<div class="cate">
										<span class="blue"><a href="#">${requestScope.movie.title }</a></span><span
											class="yell"><a href="#">${requestScope.movie.title }</a></span><span
											class="orange"><a href="#">${requestScope.movie.titleEng }</a></span>
									</div>
									<h1>
										<a href="#">${movielist.title }<br> ${movielist.titleEng } <span>${requestScope.movie.repRlsDate }</span></a>
									</h1>
									<div class="social-btn">
										<a href="#" class="parent-btn"><i class="ion-play"></i>Watch
											Trailer</a><a href="#" class="parent-btn"><i
											class="ion-heart"></i>Add to Favorite</a>
										<div class="hover-bnt">
											<a href="#" class="parent-btn"><i
												class="ion-android-share-alt"></i>share</a>
											<div class="hvr-item">
												<a href="#" class="hvr-grow"><i
													class="ion-social-facebook"></i></a><a href="#"
													class="hvr-grow"><i class="ion-social-twitter"></i></a><a
													href="#" class="hvr-grow"><i
													class="ion-social-googleplus"></i></a><a href="#"
													class="hvr-grow"><i class="ion-social-youtube"></i></a>
											</div>
										</div>
									</div>
									<div class="mv-details">
										<p>
											<i class="ion-android-star"></i><span>7.4</span>/10
										</p>
										<ul class="mv-infor">
											<li>Run Time: ${movielist.runtime }</li>
											<li>Rated: ${movielist.rating }</li>
											<li>Release: ${movielist.repRlsDate }</li>
										</ul>
									</div>
									<div class="btn-transform transform-vertical">
										<div>
											<a href="#" class="item item-1 redbtn">more detail</a>
										</div>
										<div>
											<a href="#" class="item item-2 redbtn hvrbtn">more detail</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-12 col-xs-12">
								<div class="mv-img-2">
									<a href="#"><img src="images/uploads/poster1.jpg" alt=""></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 --%>