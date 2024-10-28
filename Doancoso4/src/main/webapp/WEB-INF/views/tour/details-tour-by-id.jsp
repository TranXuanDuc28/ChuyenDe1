<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService'] }"/>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!-- Main Begin -->
<main class="mains-detail pt-5">
    <div class="section">
        <div class="container">
            <div class="row">
              <c:forEach var="dt" items="${detailsTourById}">
              	<c:forEach var="dtour" items="${dt.detailstour}">
                            <div class="col-lg-8 col-md-8 content-detail">
                                <div class="title-detail">
                                    <h1 class="ct-detail-one">
                                        ${dt.title_tour }
                                    </h1>
                                    <h5 class="ct-detail-two"><ion-icon name="location-outline"></ion-icon> ${dt.place_tour }</h5>
                                    <div class="star">
                                        <span class="star-one"><ion-icon name="star"></ion-icon>4.9</span>
                                        <span class="star-two">128 reviews</span>
                                    </div>
                                </div>
                                <div class="slider-detail">
                                    <div id="custCarousel" class="carousel slide" data-ride="carousel" align="center">
                                        <!-- slides -->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active"> <img src="/static/uploads/product/${dt.image_tour1 }" alt="Hills"> </div>
                                            <div class="carousel-item"> <img src="/static/uploads/product/${dt.image_tour2 }" alt="Hills"> </div>
                                            <div class="carousel-item"> <img src="/static/uploads/product/${dt.image_tour3 }" alt="Hills"> </div>
                                            <div class="carousel-item"> <img src="/static/uploads/product/${dt.image_tour4 }" alt="Hills"> </div>
                                        </div> <!-- Left right --> <a class="carousel-control-prev" href="#custCarousel" data-slide="prev"> <span class="carousel-control-prev-icon"></span> </a> <a class="carousel-control-next" href="#custCarousel" data-slide="next"> <span class="carousel-control-next-icon"></span> </a> <!-- Thumbnails -->
                                        <ol class="carousel-indicators list-inline">
                                            <li class="list-inline-item active"> <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#custCarousel"> <img src="/static/uploads/product/${dt.image_tour1 }" class="img-fluid"> </a> </li>
                                            <li class="list-inline-item"> <a id="carousel-selector-1" data-slide-to="1" data-target="#custCarousel"> <img src="/static/uploads/product/${dt.image_tour2 }" class="img-fluid"> </a> </li>
                                            <li class="list-inline-item"> <a id="carousel-selector-2" data-slide-to="2" data-target="#custCarousel"> <img src="/static/uploads/product/${dt.image_tour3 }" style="height: 300px;" class="img-fluid"> </a> </li>
                                            <li class="list-inline-item"> <a id="carousel-selector-2" data-slide-to="3" data-target="#custCarousel"> <img src="/static/uploads/product/${dt.image_tour1 }" style="height: 200px;" class="img-fluid"> </a> </li>
                                        </ol>
                                    </div>
                                </div>
                                <div class="tab-wrapper">
                                    <ul class="row tab">
                                        <li class="col-4 active">
                                            <a href="#tab-main-info">Mô tả</a>
                                        </li>
                                        <li class="col-4">
                                            <a href="#tab-image">Thông tin thêm</a>
                                        </li>
                                        <li class="col-4">
                                            <a href="#tab-seo">Đánh giá(54)</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-item tab-item-one" id="tab-main-info">

                                            <div class="included">
                                                <h3>Tour du lịch Phá Tam Giang
                                                    <span style="color:red;">TRỌN GÓI CHỈ ${dt.price_tour }/ người</span> Chi phí bao gồm:
                                                </h3>
                                                <div class="rule">
                                                    <ion-icon name="checkmark-outline"></ion-icon>
                                                    <h5>${dtour.chiphibaogom }</h5>
                                                </div>


                                            </div>
                                            <div class="departure">

                                                <h3>Điểm khởi hành</h3>
                                                ${dtour.diemkhoihanh }
                                        
                                            </div>
                                            <div class="departure">

                                                <h3>Giờ khởi hành</h3>
                                                ${dtour.giokhoihanh }
                                               
                                            </div>
                                            <div class="tour-it">
                                                <h3>Lịch trình tour</h3>
                                                <div class="accordion active">
                                                    <div class="accordion-header">
                                                        Xem chi tiết tại đây!
                                                        <ion-icon name="chevron-down-outline" id="icon-up"></ion-icon>

                                                    </div>
                                                    <div class="accordion-body">
                                                        <div class="rule">
                                                            <ion-icon name="location-outline"></ion-icon>
                                                            <div class="des-accor">
                                                         
                                                                <h5>   ${dtour.lichtrinh }</h5>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>


                                            </div>
                                            <h2 class="related-p">Maps</h2>
                                            <div class="maps">
                                                <iframe src="${dtour.google_map }" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                                            </div>

                                            <div class="videos" style="margin-top: 100px;">
                                                <iframe width="100%" height="100%" src="${dtour.video }"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

                                            </div>
                                        </div>
                                        <div class="tab-item tab-item-two" id="tab-image">
                                            <div class="rules">
                                                <div class="rule">
                                                    <ion-icon name="ellipse"></ion-icon>
                                                    <h5>Hiện tại chưa có thông tin gì thêm! </h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-item tab-item-three" id="tab-seo">
                                            <div class="review-count">
                                                <div class="based col-lg-4">
                                                    <h2 class="ff">4/5</h2>
                                                    <img src="./images/client/based.png" alt="">
                                                    <span class="base">Dựa trên</span>
                                                    <span class="totalreview">150 lượt<br> đánh giá</span>
                                                </div>
                                                <div class="reviews col-lg-8">
                                                    <div class="review">
                                                        <div class="star-count"><span>5</span><ion-icon name="star"></ion-icon></div>
                                                        <div class="rectas">
                                                            <div class="recta">
                                                                <div class="rta"></div>
                                                            </div>
                                                        </div>
                                                        <div class="re-count">42 lượt</div>
                                                    </div>
                                                    <div class="review">
                                                        <div class="star-count"><span>4</span> <ion-icon name="star"></ion-icon></div>
                                                        <div class="rectas">
                                                            <div class="recta">
                                                                <div class="rta"></div>
                                                            </div>
                                                        </div>
                                                        <div class="re-count">21 lượt</div>
                                                    </div>
                                                    <div class="review">
                                                        <div class="star-count"><span>3</span><ion-icon name="star"></ion-icon></div>
                                                        <div class="rectas">
                                                            <div class="recta">
                                                                <div class="rta"></div>
                                                            </div>
                                                        </div>
                                                        <div class="re-count">36 lượt</div>
                                                    </div>
                                                    <div class="review">
                                                        <div class="star-count"><span>2</span><ion-icon name="star"></ion-icon></div>
                                                        <div class="rectas">
                                                            <div class="recta">
                                                                <div class="rta"></div>
                                                            </div>
                                                        </div>
                                                        <div class="re-count">0 lượt</div>
                                                    </div>
                                                    <div class="review">
                                                        <div class="star-count"><span>1</span><ion-icon name="star"></ion-icon></div>
                                                        <div class="rectas">
                                                            <div class="recta">
                                                                <div class="rta"></div>
                                                            </div>
                                                        </div>
                                                        <div class="re-count">0 lượt</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="upload-review">
                                                <div class="col-1 user">
                                                    <ion-icon name="person-circle-outline"></ion-icon>
                                                </div>
                                                <div class="col-11 cmt-upload">

                                                    <div class="pb-5 px-5">
                                                        <?php
                                                        // echo $cate['id_tour'];
                                                        if(Session::get("customer")==true ){
                                                            ?>
                                                            <form action="<?php echo BASE_URL ?>/category_tour/insert_comment/<?php echo $cate['id_tour']?>" method="POST" enctype="multipart/form-data">
                                                            <div>
                                                            <label for="">Tên khách hàng: <?php echo Session::get('customer_name') ?> </label>
                                                            <input type="hidden" class="form-control" value="<?php echo Session::get('customer_name') ?>">

                                                        </div>
                                                        <div>
                                                            <label for="">Đánh giá </label>
                                                            <input type="number" class="form-control" name="danhgia" placeholder="Đánh giá sao...">


                                                        </div>
                                                        <div>
                                                            <label for="">Bình luận</label>

                                                            <textarea name="binhluan" id="" cols="30" rows="5" class="form-control"></textarea>
                                                        </div>
                                                        <div>
                                                            <label for="">Hình ảnh kèm theo</label>
                                                            <input type="file" class="form-control" name="hinhanh">
                                                        </div>
                                                        <input type="submit" value="Gửi" class="btn btn-danger mt-3">
                                                        </form>
                                                        <?php
                                                        }else{
                                                            ?>
                                                            <a href="<?php echo BASE_URL?>/khachhang/dangnhap">Vui lòng đăng nhập để đánh giá!</a>
                                                            <?php
                                                        }
                                                        ?>
                                                       
                                                    </div>

                                                    <!-- <div class="star-upload">
                                                        <div class="star" id="rating-star">
                                                            <ion-icon name="star"></ion-icon>
                                                            <ion-icon name="star"></ion-icon>
                                                            <ion-icon name="star"></ion-icon>
                                                            <ion-icon name="star"></ion-icon>
                                                            <ion-icon name="star"></ion-icon>
                                                        </div>
                                                        <button class="btn btn-primary">Upload Review</button>
                                                    </div> -->
                                                </div>

                                            </div>
                                            <div class="show-review bg-light">
                                                <div class="section-title text-center position-relative mb-5 pb-3  mx-auto" style="max-width: 600px;">
                                                    <!-- <h5 class="fw-bold text-primary text-uppercase">Testimonial</h5> -->
                                                    <h1 class=" mt-5">Đánh giá của khách hàng</h1>
                                                </div>
                                                <?php
                                                foreach ($comment as $key => $com) {
                                                    if($com['id_tour']==$cate['id_tour']){
                                                ?>
                                                    <div class="user-title">
                                                        <div class="user-tt">
                                                            <div class="user-img col-2">
                                                                <img src="<?php echo BASE_URL?>/public/images/userdanhgia.jpg" alt="">
                                                            </div>
                                                            <div class="star-tt col-10">
                                                                <img src="./images/client/star-5.png" alt="">
                                                                <p><?php echo $com['tenkhachhang'] ?></p>
                                                                <span>08/12/2023 </span>
                                                                <span> <?php
                                                                        if ($com['danhgia'] == 1) {
                                                                            echo ' <i style="font-size:20px;background:yellow" class="fa-solid fa-star"></i>';
                                                                        } else if ($com['danhgia'] == 2) {
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                        } else if ($com['danhgia'] == 3) {
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                        } else if ($com['danhgia'] == 4) {
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                        } else if ($com['danhgia'] == 5) {
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                            echo ' <i style="font-size:20px" class="fa-solid fa-star text-warning"></i>';
                                                                        }
                                                                        ?></span>
                                                            </div>
                                                        </div>
                                                        <div class="user-description">
                                                            <div class="pt-4 pb-5 px-5 row">
                                                                <div class="col-md-7">
                                                                    <?php echo $com['binhluan'] ?>
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <img class="img-fluid rounded" src="<?php echo BASE_URL ?>/public/uploads/post/<?php echo $com['hinhanh'] ?>" style="width: 300px; height: 220px;">
                                                                </div>



                                                            </div>
                                                        </div>
                                                    </div>
                                                <?php
                                                }
                                                }
                                                ?>
                                            </div>
                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-4 form-detail">
                               <%--  <form action="<?php echo BASE_URL ?>/giohang/themgiohang" method="POST">
                                    <input type="hidden" value="<?php echo $cate['id_tour'] ?>" name="tour_id">
                                    <input type="hidden" value="<?php echo $cate['title_tour'] ?>" name="tour_title">
                                    <input type="hidden" value="<?php echo $cate['price_tour'] ?>" name="tour_price">
                                    <input type="hidden" value="<?php echo $cate['quantity_guest_tour'] ?>" name="tour_quantity_guest">
                                    <input type="hidden" value="<?php echo $cate['place_tour'] ?>" name="tour_place">
                                    <input type="hidden" value="<?php echo $details['khoangthoigian'] ?>" name="tour_khoangthoigian">
                                    <input type="hidden" value="<?php echo $details['calendar'] ?>" name="tour_calendar"> --%>
                                    <p class="price-tt">Chỉ từ <span id="price-tour-people"><?php echo number_format($cate['price_tour'], 0, ',', '.') . 'VND' ?></span></p>
                                    <div class="row">
                                        <div class="col-lg-6 duration">
                                            <h3>
                                                Khoảng thời gian:</h3>
                                            <p id="durationDetail">${dtour.khoangthoigian }</p>
                                        </div>
                                        <div class="col-lg-6 duration">
                                            <h3>Loại tour:</h3>
                                            <p>Sun - Beach</p>
                                        </div>
                                    </div>
                                    <div class="form-group ip-form ">
                                        <ion-icon name="calendar-number-outline"></ion-icon>

                                        <div class="form-control datepickerDetail pt-3">${dtour.calendar }</div>

                                    </div>
                                    <div class="form-group ip-form">

                                        <!-- <input type="number" class="form-control countPeople" id="countPeople" placeholder="2 Adults - 1 Children" min="1" max="30" required /> -->
                                        <?php if ($cate['quantity_guest_tour'] > 0) {
                                            echo ' Số vé còn: ' . $cate['quantity_guest_tour'];
                                        } else {
                                            echo ' Đã Hết vé!';
                                        }
                                        ?>
                                    </div>


                                    <div class="row" >
                                        <div  data-id="${dt.id_tour }">
                                          <button style="box-shadow:none" class="btn btn-warning btn-add-to-cart">Đặt tour</button>
                                            <?php if ($cate['quantity_guest_tour'] > 0) {
                                            if(Session::get("customer")==true){


                                            ?>
                                            

                                               

                                            <?php
                                          }else{
                                             ?>
										    <a href="<?php echo BASE_URL?>/khachhang/dangnhap" class="text-danger">Vui lòng đăng nhập!</a>
										    <?php
                                          }

                                            } else {
                                                echo '<script>alert("Hiện tại tour này đã hết vé! Bạn vui lòng đặt các tour khác!")</script>';
                                            }
                                            ?>


                                        </div>
                                    </div>
                                    <div class="row mt-5" >
	                                    	<div class="card mb-4">
										          <div class="card-header py-3">
										            <h5 class="mb-0">Tour</h5>
										          </div>
										          <div class="card-body">
										            <ul class="list-group list-group-flush">
										              <li
										                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
										                Tổng tiền tour
										                <span id = "cart-amt"><f:formatNumber value="${cart.amount }" pattern="#,###.00"/>VND</span>
										              </li>
										              <li class="list-group-item d-flex justify-content-between align-items-center px-0">
										                Số lượng tour
										                <span id = "cart-cnt">${cart.count }</span>
										              </li>
										              <li
										                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
										                <div>
										                  <strong>Total amount</strong>
										                  <strong>
										                    <p class="mb-0">(including VAT)</p>
										                  </strong>
										                </div>
										                <span><strong>$53.98</strong></span>
										              </li>
										            </ul>
										
										            <button   data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-lg btn-block">
										              <a href="/cart/view">Xem tour đã thêm!</a>
										            </button>
										          </div>
									        </div>
                                        
                                    </div>
                               <!--  </form> -->
                            </div>
                <?php
                        }
                    }
                }
                ?>
              	</c:forEach>
              	
              </c:forEach>
                
            </div>


            <!-- Testimonial End -->
            <h2 class="related-t">Related Tour</h2>
            <div class="row related-tour">
             <c:forEach var="category" items="${relatedtour}">
             <c:forEach var="rt" items="${category.tours}">
                <div class="cards">
                        <div class="card-main">
                            <div class="img">
                                <a href="/tour/chitiettour/${rt.id_tour}">
                                    <img src="/static/uploads/product/${rt.image_tour }" style="height: 300px;" width="100%">
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
                                        ${rt.place_tour}
                                    </div>
                                    <a href="<?php echo BASE_URL?>/category_tour/chitiettour/<?php echo $related['id_tour']?>">
                                        <div class="content">
                                             ${rt.title_tour}
                                        </div>
                                    </a>
                                </div>
                                <div class="footer-inf">
                                    <div class="date">
                                        <ion-icon name="calendar-clear-outline"></ion-icon>
                                        1 ngày
                                    </div>
                                    <div class="price text-right">
                                        từ <span id="priceTour">${rt.price_tour}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
             </c:forEach>
                
            </div>

        </div>
</main>
<!-- End Main -->