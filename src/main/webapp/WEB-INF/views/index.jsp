<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>TTAC :: HOME</title>
		<meta name="description" content="An implementation of Gil Huybrecht's Outdoors design" />
		<meta name="keywords" content="template, web design, html, javascript, layout, css, slide out" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="favicon.ico">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/base.css" />
		<script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this demo in a modern browser that supports CSS Variables.");</script>
		<!--script src="//tympanus.net/codrops/adpacks/analytics.js"></script-->	
	</head>
	<body class="loading">
		<svg class="hidden"> 
			<symbol id="icon-arrow" viewBox="0 0 24 24">
				<title>arrow</title>
				<polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
			</symbol>
			<symbol id="icon-drop" viewBox="0 0 24 24">
				<title>drop</title>
				<path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
			</symbol>
			<symbol id="icon-menu" viewBox="0 0 24 13">
				<title>menu</title>
				<path d="M.75 1.515h22.498a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zM23.248 5.265H8.168a.75.75 0 0 0 0 1.5h15.08a.75.75 0 0 0 0-1.5zM23.248 10.514H4.322a.75.75 0 0 0 0 1.5h18.926a.75.75 0 0 0 0-1.5z"/>
			</symbol>
			<symbol id="icon-dot" viewBox="0 0 24 24">
				<title>dot</title>
				<path d="M11.5 9c-.69 0-1.28.244-1.768.732A2.41 2.41 0 0 0 9 11.5c0 .69.244 1.28.732 1.767A2.409 2.409 0 0 0 11.5 14c.69 0 1.28-.244 1.768-.733A2.408 2.408 0 0 0 14 11.5c0-.69-.244-1.28-.732-1.768A2.408 2.408 0 0 0 11.5 9z"/>
			</symbol>
			<symbol id="icon-cross" viewBox="0 0 24 24">
				<title>cross</title>
				<path d="M11.449 11.962l-5.1 5.099a.363.363 0 1 0 .513.512L12 12.436l5.137 5.137a.361.361 0 0 0 .513 0 .363.363 0 0 0 0-.512l-5.099-5.1 5.102-5.102a.363.363 0 1 0-.512-.513L12 11.487l-5.141-5.14a.363.363 0 0 0-.513.512l5.103 5.103z"/>
			</symbol>
			<symbol id="icon-arrowlong" viewBox="0 0 32 11">
				<title>arrow-long</title>
				<path d="M27.166.183a.619.619 0 0 0-.878 0 .619.619 0 0 0 0 .878l2.735 2.735H.768a.624.624 0 0 0 0 1.248h28.254L26.287 7.77a.619.619 0 0 0 0 .878.617.617 0 0 0 .441.183c.163 0 .32-.061.442-.183l3.796-3.796a.623.623 0 0 0-.005-.878L27.166.183z"/>
			</symbol>
			<symbol id="icon-close" viewBox="0 0 24 24">
				<title>close</title>
				<path d="M21 4.565L19.435 3 12 10.435 4.565 3 3 4.565 10.435 12 3 19.435 4.565 21 12 13.565 19.435 21 21 19.435 13.565 12z"/>
			</symbol>
			<symbol id="icon-navup" viewBox="0 0 50 50">
				<title>navup</title>
				<path d="M20.259 28.211l5.07-5.03 5.075 5.034a.36.36 0 0 0 .51 0 .356.356 0 0 0 0-.506l-5.323-5.28a.404.404 0 0 0-.135-.084.364.364 0 0 0-.384.08l-5.324 5.28a.356.356 0 0 0 0 .506c.141.14.37.14.51 0z" />
			</symbol>
			<symbol id="icon-navdown" viewBox="0 0 50 50">
				<title>navdown</title>
				<path d="M20.259 22.43l5.07 5.03 5.075-5.034a.36.36 0 0 1 .51 0c.14.14.14.366 0 .506l-5.323 5.28a.404.404 0 0 1-.135.084.364.364 0 0 1-.384-.081l-5.324-5.28a.356.356 0 0 1 0-.505c.141-.14.37-.14.51 0z" />
			</symbol>
			<symbol id="icon-grid" viewBox="0 0 24 24">
				<title>grid</title>
				<path d="M8.982 8.982h5.988v5.988H8.982zM0 0h5.988v5.988H0zM8.982 17.965h5.988v5.988H8.982zM0 8.982h5.988v5.988H0zM0 17.965h5.988v5.988H0zM17.965 0h5.988v5.988h-5.988zM8.982 0h5.988v5.988H8.982zM17.965 8.982h5.988v5.988h-5.988zM17.965 17.965h5.988v5.988h-5.988z"/>
			</symbol>
		</svg>
		<main>
			<div class="sections">
				<header class="sections__header">
					<h1 class="title">Tea Time And Coding</h1>
				</header>
				<!-- codrops links -->
				<div class="codrops-links">
					<a class="codrops-icon codrops-icon--prev" href="https://tympanus.net/Development/GradientTopographyAnimation/" title="Previous Demo"><svg class="icon icon--arrow"><use xlink:href="#icon-arrow"></use></svg></a>
					<a class="codrops-icon codrops-icon--drop" href="https://tympanus.net/codrops/?p=33851" title="Back to the article"><svg class="icon icon--drop"><use xlink:href="#icon-drop"></use></svg></a>
				</div>
				<!-- menu -->
				<nav class="menu">
					<ul class="menu__inner">
						<li class="menu__item"><a class="menu__item-link" href="#">HOME</a></li>
						<li class="menu__item"><a class="menu__item-link" href="#">Log In</a></li>
						<li class="menu__item"><a class="menu__item-link" href="/joinus/join.htm">Register</a></li>
						<li class="menu__item"><a class="menu__item-link" href="/joinus/multimail.htm" >Multi-MAIL</a></li>
						<li class="menu__item"><a class="menu__item-link" href="/joinus/filemail.htm" >File-MAIL</a></li>
						<li class="menu__item"><a class="menu__item-link" href="#" >Chatting</a></li>
					</ul>
					<div class="menu__toggle">
						<span class="menu__toggle-inner menu__toggle-inner--open">
							<svg class="icon icon--menu"><use xlink:href="#icon-menu"></use></svg>
						</span>
						<span class="menu__toggle-inner menu__toggle-inner--close">
							<svg class="icon icon--close"><use xlink:href="#icon-close"></use></svg>
							
						</span>
					</div>
				</nav>
				<!-- facts expander with toggles; content for each is in its section -->
				<div class="facts">
					<div class="facts__toggle">
						<span class="facts__toggle-inner facts__toggle-inner--more">
							<svg class="icon icon--dot"><use xlink:href="#icon-dot"></use></svg>
							<span class="facts__toggle-text">See more MENU</span>
						</span>
						<span class="facts__toggle-inner facts__toggle-inner--less">
							<svg class="icon icon--cross"><use xlink:href="#icon-cross"></use></svg>
							<span class="facts__toggle-text">See less MENU</span>
						</span>
					</div>
					<button class="button-contentclose">
						<svg class="icon icon--close"><use xlink:href="#icon-close"></use></svg>
					</button>
				</div>
				<!-- index -->
				<div class="sections__index">
					<span class="sections__index-current">
						<span class="sections__index-inner">01</span>
					</span>
					<span class="sections__index-total">05</span>
				</div>
				<!-- navigation down -->
				<nav class="sections__nav">
					<button class="sections__nav-item sections__nav-item--prev">
						<svg class="icon icon--navup"><use xlink:href="#icon-navup"></use></svg>
					</button>
					<button class="sections__nav-item sections__nav-item--next">
						<svg class="icon icon--navdown"><use xlink:href="#icon-navdown"></use></svg>
					</button>
				</nav>
				<!-- sections -->
				<section class="section section--current">
					<div class="section__content">
						<h2 class="section__title">TTAC</h2>
						<p class="section__description"><span class="section__description-inner"><b>TTAC</b>의 대장 임준한, 그의 오른팔 도현정, 그리고 두 명의 대원인 고범종과 박예빈... 그들에 대한 웹사이트 <small style="color:gray;"> +더보기</small></span></p>
					</div>
					<div class="section__img">
						<div class="section__img-inner" style="background-image: url(${pageContext.request.contextPath}/resources/img/1.jpg)"></div>
					</div>
					<div class="section__more">
						<div class="section__more-inner section__more-inner--bg1">
							<span class="section__more-text">Want to know more?</span>
							<a href="#" class="section__more-link">
								<span class="section__more-linktext">Explore More TTAC</span>
								<svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
							</a>
						</div>
					</div>
					<div class="section__expander"></div>
					<ul class="section__facts">
						<li class="section__facts-item">
							<h3 class="section__facts-title">TTAC, 그들은 누구인가?</a></h3>
							<span class="section__facts-detail">정체불명의 그들을 파헤친다.</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">최고의 PL, 그녀의 수상한 하루</h3>
							<span class="section__facts-detail">도현정이 향하는 곳은...?</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">TTAC의 대원 고범종의 비밀은?!</h3>
							<span class="section__facts-detail">고범종 대원의 은밀한 취미가 있다는데...</span>
						</li>
						<li class="section__facts-item section__facts-item--clickable" data-gallery="gallery1">
							<div class="section__facts-img">
								<img src="${pageContext.request.contextPath}/resources/img/thumb1.jpg" alt="Some image"/>
								<svg class="icon icon--grid"><use xlink:href="#icon-grid"></use></svg>
							</div>
							<h3 class="section__facts-title">More impressions</h3>
							<span class="section__facts-detail">A collection of images</span>
						</li>
					</ul>
					<div class="section__gallery" id="gallery1">
						<h3 class="section__gallery-item section__gallery-item--title">More impressions</h3>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb1.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb2.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb3.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb4.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb5.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb6.jpg" alt="Some image"/></a>
					</div>
				</section><!--/ section -->
				<section class="section">
					<div class="section__content">
						<h2 class="section__title">JUN</h2>
						<p class="section__description"><span class="section__description-inner"><b>TTAC</b>의 대장인 <b>임준한</b>, 그는 <b>최고의 PM</b>으로 불리운다.<br>경천동지할 리더십으로 <b>TTAC</b>을 이끌고 있으며 현재 혜화동 근처의 거주 중인 것으로 밝혀졌다. 좋아하는 것은 <b>고기</b>다.</span></p>
					</div>
					<div class="section__img">
						<div class="section__img-inner" style="background-image: url(${pageContext.request.contextPath}/resources/img/2.jpg)"></div>
					</div>
					<div class="section__more">
						<div class="section__more-inner section__more-inner--bg2">
							<span class="section__more-text">Want to know more?</span>
							<a href="#" class="section__more-link">
								<span class="section__more-linktext">Explore the JUNHAN</span>
								<svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
							</a>
						</div>
					</div>
					<div class="section__expander"></div>
					<ul class="section__facts">
						<li class="section__facts-item">
							<h3 class="section__facts-title">A.K.A</h3>
							<span class="section__facts-detail">최고의 PM</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">좋아하는 것</h3>
							<span class="section__facts-detail">각종 고기</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">Lake depth</h3>
							<span class="section__facts-detail">With 55m it's the deepest</span>
						</li>
						<li class="section__facts-item section__facts-item--clickable" data-gallery="gallery2">
							<div class="section__facts-img">
								<img src="${pageContext.request.contextPath}/resources/img/thumb2.jpg" alt="Some image"/>
								<svg class="icon icon--grid"><use xlink:href="#icon-grid"></use></svg>
							</div>
							<h3 class="section__facts-title">More impressions</h3>
							<span class="section__facts-detail">A collection of images</span>
						</li>
					</ul>
					<div class="section__gallery" id="gallery2">
						<h3 class="section__gallery-item section__gallery-item--title">More impressions</h3>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb5.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb6.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb1.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb2.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb3.jpg" alt="Some image"/></a>
						<a class="section__gallery-item" href="#"><img src="${pageContext.request.contextPath}/resources/img/thumb4.jpg" alt="Some image"/></a>
					</div>
				</section><!--/ section -->
				<section class="section">
					<div class="section__content">
						<h2 class="section__title">DOE</h2>
						<p class="section__description"><span class="section__description-inner"><b>최고의 PL</b>로 불리는 그녀, <b>도현정</b>.<br>그녀에 대해서는 많은 부분이 미스테리이지만 인천에 거주하는 것만은 <br>분명하다. 좋아하는 것은 <b>레몬 빵</b>이다.</span></p>
					</div>
					<div class="section__img">
						<div class="section__img-inner" style="background-image: url(${pageContext.request.contextPath}/resources/img/3.jpg)"></div>
					</div>
					<div class="section__more">
						<div class="section__more-inner section__more-inner--bg3">
							<span class="section__more-text">Want to know more?</span>
							<a href="#" class="section__more-link">
								<span class="section__more-linktext">Explore the DOE</span>
								<svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
							</a>
						</div>
					</div>
					<div class="section__expander"></div>
					<ul class="section__facts">
						<li class="section__facts-item">
							<h3 class="section__facts-title">A.K.A</h3>
							<span class="section__facts-detail">최고의 PL</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">좋아하는 것</h3>
							<span class="section__facts-detail">레몬 빵, 쿠키</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">Running and more</h3>
							<span class="section__facts-detail">With 55m it's the deepest</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">Starting to walk</h3>
							<span class="section__facts-detail">An aerial view of the lake</span>
						</li>
					</ul>
				</section><!--/ section -->
				<section class="section">
					<div class="section__content">
						<h2 class="section__title">Go</h2>
						<p class="section__description"><span class="section__description-inner"><b>TTAC</b>의 대원인 <b>고범종</b>, 그는 통칭 '서버맨'으로 불리고 있다. 자세한 정보는 알려지지 않았으나 그의 옆에는 항상 그와 함께인 정체불명의 소녀가 있다.<br> 좋아하는 것은 <b>강된장</b>이다.</span></p>
					</div>
					<div class="section__img">
						<div class="section__img-inner" style="background-image: url(${pageContext.request.contextPath}/resources/img/2.jpg)"></div>
					</div>
					<div class="section__more">
						<div class="section__more-inner section__more-inner--bg4">
							<span class="section__more-text">Want to know more?</span>
							<a href="#" class="section__more-link">
								<span class="section__more-linktext">Explore Morel GoBAM</span>
								<svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
							</a>
						</div>
					</div>
					<div class="section__expander"></div>
					<ul class="section__facts">
						<li class="section__facts-item">
							<h3 class="section__facts-title">A.K.A</h3>
							<span class="section__facts-detail">Server Man</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">좋아하는 것</h3>
							<span class="section__facts-detail">강된장 보리밥</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">Walking around</h3>
							<span class="section__facts-detail">With 55m it's the deepest</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">How many miles?</h3>
							<span class="section__facts-detail">An aerial view of the lake</span>
						</li>
					</ul>
				</section><!--/ section -->
				<section class="section">
					<div class="section__content">
						<h2 class="section__title">YB</h2>
						<p class="section__description"><span class="section__description-inner"><b>TTAC</b>의 대원 <b>박예빈</b>, 그녀는 각종 퍼즐, 추리 등에 뛰어난 실력을 가진 것으로 알려져 있다. 뛰어난 지능의 소유자이며 좋아하는 것은 <b>연유라떼</b>이다.</span></p>
					</div>
					<div class="section__img">
						<div class="section__img-inner" style="background-image: url(${pageContext.request.contextPath}/resources/img/4.jpg)"></div>
					</div>
					<div class="section__more">
						<div class="section__more-inner section__more-inner--bg3">
							<span class="section__more-text">Want to know more?</span>
							<a href="#" class="section__more-link">
								<span class="section__more-linktext">Explore More YB</span>
								<svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
							</a>
						</div>
					</div>
					<div class="section__expander"></div>
					<ul class="section__facts">
						<li class="section__facts-item">
							<h3 class="section__facts-title">A.K.A</h3>
							<span class="section__facts-detail">YB</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">좋아하는 것</h3>
							<span class="section__facts-detail">연유 라떼</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">Walking around</h3>
							<span class="section__facts-detail">With 55m it's the deepest</span>
						</li>
						<li class="section__facts-item">
							<h3 class="section__facts-title">How many miles?</h3>
							<span class="section__facts-detail">An aerial view of the lake</span>
						</li>
					</ul>
				</section><!--/ section -->
			</div><!--/ sections -->
		</main>
		<script src="${pageContext.request.contextPath}/resources/js/imagesloaded.pkgd.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/charming.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/anime.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	</body>
</html>
