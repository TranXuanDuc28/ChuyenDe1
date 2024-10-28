<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- The Modal -->
<div class="modal" id="myModalMail">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Giới thiệu tour cho bạn bè!</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      <div class="form-group">
        	<label>Email người gửi:</label>
        	<input id="sender" class="form-control">
        </div>
        <div class="form-group">
        	<label>Email người nhận:</label>
        	<input id="email" class="form-control">
        </div>
        <div class="form-group">
        	<label>Mô tả:</label>
        	<textarea id="comments" class="form-control" rows="3"></textarea>
        </div>
        <input type="hidden" id="id">
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
       <button type="button" class="btn btn-Success btn-send-to-friend" >Gửi</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Hủy</button>
      </div>

    </div>
  </div>
</div>