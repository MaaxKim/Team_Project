<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pick_Pick</title>
<link href="css/main8.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// show()   hide()  toggle()  
		// slideDown()  slideUp()  slideToggle()
		// fadeIn()  fadeOut()  fadeToggle() 
		// h1 태그클릭 이벤트발생하면
		// 클릭한대상  $(this).next().toggle('slow',function(){})
		$('.container_rank').click(function() {
			$('.rankOthers').next().toggle('slow', function() {
				// 			alert("효과끝");
			});
		});
	});
</script>
</head>
<body>
	<div id="container">
		<header>
			<a href="https://www.naver.com/" class="logo_link">
				<div id="logo">
					<img class="logo_img" alt="logo" src="img/logo_pink.png"> <img
						class="logo_img_wh" alt="logo" src="img/logo.png">
				</div>
			</a>
			<nav>
				<ul>
					<li><a href="https://www.naver.com/">
							<div class="nav_wrap">
								<img class="nav_img" alt="search" src="img/search_nav.png">
								<div class="nav_text">검색하기</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="nav_wrap">
								<img class="nav_img" alt="review" src="img/review.png">
								<div class="nav_text">리얼후기</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="nav_wrap">
								<img class="nav_img" alt="recommend"
									src="img/recommendation.png">
								<div class="nav_text">추천음식점</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="nav_wrap">
								<img class="nav_img" alt="cowork" src="img/organization.png">
								<div class="nav_text">제휴음식점</div>
							</div>
					</a></li>
					<c:choose>
						<c:when test="${info !=null }">
							<li><a href="#">
									<div class="nav_wrap">
										<img class="nav_img" alt="MyPage" src="img/MyPage.png">
										<div class="nav_text">마이페이지</div>
									</div>
							</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="#">
									<div class="nav_wrap">
										<img class="nav_img" alt="Log_in" src="img/log_in.png">
										<div class="nav_text">로그인</div>
									</div>
							</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</header>

		<section id="search">

			<div class="search_bar">

				<form action="" method="post" name="search">

					<div class="search_bar_text">추천 음식점을 Pick 하세요.</div>
					<div class="search_input_wrap">
						<img class="search_input_logo" alt="" src="img/bar_logo.png">
						<input class="search_input" type="text">
					</div>

					<button type="submit" class="search_btn_icon">
						<img class="btn_for_search" alt="search" src="img/Search.png">
					</button>

					<button type="submit" class="search_btn_text">검색</button>

				</form>
			</div>

		</section>

		<section id="rank">
			<div class="title">Pick_Pick이 선정한 맛집 랭킹.</div>

			<div class="container_rank">

				<div class="rank1">

					<img class="rank1_img" alt="no.1" src="img/ex2.jpg">

					<div class="rank1_sub">

						<img class="crown" alt="crown" src="img/crown.png">

						<div class="rank1_title">1. 맛집이름</div>
					</div>

					<div class="rank1_desc">
						# 일식<br>전화번호<br>주소<br>추천
					</div>

				</div>
				<%
				    for (int i = 2; i <= 3; i++) {
				%>
				<div class="rankOthers">
					<img class="ranks_img" alt="no.1" src="img/ex.jpg">
					<div class="ranks_title"><%=i%>. 맛집이름
					</div>
					<div class="ranks_desc"># 일식</div>
				</div>
				<%
				    }
				%>

				<%
				    for (int i = 4; i <= 10; i++) {
				%>
				<div class="rankOthers">
					<img class="ranks_img" alt="no.1" src="img/ex.jpg">
					<div class="ranks_title"><%=i%>. 맛집이름
					</div>
					<div class="ranks_desc"># 일식</div>
				</div>
				<%
				    }
				%>

			</div>
		</section>

		<section id="category">

			<div class="title">원하는 메뉴를 고르세요.</div>

			<div class="container_category">

				<a href="#" class="category"> <img src="img/date.png">
					<div class="describe"># 데이트</div>
				</a> <a href="#" class="category"> <img src="img/chinese_food.png">
					<div class="describe"># 중식</div>
				</a> <a href="#" class="category"> <img src="img/japanese_food.png">
					<div class="describe"># 일식</div>
				</a> <a href="#" class="category"> <img src="img/hot-dog.png">
					<div class="describe"># 분식</div>
				</a> <a href="#" class="category"> <img src="img/meat.png">
					<div class="describe"># 고기</div>
				</a> <a href="#" class="category"> <img src="img/chicken.png">
					<div class="describe"># 치킨</div>
				</a> <a href="#" class="category"> <img src="img/cafe.png">
					<div class="describe"># 카페</div>
				</a> <a href="#" class="category"> <img src="img/dessert.png">
					<div class="describe"># 디저트</div>
				</a> <a href="#" class="category"> <img src="img/noodles.png">
					<div class="describe"># 면류</div>
				</a> <a href="#" class="category"> <img src="img/seafood.png">
					<div class="describe"># 해산물</div>
				</a> <a href="#" class="category"> <img src="img/soup.png">
					<div class="describe"># 얼큰한</div>
				</a> <a href="#" class="category"> <img src="img/etc.png">
					<div class="describe"># 기타</div>
				</a>


			</div>
		</section>

		<section id="region">
			<div class="title">내 주변의 맛집을 찾아보세요.</div>

			<div class="container_region">
				<img class="img_for_region" src="img/region.jpg">






			</div>
		</section>





		<footer>
			<hr>
			<div id="copy">
				All contents Copyright @pick_pick. all rights reserved<br> 
				Contact &nbsp;
				# mail : stranger_m@naver.com &nbsp;&nbsp; # Tel. 010-7186-6065
				
			</div>
		</footer>
	</div>
</body>
</html>