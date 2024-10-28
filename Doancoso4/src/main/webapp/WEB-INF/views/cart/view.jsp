<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <c:set var="cart" value="${sessionScope['scopedTarget.cartService'] }"/>
<table class="table table-dark container mt-5 mb-5">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Tên tour</th>
      <th scope="col">Số lượng người</th>
      <th scope="col">Giá</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
   <c:forEach var="p" items="${sessionScope['scopedTarget.cartService'].items }">
	   <tr data-id="${p.id_tour}" data-price="${p.price_tour}">
	      <td>${p.id_tour}</td>
	      <td>${p.title_tour }</td>
	      <td><input type="number" value="${p.quantity_guest_tour}" min =1 ></td>
	      <td>${p.price_tour }</td>
	      <td><button class="form-control btn-cart-remove">Xóa</button></td>
	      <td> <h5  class="cart-amt">${p.price_tour*p.quantity_guest_tour} VND</h5></td>
	    </tr>
   </c:forEach>
  </tbody>
</table>

