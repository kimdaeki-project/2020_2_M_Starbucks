$(document).ready(function() {

	
	/* Join 버튼 클릭시 */
	var idCheck = false;
	var pwCheck = false;
	var emptyCheckResult = true;
	
	$("#join").click(function() {
		console.log('join click');
		//emptyCheck();
		pwCheck();
	});
	
	
	/* Join 버튼 클릭시 end */
	
	initBirth();
	getInfoPop();
	setEvents();
	
	/* 생년월일 select 내용 */
	var birth = $("#birth_year[name='birth_year'").val() + "-" + $("#birth_month[name='birth_month'").val() + "-" + $("#birth_day[name='birth_day'").val();
	$("#birth").val(birth);
	
	function initBirth() {
		// 선택 된 년,월에 따라 일 수 변경
		$("[name='birth_year'], [name='birth_month']").on("change", function () {
			var nYear  = $("[name='birth_year']").val();
			var nMonth = $("[name='birth_month']").val();
			
			setDays(nYear, nMonth);
			
			$("[name='birth_day']").val("").trigger("change");
		});
		
		var dNow = new Date();
			dNow.setFullYear(dNow.getFullYear() - 14);
		var nNowYear  = dNow.getFullYear();
		var nNowMonth = dNow.getMonth() + 1;
		
		setYears(nNowYear);
		setMonths();
		setDays(nNowYear, nNowMonth);
		
		$("[name='birth_year']").val("").trigger("change");
		$("[name='birth_month']").val("").trigger("change");
		$("[name='birth_day']").val("").trigger("change");		
	}
	
	function setYears(_nLastYear) {
		$("[name='birth_year']").html('<option value="">선택</option>');
		
		for (var i = _nLastYear; i >= _nLastYear - 100; i--) {
			var option = $('<option value="' + i + '">' + i + '년</option>');
	
			$("[name='birth_year']").append( option );
		}
	}
	
	function setMonths() {
		$("[name='birth_month']").html('<option value="">선택</option>');
		
		for (var i = 1; i <= 12; i++) {
			var nSaveVal = addZero(i, 2);
			var option  = $('<option value="' + nSaveVal + '">' + i + '월</option>');
			
			$("[name='birth_month']").append( option );
		}
	}
	
	function setDays(_nYear, _nMonth) {
		$("[name='birth_day']").html('<option value="">선택</option>');
		
		var d = new Date(_nYear, _nMonth, 1);
		d.setDate(d.getDate() - 1);
	
		for (var i = 1; i <= d.getDate(); i++) {
			var nSaveVal = addZero(i, 2);
			var option  = $('<option value="' + nSaveVal + '">' + i + '일</option>');
			
			$("[name='birth_day']").append( option );
		}
	}
	
	function addZero(number, length) {
		if (length === undefined) {
			length = 2;
		}	
		var str = '' + number;
		while (str.length < length) {str = '0' + str;}
		return str;
	}
	/* 생년월일 select 내용 end */
	
	
});

	/* (!) 팝업 */
	function getInfoPop() {
		$(".info_btn_inner").css("display","none");
		$('.form_input_box .icon_mark_point').click(function(){
			$('.info_btn_inner').hide();
			$(this).parent().nextAll('.info_btn_inner').fadeIn();
		});
					
		$('.btn_close, .btn_close02').click(function(){
			$('.info_btn_inner').fadeOut();
		});
	}
	/* (!) 팝업 end */
	
	

	/* 빈칸 이벤트 처리 */
	function setEvents() {
		/*if (location.href.indexOf("/find_") > -1) {
			$(document).on("blur, keydown", ".input_warn", function () {
				$(this).removeClass("input_warn");
				$("#" + $(this).data("warn_id")).text("");
			});
		}*/
		/*$("input:text, input:password, input#phone, input#email").on("focus", function () {
			
			if($(this).hasClass("input_warn") === false) {
				$(this).addClass("green");
			}
		}).on("keydown", function () {
			$(this).nextAll('.limit_txt').hide();
			$(this).nextAll('.input_warn_text').hide();
			$(this).attr({ "aria-describedby": "", "aria-invalid": "false" });
		}).on("blur", function () {
			$(this).removeClass("green");
		});*/
				
	}
	/* 빈칸 이벤트 처리 */
	
	/* 빈칸확인 */
	function emptyCheck() {
		emptyCheckResult=true;
		$(".empty_chk").each(function() {
			var data = $(this).val();
			console.log(data);
			if(data == '') {
				console.log($(this).html());
				emptyCheckResult = false;
				$(this).next().html("필수입력사항입니다.");
				$(this).parent().addClass(".input_warn");
				$("").css("display","block");
				$(".limit_txt").addClass(".input_warn_text");
				
			}
		});
	}
	/* 빈칸확인 end */
	
	
	/* pw check */
	function pwCheck() {
		
	}