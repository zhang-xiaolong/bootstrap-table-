$(function(){
	var menuHover = ''
	$(".menu-item").mouseenter(function(){
		$(this).find(".menu-hover").stop(false, true)
		$(this).find(".menu-hover").animate({"bottom":'-8px'});
		$(".nav-c").stop(false, true)
		$(this).find(".nav-c").slideToggle();
		menuHover = $(this).hasClass('on')
		$(this).addClass('on')
	});
	$(".menu-item").mouseleave(function(){
		$(this).find(".menu-hover").animate({"bottom":'0px'})
		$(this).find(".nav-c").slideToggle()
		if( !menuHover){
			$(this).removeClass('on')
		}
	});
	
	//轮播图JS
	var bannerMoveIndex = 0;
	var circleIndex = 0
	var html = $('#banner .bd ul').html();
	$('#banner .bd ul').html(html+html);
	var length = $('#banner .bd ul li').length;
	$('#banner .bd ul').css('width',1920*length);
	for(var i=0;i<length/2;i++){
		var Li = $('#banner .circle ul').html();
		$('#banner .circle ul').html(Li+"<li></li>");
	}
	$('#banner .circle ul li').eq(0).addClass('on');
	var timer = setInterval(function(){
		bannerMoveIndex ++;
		$('#banner .bd ul').animate({"marginLeft":-1920*bannerMoveIndex+'px'},1000,function(){
			if(bannerMoveIndex > length/2){
				bannerMoveIndex = 1;
				$('#banner .bd ul').css('marginLeft',-1920*bannerMoveIndex);
			}
		});
		circleIndex++
		if(circleIndex>=length/2){
			circleIndex = 0
		}
		$('#banner .circle ul li').removeClass('on').eq(circleIndex).addClass('on');
		
	},3000)
	
	$('#banner').mouseenter(function(){
		clearInterval(timer);
	});
	$('#banner').mouseleave(function(){
		timer = setInterval(function(){
			bannerMoveIndex ++;	
			$('#banner .bd ul').animate({"marginLeft":-1920*bannerMoveIndex+'px'},1000,function(){
				if(bannerMoveIndex > length/2){
					bannerMoveIndex = 1;
					$('#banner .bd ul').css('marginLeft',-1920*bannerMoveIndex);
				}
			});
			circleIndex++
			if(circleIndex>=length/2){
				circleIndex = 0
			}
			$('#banner .circle ul li').removeClass('on').eq(circleIndex).addClass('on');
		},3000);
	});
	$('#banner .circle ul li').mouseenter(function(){
		var index = $(this).index();
		circleIndex = index;
		bannerMoveIndex = index;
		$('#banner .circle ul li').removeClass('on').eq(circleIndex).addClass('on');
		$('#banner .bd ul').animate({"marginLeft":-1920*index+'px'},1000)
	});
	
	
	
	
	
	
	
	
	
})