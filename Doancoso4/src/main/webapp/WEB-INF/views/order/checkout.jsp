<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<h2>Checkout</h2>
<h4>${message}</h4>
<form:form action="/order/checkout" modelAttribute="order" >
<div class="form-group">
<label>Customer</label>
<form:input path="customer.id" class="form-control"/>
</div>
<div class="form-group">
<label>Order Date</label>
<form:input path="orderDate" class="form-control"/>
</div>
<div class="form-group">
<label>Fullname</label>
<form:input path="fullname" class="form-control"/>
</div>
<div class="form-group">
<label>Total</label>
<form:input path="amount" class="form-control"/>
</div>
<div class="form-group">
<label>Notes</label>
<form:textarea path="description" row="3" class="form-control"/>
</div>
<div class="form-group">
<button class="btn btn-default">Purchase</button>
</div>
</form:form>