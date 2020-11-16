

/*
 $('.menu_btn').click(function(){
            
            $(this).siblings().stop(true, true).slideToggle();
            $(this.icon).toggleClass("rotate");
        })
 */
 
 $(".ajaxFaqList").click(function() {
 			
 		$(this).next("dd").stop(true, true).slideToggle();
 		$(this).eq(0).toggleClass("on");
 	
 	
 })
