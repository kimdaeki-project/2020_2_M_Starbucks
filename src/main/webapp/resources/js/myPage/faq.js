

/*
 $('.menu_btn').click(function(){
            
            $(this).siblings().stop(true, true).slideToggle();
            $(this.icon).toggleClass("rotate");
        })
 */
 
 $('.li2').click(function(e){
 	$(this).siblings().children().stop(true, true).slideToggle();
 $('.faq_wrap > dd').eq(0).show();
 })
