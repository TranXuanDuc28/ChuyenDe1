<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Google Fonts -->
    <link href=/static/fonts/fonts-DM-Sans.css" rel="stylesheet">
    <!-- Css Styles -->
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/main/main.css">
    <link rel="stylesheet" href="/static/css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/static/css/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="/static/css/datepicker.css">
    <link rel="stylesheet" href="/static/lib">
    <link rel="stylesheet" href="/static/css/css_title/style.css">

    <!-- Select2 -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.0/dist/sweetalert2.min.css">




</head>

<body>
<tiles:insertAttribute name="header" />
<tiles:insertAttribute name="body" />
<tiles:insertAttribute name="footer" /> 
</body>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.0/dist/sweetalert2.all.min.js"></script>


<script src="/static/js/client/jquery-3.3.1.min.js"></script>
<script src="/static/js/client/bootstrap.min.js"></script>
<script src="/static/js/client/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src="/static/js/client/owl-carousel/owl.carousel.js" type="text/javascript"></script>
<script src="/static/js/client/main.js" type="text/javascript"></script>
<script src="/static/js/client/bootstrap-datepicker.js"></script>
<script src="/static/js/client/jquery.scrollUp.min.js"></script>
<script src="/static/js/tour/tour.js"></script>
<!-- IoIcons -->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<!-- Select2 -->
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script src="https://cdn.ckeditor.com/4.23.0-lts/standard/ckeditor.js"></script>
<script type="text/javascript">
    CKEDITOR.replace( 'editor' );
</script>
<script src="/static/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/static/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/static/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/static/assets/vendor/aos/aos.js"></script>
  <script src="/static/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/static/assets/js/main.js"></script>

</body>
</html>