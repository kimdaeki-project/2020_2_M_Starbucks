
        $(function () {

            //populate our years select box
            for (i = new Date().getFullYear(); i > 1900; i--) {
                $('#years').append($('<option />').val(i).html(i));
            }
            //populate our months select box
            for (i = 1; i < 13; i++) {
                $('#months').append($('<option />').val(i).html(i));
            }
            //populate our Days select box
            updateNumberOfDays();

            //"listen" for change events
            $('#years, #months').change(function () {
                updateNumberOfDays();
            });

        });

        //function to update the days based on the current values of month and year
        function updateNumberOfDays() {
            $('#days').html('');
            month = $('#months').val();
            year = $('#years').val();
            days = daysInMonth(month, year);

            for (i = 1; i < days + 1; i++) {
                $('#days').append($('<option />').val(i).html(i));
            }
        }

        //helper function
        function daysInMonth(month, year) {
            return new Date(year, month, 0).getDate();
        }
  
  
 var emptyCheckResult = true;
  $("#userPhone").blur(function(){
  	emptyCheck();
  	
  	if(!emptyCheckResult){
  		$("#phoneCheck").html("필수입력 사항 입니다");
  		$("#phoneCheck").addClass("valCheck");
  	}
  	
  });
  
   $("#usermail").blur(function(){
  	emptyCheck();
  	
  	if(!emptyCheckResult){
  		$("#mailCheck").html("필수입력 사항 입니다");
  		$("#mailCheck").addClass("valCheck");
  	}
  });
  
  function emptyCheck() {
		emptyCheckResult = true; // 반복문을 위한 초기화
		$(".empty").each(function(){  //empty클래스명 하나꺼내서 function돌리고, 그 다음꺼 또 꺼내서 돌리는식..
		var data = $(this).val();
		if(data==''){
			emptyCheckResult = false;	
		}
		
		});
}
  