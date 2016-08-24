function go_cart() {
	if (document.formm.quantity.value == "") { 
		alert("수량을입력하여주세요.");  
		document.formm.quantity.focus(); 
		} else { 
			document.formm.action = "SidServlet?command=cart_insert"
				document.formm.submit();
			} 
	}
function go_cart_delete() { 
	var count = 0; 
	for ( var i = 0; i < document.formm.cseq.length; i++) { 
		if (document.formm.cseq[i].checked == true) { 
			count++;  
			}  
		} 
	if (count == 0) {
   alert("삭제할항목을선택해주세요.");
  } else {   
	  document.formm.action = "SidServlet?command=cart_delete" 
		  document.formm.submit();
	  }
	}

function go_order_insert() { 
	document.formm.action = "SidServlet?command=order_insert" 
		document.formm.submit(); 
	
}
function go_order_delete() { 
	var count = 0; 
	for ( var i = 0; i < document.formm.oseq.length; i++) {   
		if (document.formm.oseq[i].checked == true) {
			count++; 
			} 
		}  
	if (count == 0) { 
		alert("삭제할항목을선택해주세요.");
  } else {  
	  document.formm.action = "SidServlet?command=order_delete" 
		  document.formm.submit(); 
	  } 
	}

function go_order() {
 document.formm.action = "SidServlet?command=mypage" 
	 document.formm.submit();
 }