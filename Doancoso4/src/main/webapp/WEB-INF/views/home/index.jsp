<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Set" %>


<!-- Main Begin -->
<main class="main-index p-5">
	<div class="container-fluid">
		<!-- Section One  Begin-->
		<div class="row section-one" id="b">
			<div class="pic col-lg-6 col-md-6"></div>
			<div class="content col-lg-6 col-md-6">
				<div class="title">
					<span>Nhóm du lịch của VKU,</span> sẽ đưa bạn đắm chìm trong không
					gian hùng vĩ và những nét văn hóa độc đáo
				</div>
				<div class="description">
					<div class="icon-sc-one">
						<img src="./images/client/main-1-icon.png" alt="">
					</div>
					<div class="desc-one">
						<p>Chào mừng đến với trang web du lịch của chúng tôi! Chúng
							tôi cung cấp cho bạn những thông tin hữu ích và đầy đủ về các
							điểm đến du lịch hấp dẫn trên khắp thế giới. Tại đây, bạn có thể
							tìm thấy những bài viết hướng dẫn du lịch, đánh giá của khách
							hàng, các gợi ý về lịch trình và những trải nghiệm độc đáo.</p>
						<p>Chúng tôi hy vọng rằng bạn sẽ tìm được thông tin hữu ích
							cho chuyến đi của mình và có một kì nghỉ tuyệt vời!</p>
					</div>
				</div>
			</div>
		</div>
		<!-- End Section One -->

		<!-- Section Two  Begin-->
		<div class="section-two">
			<div class="top">
				<h3 class="title">
					Khám phá điểm đến<br> hấp dẫn
				</h3>
				<!-- <a href="<?php echo BASE_URL ?>/category_tour/tatca" class="tt-slider"></a> -->
			</div>
			<div class="owl-carousel owl-theme owl-carousel-io">
				<c:forEach var="c" items="${catesTour }">
					<div class="cards">
						<a
							href="<?php echo BASE_URL ?>/category_tour/category/<?php echo $tour_home['id_category_tour'] ?>">
							<img src="/static/uploads/product/${c.image_category_tour}"
							alt="">
						</a>
						<div class="card-content">
							<h3
								href="<?php echo BASE_URL ?>/category_tour/category/<?php echo $tour_home['id_category_tour'] ?>"
								class="location">${c.title_category_tour}</h3>
							<div class="content">Nhiều trải nghiệm thú vị</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
		<!-- End Section Two -->

		<!-- Section Three  Begin-->
		<div class="section-three">
			<div class="top">
				<!-- <h3 class="title" id="a">
                    
                </h3> -->
				<div
					class="section-title text-center position-relative pb-3 mb-5 mx-auto"
					style="max-width: 600px;">
					<!-- <h5 class="fw-bold text-primary text-uppercase">Chuyến đi</h5> -->
					<h1 class="mb-0">Tour HOT</h1>
				</div>

				<a href="/category-tour/category/${category.id_category_tour}"
					class="tt-slider">Xem thêm</a>



			</div>
			<div>
				<div class="owl-carousel owl-theme owl-carousel-io">
					<c:forEach var="t" items="${listTour}">
						<c:if test="${t.tour_hot == 1}">
							<div class="cards ">
								<div class="card-main">
									<div class="img">
										<a
											href="/tour/chitiettour/${t.id_tour}">
											<img src="/static/uploads/product/${t.image_tour }"
											style="height: 300px;" width="100%">

										</a>
										<div class="star">
											<ion-icon name="star"></ion-icon>
											<span>5.0</span>
										</div>
										<div class="svg-main" style="width: 80px;">

											<img src="https://binhthuanford.vn/Design/hot1.gif">
										</div>
									</div>
									<div class="card-content">
										<div class="card-top">
											<div class="location">
												<ion-icon name="location-outline"></ion-icon>
												${t.place_tour }
											</div>
											<a
												href="/tour/chitiettour/${tour.id_tour}">
												<h3 class="content">${t.title_tour }</h3>
											</a>
										</div>
										<div class="footer-inf">
											<div class="date">
												<ion-icon name="calendar-clear-outline"></ion-icon>
												<span id="durationTour">${t.time}</span>
											</div>
											<div class="col-sm-6 price text-right ">
												từ <span id="priceTour" class="text-danger"
													style="font-weight: bold;"> ${t.price_tour} </span>

											</div>
										</div>
									</div>
								</div>
							</div>
						</c:if>

					</c:forEach>
				</div>

			</div>
		</div>
<div class="section-three">
    <c:forEach var="category" items="${catesTour}">
        <div class="top">
            <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;margin-top:170px">
                <h5 class="fw-bold text-primary text-uppercase">Chuyến đi</h5>
                <h1 class="mb-0">${category.title_category_tour}</h1>
            </div>

            <a href="/category-tour/category/${category.id_category_tour}" class="tt-slider">Xem thêm</a>
        </div>

        <div>
            <div class="owl-carousel owl-theme owl-carousel-io">
                <c:forEach var="tour" items="${category.tours}">
                    <div class="cards">
                        <div class="card-main">
                            <div class="img">
                                <a href="/tour/chitiettour/${tour.id_tour}">
                                    <img src="/static/uploads/product/${tour.image_tour}" style="height: 300px;" alt="" width="100%">
                                </a>
                                <div class="star">
                                    <ion-icon name="star"></ion-icon>
                                    <span>4.8</span>
                                </div>
                            </div>
                            <div class="card-content">
                                <div class="card-top">
                                    <div class="location">
                                    <div class="d-flex justify-content-between">
                                     <div><ion-icon name="location-outline" style="padding-right: 0%"></ion-icon>
                                        ${tour.place_tour}</div>
                                     <div data-id="${tour.id_tour}">
	                                     <button  class="btn btn-danger btn-open-dialogMail" data-bs-toggle="modal" data-bs-target="#myModalMail">
										   <i class="fa fa-envelope" aria-hidden="true" ></i>
										  </button>
                                      
                                      </div>
                                    </div>
                                        
                                    </div>
                                    
                                    <a href="/tour/chitiettour/${tour.id_tour}"s>
                                        <h3 class="content">${tour.title_tour}</h3>
                                    </a>
                                  
                                </div>
                                <div class="footer-inf">
                                    <div class="date">
                                        <ion-icon name="calendar-clear-outline"></ion-icon>
                                        <span id="durationTour">${tour.time}</span>
                                    </div>
                                    <div class="col-sm-6 price text-right">
                                        từ <span id="priceTour" class="text-danger" style="font-weight: bold;"> ${tour.price_tour}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </c:forEach>
</div>
		<!-- End Section Three -->



		<!-- Section Four  Begin-->
		<div class="section-four">
			<div class="top">
				<h3 class="title">
					Trải nghiệm truyền thống <br> và nét đẹp văn hóa Việt Nam
				</h3>
				<a href="<?php echo BASE_URL ?>/category_tour/tatca"
					class="tt-slider">View all</a>
			</div>
			<div class="owl-carousel owl-theme owl-carousel-if">
				<c:forEach var="t" items="${listTour}">
					<div class="cards">
						<div class="card-main">
							<div class="img">
								<a href="tour Hue1.html"> <img
									src="/static/uploads/product/${t.image_tour }"
									style="height: 300px;" alt="" width="100%">

								</a>
								<div class="star">
									<ion-icon name="star"></ion-icon>
									<span>4.8</span>
								</div>
								<div class="svg-main">
									<img src="/static/images/client/svg-main-2.svg">
								</div>
							</div>
							<div class="card-content">
								<div class="card-top">
									<div class="location">
										<ion-icon name="location-outline"></ion-icon>
										${t.place_tour}
									</div>
									<a href="tour Hue1.html">
										<h3 class="content">${t.title_tour}</h3>
									</a>
								</div>
								<div class="footer-inf">
									<div class="date">
										<ion-icon name="calendar-clear-outline"></ion-icon>
										<span id="durationTour">3 ngày - 2 đêm</span>
									</div>
									<div class="col-sm-6 price text-right">
										từ <span id="priceTour" class="text-danger"
											style="font-weight: bold;"> </span>

									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- End Section Four -->

		<!-- Section Five  Begin-->
		<div class="section-five">
			<div class="title col-lg-7 col-md-7">
				Hãy để email lại cho chúng tôi, <br> để được nhận <span>ưu
					đãi hấp dẫn</span>
			</div>
			<form class="form-btn col-lg-5 col-md-5"
				action="<?php echo BASE_URL ?>/index/insert_contact_email"
				method="POST">
				<ion-icon name="mail-outline"></ion-icon>
				<div class="ip-form-scfive">
					<input type="email" name="email" id=""
						placeholder="example@gmail.com"> <input type="submit"
						value="Gửi">
				</div>
			</form>
		</div>
		<!-- End Section Five -->
	</div>
</main>
<!-- End Main -->
<jsp:include page="dialog.jsp"/>
