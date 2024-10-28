$(document).ready(function(){
	$(".btn-open-dialogMail").click(function(){
		var id = $(this).closest("div").attr("data-id");
		$("#myModalMail #id").val(id);
	});
	$(".btn-send-to-friend").click(function(){
		var form = {
			id: $("#myModalMail #id").val(),
			to: $("#myModalMail #email").val(),
			body: $("#myModalMail #comments").val(),
			from: $("#myModalMail #sender").val()
		}
		$.ajax({
			url:"/tour/send-to-friend",
			data: form,
			success: function(response){
				if(response){
					$("[data-bs-dismiss]").click();
					alert("Đã gửi thành công!")
				}else{
					alert("Lỗi gửi mail")
				}
			}
		})
			
	});
	$(".btn-add-to-cart").click(function(){
		var id = $(this).closest("div").attr("data-id");
			$.ajax({
				url:"/cart/add/"+id,
				success: function(response){
					if(response){
						$("#cart-cnt").html(response[0]);
						$("#cart-amt").html(response[1]);
						alert("Đã thêm tour thành công!")
					}else{
						alert("Lỗi!")
					}
				}
			})
				
		});
		$(".btn-cart-remove").click(function(){
			var id = $(this).closest("tr").attr("data-id");
				$.ajax({
					url:"/cart/remove/"+id,
					success: function(response){
						if(response){
							alert("Đã xóa thành công!")
						}else{
							alert("Lỗi!")
						}
					}
				});
				$(this).closest("tr").remove();
						
		});
		$("tr[data-id] input").on("input",function(){
			var id = $(this).closest("tr").attr("data-id");
			var price = $(this).closest("tr").attr("data-price");
			var quantity = $(this).val();
				$.ajax({
					url:`/cart/update/${id}/${quantity}`,
					success: function(response){
						if(response){
							alert("Thêm số lượng thành công!")
						}else{
							alert("Lỗi!")
						}
					}
			});
			var amt = quantity*price;
			$(this).closest("tr").find(".cart-amt").html(amt);				
		});
		
});