<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Zay Shop - Contact</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    <!-- Load map styles -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->


	
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
		width: 66%; 
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
		width: 34%;
		box-sizing: border-box;
		padding: 20px;
		padding-top: 0;
	}
	fieldset{ 
		width: 100%; 
		padding: 10px;
		border: none;
	}
	legend{ 
		font-size: 1.6em; 
		margin-bottom: 20px;
	}
	label{ display: block; }
	input, textarea{ 
		border: none;
		background: #ddd;
		padding: 10px;
		resize: none;
	}
	label, input, textarea{ 
		width: 90%;
		margin-bottom: 10px;
	}
	button{
		background: #fe6081; 
		color: white;
		border: none;
		padding: 10px 40px;
	}
	button:hover{
		background: #ff80ab;
	}

</style>
</head>

<body>
    <!-- Start Top Nav -->
  
    <!-- Close Top Nav -->


    <!-- Header -->
   
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>


    <!-- Start Content Page -->

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
			<form  action="qaSend.do" method="post">
				<fieldset>
					<legend>문의 작성해주세요.</legend>
					<div class="form-group">
						<label for="writer">작성자</label>	
						<input type="text" id="writer" name="writer">
					</div>
					<div class="form-group">
						<label for="title">제목</label>
						<input type="text" id="title" name="title">
					</div>
					<div class="form-group">
						<label for="content">내용</label>
						<textarea rows="4" id="content" name="content"></textarea>
					</div>
					<div class="form-group">
						<input type="date" id="date" name="date" readonly >
					</div>
					
					<div class="form-group">
						<button >SEND</button>
					</div>
				</fieldset>
			</form>
		</aside>
	</section>
</main>
	<!--  <script type="text/javascript">
      function idCheck() { 
         $.ajax({
            url : "qaSend.do",
            type : "post",
            data : {
               writer : $("#qa_writer").val(),
               title : $("#qa_title").val(),
               content : $("#qa_content").val(),
               date : $("#qa_date").val()
            }, 
            dataType : "text"
            
         });
      }
   </script>-->
    <script>
		function initMap() {
			// 맵 스타일 정의
			var styleArray = [
			  {
			    featureType: 'all',
			    stylers: [
			      { saturation: -80 }
			    ]
			  },{
			    featureType: 'road.arterial',
			    elementType: 'geometry',
			    stylers: [
			      { hue: '#00ffee' },
			      { saturation: 50 }
			    ]
			  },{
			    featureType: 'poi.business',
			    elementType: 'labels',
			    stylers: [
			      { visibility: 'off' }
			    ]
			  }
			];      

			// 위치 정보 변수
			var my_position = {
				lat: 35.869091, 
				lng: 128.593506
			};

			// 맵 객체를 생성하고 id=‘map’에 지도 표시
			var map = new google.maps.Map(document.getElementById('map'), {
	        	center: my_position,
	        	scrollwheel: false,
	        	zoom: 18,
	         	styles: styleArray
			});

			// 마커 객체 생성
			var marker = new google.maps.Marker({
			    map: map,
			    position: my_position,
			    title: '여기가 내 위치입니다!'
			});
			
		}	// end initMap();

    </script>
	<script type="text/javascript">
		var d1 = new Date();
		var y1 = d1.getFullYear();
		var m1 = d1.getMonth() + 1;
		if (m1 < 10)
			m1 = "0" + m1;
		var dt1 = d1.getDate();
		if (dt1 < 10)
			dt1 = "0" + dt1;
		var d2 = y1 + "-" + m1 + "-" + dt1;
		
		document.getElementById('date').value = d2;
	</script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA79F3HwKaIZZGfFmXbW6esaI6fqbxti0I&callback=initMap" async defer></script>

</body>
</html>
    
    
    

   
   

