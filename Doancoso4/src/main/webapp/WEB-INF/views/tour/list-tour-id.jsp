<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Set" %>

<div class="section-three">
    <c:forEach var="category" items="${listTourById}">
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
                                <a href="<?php echo BASE_URL ?>/category_tour/chitiettour/${tour.id_tour}">
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
                                        <ion-icon name="location-outline"></ion-icon>
                                        ${tour.place_tour}
                                    </div>
                                    <a href="<?php echo BASE_URL ?>/category_tour/chitiettour/${tour.id_tour}">
                                        <h3 class="content">${tour.title_tour}</h3>
                                    </a>
                                </div>
                                <div class="footer-inf">
                                    <div class="date">
                                        <ion-icon name="calendar-clear-outline"></ion-icon>
                                        <span id="durationTour">${tour.time}</span>
                                    </div>
                                    <div class="col-sm-6 price text-right">
                                        từ <span id="priceTour" class="text-danger" style="font-weight: bold;"></span>
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