$(document).ready(function() {
	/* footer */
	var w_footer =
		'	<ul class="footer_awards_slider">' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="고용노동부 2016년 고용창출 100개 우수기업 4년 연속 표창" src="/sw4/resources/images/common/footer_award17_01.jpg">' + 
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="고용노동부 2016년 장애인고용촉진대회 장애인고용촉진 유공 포상" src="/sw4/resources/images/common/footer_award17_02.jpg">' + 
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="환경부 2016년 그린킹 캠페인 온실가스 저감 우수 모범 기업" src="/sw4/resources/images/common/footer_award17_03.jpg">' +
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="농림축산식품부 2016년 농식품 상생협력 활동 우수사례 기업" src="/sw4/resources/images/common/footer_award17_04.jpg">' +
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="2016년 대한민국 여성인재경영대상 우수사례 기업" src="/sw4/resources/images/common/footer_award17_05.jpg">' +
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="2016년 한국 최고의 직장 톱10 본상" src="/sw4/resources/images/common/footer_award17_06.jpg">' +
		'			</a>' +
		'		</li>' +
		'	</ul>';
		
	var m_footer =
		'	<ul class="footer_awards_slider">' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="고용노동부 2016년 고용창출 100개 우수기업 4년 연속 표창" src="/sw4/resources/images/common/m_footer_award17_01.jpg">' + 
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="고용노동부 2016년 장애인고용촉진대회 장애인고용촉진 유공 포상" src="/sw4/resources/images/common/m_footer_award17_02.jpg">' + 
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="환경부 2016년 그린킹 캠페인 온실가스 저감 우수 모범 기업" src="/sw4/resources/images/common/m_footer_award17_03.jpg">' +
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="농림축산식품부 2016년 농식품 상생협력 활동 우수사례 기업" src="/sw4/resources/images/common/m_footer_award17_04.jpg">' +
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="2016년 대한민국 여성인재경영대상 우수사례 기업" src="/sw4/resources/images/common/m_footer_award17_05.jpg">' +
		'			</a>' +
		'		</li>' +
		'		<li>' +
		'			<a href="javascript:void(0);" target="_blank">' +
		'				<img alt="2016년 한국 최고의 직장 톱10 본상" src="/sw4/resources/images/common/m_footer_award17_06.jpg">' +
		'			</a>' +
		'		</li>' +
		'	</ul>';
	
	/* Web | Mobile : Awards 이미지 변경 */
	var myWindow = $(window).width();
	
	$(window).resize(function() {
		myWindow = $(window).width();
	});
	
	if(myWindow < 640) {
		console.log('mobile');
		$('.footer_awards_slider').remove();
		$('.footer_awards_wrap_inner').prepend(m_footer);			
	} else {
		console.log('window');
		$('.footer_awards_slider').remove();
		$('.footer_awards_wrap_inner').prepend(w_footer);
	}
	/* Web | Mobile : Awards 이미지 변경 end */
		
	/* awards bxslider */
	if ((myWindow > 640) && (myWindow <= 1134)) {
		var faSlider = $('.footer_awards_slider').bxSlider({
			minSlides:3,
			maxSlides:3,
			slideWidth:210,
			slideMargin:0,
			controls:false,
			auto:true,
			autoControls:true,
			autoControlsCombine:true,
			pause:2000,
			pagerSelector:'.footer_slider_pagers',
			autoControlsSelector:'.footer_slider_controls'
		});
	} else if (myWindow <= 640) {
		var faSlider = $('.footer_awards_slider').bxSlider({
			minSlides:1,
			maxSlides:1,
			slideWidth:300,
			slideMargin:0,
			controls:false,
			auto:true,
			autoControls:true,
			autoControlsCombine:true,
			pause:2000,
			pagerSelector:'.footer_slider_pagers',
			autoControlsSelector:'.footer_slider_controls'
		});
	}
	/* awards bxslider end */
	
	
	
	
	if (myWindow <= 1280 && myWindow > 960) {
		$('.footer_menus ul:nth-of-type(5)').css({
			'clear': 'both',
			'margin-top': '30px'
		});

		$('.footer_menus ul:nth-of-type(6)').css({
			'margin-top': '30px'
		});
		
	} else if ((myWindow > 640) && (myWindow <= 960)) {
		$('.footer_menus ul:nth-of-type(5)').css({
			'clear': 'both'
		});
		
		$('.footer_menus ul:nth-of-type(3)').css({
			'margin-top': '30px'
		});
		
		$('.footer_menus ul:nth-of-type(4)').css({
			'margin-top': '30px'
		});

		$('.footer_menus ul:nth-of-type(5)').css({
			'margin-top': '30px'
		});
		
		$('.footer_menus ul:nth-of-type(6)').css({
			'margin-top': '30px'
		});
	}
	
	
	
	

	
});