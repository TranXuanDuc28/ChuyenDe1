<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

    <!-- Header Begin -->
    <header class="header-index">
        <div class="container">
            <div class="header-section">
                <div class="row header-top">
                    <div id="icon_title" class="col-lg-6 col-md-6 ngaodu-menu">
                        <a href="index.html">
                            <img src="/static/images/client/ngaodu.svg" alt="">
                        </a>
                    </div>
                    <div class="col-lg-5 col-md-5 menu">
                        <div class="nav-item">
                            <div class="container">
                                <div id="toggle">
                                    <div style="display: flex;justify-content: space-between;">
                                        <div style="margin-top: 10px;"> <i class="fas fa-bars"></i></div>
                                        <div>
                                            <a href="index.html">
                                                <img src="/static/images/client/ngaodu.svg" alt="">
                                            </a>
                                        </div>
                                    </div>

                                </div>
                                <nav class="nav-menu mobile-menu">
                                    <ul id="main-menu">
                                        <li class="active li-dis-noe"><a href="<?php echo BASE_URL ?>/index"><ion-icon name="home-outline"></ion-icon> Home</a></li>
                                        <li class="li-dis-noe"><a href="<?php echo BASE_URL ?>/index#b"><ion-icon name="information-circle-outline"></ion-icon> About</a></li>
                                        <li><a href="<?php echo BASE_URL ?>/category_tour/tatca/"><ion-icon name="paper-plane-outline"></ion-icon> Tours</a>
                                            <ul>
                                                <c:forEach var="c" items="${catesTour }">
                                                    <li>
                                                        <a href="<?php echo BASE_URL ?>/category_tour/category/<?php echo $cate['id_category_tour'] ?>"><ion-icon name="paper-plane-outline"></ion-icon> ${c.title_category_tour}</a>
                                                    </li>
                                                </c:forEach> 
                            
                                            </ul>
                                        </li>
                                        <li class="li-dis-noe"><a style="width: 94px;" href="<?php echo BASE_URL ?>/category_post/tatca"><ion-icon name="bed-outline"></ion-icon>Tin tức</a></li>

                                        <li class="li-dis-noe"><a href="<?php echo BASE_URL ?>/index/lienhe"><ion-icon name="call-outline"></ion-icon> Contact</a></li>


                                        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.0/dist/sweetalert2.all.min.js"></script>
                                        <?php
                                        if (!empty($_GET['msg1'])) {
                                            $msg1 = unserialize(urldecode($_GET['msg1']));

                                            foreach ($msg1 as $key => $value) {
                                        ?>
                                                <script>
                                                    Swal.fire({


                                                        icon: "error",
                                                        title: '<?php echo $value; ?>',
                                                        showConfirmButton: false,
                                                        timer: 1500

                                                    });
                                                </script>
                                        <?php
                                            }
                                        }
                                        ?>
                                        <?php
                                        if (!empty($_GET['msg'])) {
                                            $msg = unserialize(urldecode($_GET['msg']));

                                            foreach ($msg as $key => $value) {
                                        ?>
                                                <script>
                                                    Swal.fire({


                                                        icon: "success",
                                                        title: '<?php echo $value; ?>',
                                                        showConfirmButton: false,
                                                        timer: 1500
                                                    });
                                                </script>
                                        <?php
                                            }
                                        }
                                        ?>

                                          <li><a href="<?php echo BASE_URL ?>/khachhang/dangnhap"><ion-icon name="log-in-outline"></ion-icon> Login</a></li>

                                    </ul>




                                </nav>
                                <div id="mobile-menu-wrap" class="mobile-menu-wrap">☰</a></div>
                                <div id="remove-menu" class="remove-menu">X</div>


                            </div>
                            <script>
                                $(document).ready(function() {
                                    $('#toggle').click(function() {
                                        $('nav').slideToggle();
                                    });
                                })
                            </script>
                        </div>
                    </div>

                </div>
                <div class="row title-form">
                    <div class="col-xs-6 col-md-7 col-lg-7 header-title">
                        <h4 class="title-one">
                            Chào mừng đến với du lịch Việt Nam
                        </h4>
                        <h1 class="col-xs-6 col-md-7 col-lg-12 title-two">
                            Nơi hoàn hảo <br> cho câu chuyện của bạn
                        </h1>
                    </div>
                    <div class="col-md-5 col-lg-5 header-form">
                        <form action="/tour/list-by-keywords" method="post" class="form-search">
                            <label for="">Khám phá Việt Nam</label>
                            <div class="form-group">


                                <ion-icon name="search-outline"></ion-icon>

                                <!-- <input type="text"  placeholder="Tour" required> -->
                                <input class="form-control" type="text" name="keywords" value="${param.keywords}" placeholder="Nhập tên để tìm!">


                            </div>





                            <div class="form-group">
                                <ion-icon name="location-outline"></ion-icon>
                                <input type="text" class="form-control" placeholder="Ngũ Hành Sơn, Đà Nẵng">
                            </div>
                            <div class="form-group">
                                <ion-icon name="flag-outline"></ion-icon>
                                <select id="select2-form-index" class="js-example-placeholder-single js-states" name="state">
                                    <option value=""></option>
                                    <option value="1">Huế</option>
                                    <option value="2">Đà Nẵng</option>
                                    <option value="3">Quảng Bình</option>
                                    <option value="4">Đà Lạt</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <ion-icon name="calendar-clear-outline"></ion-icon>
                                <input type="text" id="datepickerheader" class="form-control" placeholder="Thời gian">
                            </div>
                            <!-- <a href="#a" class="form-control " style="background: #FF7B42;height:50px;font-weight: bold;color: white;text-align: center;"><ion-icon name="search-outline"></ion-icon> &nbsp; Tìm Kiếm</a> -->
                            <input type="submit" name="timkiem" class="btn btn-primary mt-2" value="Tìm kiếm">
                        </form>
                    </div>
                </div>
                <div class="header-footer ">
                    <div class="header-ft">
                        <div class="img">
                            <img src="./images/client/feautured.svg" alt=""> Đặc sắc
                        </div>
                        <ul>
                            <li><span>30+</span> Tours</li>
                            <li><span>50+</span> Điểm đến</li>
                            <li><span>25+</span> Loại tour</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- End Header -->