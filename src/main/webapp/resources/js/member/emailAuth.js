		$(document).ready(function(){
			//숫자만 입력 가능하도록
			$("input[name=authKey]").keyup(function(e){
				var val = $(this).val();
				$(this).val(val.replace(/[^0-9]/gi,''));
			});
			$("input[name=authKey]").keydown(function(e){
				var key = e.keyCode;
				var val = $(this).val();
				
				if(key == 13) {
					if(val == '') {
						alert('인증번호를 입력해주세요.');
						$('form').submit(function(e){
							e.preventDefault();
						});
					} else if(val.length < 6) {
						alert('6자리의 인증번호를 입력해주세요.');
						$('form').submit(function(e){
							e.preventDefault();
						});
					} else {
						$('form').submit(function(e){
							$(this).unbind('submit').submit();
							location.href="./memberJoin2";
						});
					}
				}
			});
		});
		
		//인증번호 입력제한
		function numberMaxLength(e) {
			if(e.value.length > e.maxLength) {
	            e.value = e.value.slice(0, e.maxLength);
	            alert('인증번호 6자리를 입력해주세요.');
	        } 
		}	