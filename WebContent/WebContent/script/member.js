function loginCheck(){
	if(document.frm.email.value.length==0){
		alert("아이디를 써주세요");
		frm.email.focus();
		return false;
		
	}if(document.frm.pwd.value==""){
		alert("암호는 반드시 입력해야 합니다");
		frm.pwd.focus();
		return false;
	}
	return true;
}

function idCheck(){
	if(document.frm.email.value==""){
		alert('아이디를 입력해주세요');
		document.frm.email.focus();
		return;
	}
	var url="idCheck.do?email=" +document.frm.email.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function idok(){
	opener.frm.reid.value= "${email}";
	self.close();
}

function joinCheck(){
	if(document.frm.name.value.length==0){
		alert("이름을 써주세요.");
		frm.name.focus();
		return false;
}
	if(document.frm.email.value.length==0){
		alert("이메일를 써주세요");
		frm.email.focus();
		return false;
	}
	if(document.frm.email.value.length<4){
		alert("이메일은 4글자이상이어야 합니다.");
		frm.email.focus();
		return false;
	}
	if(document.frm.pwd.value==""){
		alert("암호는 반드시 입력해야 합니다");
		frm.pwd.focus();
		return false;
	}
	if(document.frm.pwd.value!=document.frm.pwd_check.value){
		alert("암호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}
	if(document.frm.reemail.value.length==0){
		alert("중복 체크를 하지 않았습니다.");
		frm.reemail.focus();
		return false;
	}
	return true;
}