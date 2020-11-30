/**
 * 
 */
 
var path = location.pathname;
var startIdx = path.indexOf("/",6);
var endIdx = path.indexOf("/",startIdx+1);
var tmpPath = path.substring(startIdx, endIdx);
path = "." + tmpPath + "List";

$("#search-btn").attr("type","submit");
$("#search-frm").attr("action",path);
$("#search-btn").click(function(){
	var search = $("#search").val();
	var curPage = 1;
	searchEvent(search, curPage);

})

$("#search-btn").keyup(function(e){
	var search = $("#search").val();
	var curPage = 1;
	if (e.keycode == 13){
		searchEvent(search, curPage);
	}
})

function searchEvent(search, curPage){
	$.ajax({
		url:path,
		type:"GET",
		data:{
			curPage:curPage,
			search:search
		},
		success:function(){
			$("#search").val(search);
			console.log("검색 성공");
		}
	})
}