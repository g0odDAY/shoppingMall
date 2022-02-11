<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{ margin: 0; padding: 0;}
	body{ color: #333; }
	a{ text-decoration: none; color: #333;}
	header{
		width: 960px; height: 80px;
		overflow: hidden;
		margin: 0px auto;
	}
	header > h1{ 
		float: left; 
		margin-top: 20px;
	}
	header > nav{
		float: right;
		margin-top: 45px;
	}
	header nav a{
		display: inline-block;
		padding-left: 10px;
		padding-right: 10px;
	}
	main{
		position: relative;
		overflow: hidden;
	}
	main figure.banner{
		display: flex;
		align-items: center;
		justify-content: center;
		width: 960px; height: 180px;
		margin: 0 auto;
		background: #69f;
		margin-bottom: 20px;
	}
	main figure.banner > .figure_header{
		width: 600px;
		text-align: center;
		color: white;
	}
	main figure.banner > .figure_header > h2{
		font-size: 2.5em;
	}
	main > section{
		width: 960px;
		margin: 0 auto;
	}
	main > section > article{
		width: 50%; 
		overflow: hidden;
		float: left;
	}
	main > section > article > #map{
		width: 100%; height: 500px;
		background-color: #ccc;
	}
	main > section > article p{
		margin-bottom: 20px;
	}
	main > section > aside{
		float: right;
		width: 50%;
		box-sizing: border-box;
		padding: 20px;
		padding-top: 0;
	}
	table{
	width:430px;
	height:500px;
	
	}

</style>
</head>
<script type="text/javascript">
	function submitFun(){
		window.alert('문의를 등록하였습니다.');
		document.forms.frm.submit();
	}
</script>
<body>
<main> 
	<figure class="banner">
		<div class="figure_header">
			<h2>찾아 오시는길</h2>
			<p>대구광역시 중구 중앙대로 403 (남일동 135-1, 5층)</p>
		</div>
	</figure>	
	<section>
		<article>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi dolorem quisomnis nam quas sint assumenda id adipisci veritatis totam.</p>
			<div id="map"><br>&nbsp;지도가 표시될 영역</div>
		</article>
		<aside>
			
			<div class="bg-light rounded h-100 p-4" align="center">
		<h1 class="mb-4">문 의 등 록</h1>
		<form id="frm" action="qaSend.do" method="post">
			<div>
				<table class="table" >
					<tr>
						<th class="form-floating" height="50" width="100">제 목</th>
						<td><input class="form-control" id="qaTitle" name="qaTitle"></td>
						<td><input type="hidden" id="qaWriter" name="qaWriter"
							value="${name }" readonly="readonly"></td>
					</tr>
					<tr>
						<th class="form-floating" width="100">내 용</th>
						<td><textarea class="form-control" rows="10" id="qaContent"
								name="qaContent"></textarea></td>
					</tr>
				</table>
				<div align="right" style="width:410px;">
				<input class="btn btn-primary btn-sm" type="button" onclick="submitFun()" value="등록">&nbsp;&nbsp;
				<input class="btn btn-primary btn-sm" type="reset" value="초기화">&nbsp;&nbsp;
				<input class="btn btn-primary btn-sm" type="button" value="문의목록" onclick="location.href='qaList.do'">
			</div>
			</div>
			<br>
			
		</form>
	</div>
		</aside>
	</section>
</main>
</body>
<script>
	function initMap() {

		
		var styleArray = [ {
			featureType : 'all',
			stylers : [ {
				saturation : -80
			} ]
		}, {
			featureType : 'road.arterial',
			elementType : 'geometry',
			stylers : [ {
				hue : '#00ffee'
			}, {
				saturation : 50
			} ]
		}, {
			featureType : 'poi.business',
			elementType : 'labels',
			stylers : [ {
				visibility : 'off'
			} ]
		} ];

		
		var my_position = {
			lat : 35.869091,
			lng : 128.593506
		};

		
		var map = new google.maps.Map(document.getElementById('map'), {
			center : my_position,
			scrollwheel : true,
			zoom : 18,
			styles : styleArray
		});

		
		var marker = new google.maps.Marker({
			map : map,
			position : my_position,
			title : '여기가 내 위치입니다!'
		});

	} // end initMap();
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA79F3HwKaIZZGfFmXbW6esaI6fqbxti0I&callback=initMap" async defer>
    </script>
</html>