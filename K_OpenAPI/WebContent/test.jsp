<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Naver Movie Clone</title>
    <style type="text/css">
      * {
        margin: 0;
        padding: 0;
      }

      body {
        background: #727272;
        text-align: center;
        font-family: "나눔고딕", NanumGothic, "돋움", Dotum, Helvetica,
          AppleSDGothicNeo-Medium, AppleGothic, sans-serif;
        font-size: 12px;
        height: 100%;
        margin: 0;
        padding: 0;
        display: block;
      }

      a {
        text-decoration: none;
      }

      hr {
        background-color: #fff;
        border-top: 1px dotted #aaa;
      }

      ul {
        margin: 0;
        padding: 0;
        list-style: none;
        display: block;
      }

      #wrap {
        position: relative;
        text-align: left;
        min-height: 100%;
        margin: 0 auto;
      }

      #wrap.basic {
        width: 1095px;
      }

      .menu {
        position: fixed;
        top: 0;
        bottom: 0;
        z-index: 10000;
        width: 148px;
        border-left: 1px solid #212121;
        border-right: 1px solid #212121;
        background: #2b2b2b;
        min-height: 100%;
        text-align: left;
        color: white;
        *position: absolute;
        *left: 0;
        *z-index: auto;
      }

      .menu_header {
        height: 36px;
        padding: 11px 0 0;
        margin-right: 5px;
        display: flex;
        justify-content: center;
      }

      .ci_logo img {
        padding-bottom: 3px;
        padding-right: 3px;
      }

      .menu_body ul a {
        display: block;
        overflow: hidden;
        height: 39px;
        background: url(https://ssl.pstatic.net/static/movie/2013/10/sp_nav.png)
          no-repeat;
      }

      .menu_body ul a.menu01_on {
        background-position: -150px 0;
      }

      .menu_body ul a.menu02 {
        background-position: 0 -39px;
      }

      .menu_body ul a.menu03 {
        background-position: 0 -78px;
      }

      .menu_body ul a.menu04 {
        background-position: 0 -156px;
      }

      .menu_body ul a.menu05 {
        background-position: 0 -234px;
      }

      .menu_body ul a.menu06 {
        background-position: 0 -273px;
      }

      .menu_body li.menu_indi {
        padding: 5px 4px 6px;
      }

      .menu_body ul a.menu07 {
        width: 140px;
        height: 43px;
        background-position: 0 -315px;
      }

      .menu_body ul {
        overflow: hidden;
        width: 100%;
        list-style: none;
      }

      .container {
        margin-right: 150px;
        padding-left: 170px;
      }

      .container_header {
        height: 45px;
        color: white;
      }

      .container_header_box {
        float: right ;
        width: 300px;
        display: flex;
        justify-content: space-between;
        padding-top: 6px;
      }
      
      .container_header_login_icon {
        width: 46px;
        height: 20px;
        border: 1px solid #616161;
        font-size: 12px;
        text-align: center;
        line-height: 20px;
        background-color: #767676;
        color: white;
        margin-top: 7px;
      }

      .container_header_menu_icon {
        background: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_v15.png?v=2006)
          no-repeat;
        background-position: -261px -120px;
        width: 18px;
        height: 18px;
        margin-top: 7px;
      }

      .container_header_search form  {
        display: flex;
      }
      
      .container_header_search_bg {
        background: url(https://ssl.pstatic.net/static/movie/2012/07/search_bg.png)
          no-repeat;
        width: 167px;
        height: 33px;
        position: relative;
        vertical-align: middle;
        padding-top: 3px;
      }


      .container_header_search_bg input {
        display: inline-block;
        width: 140px;
        height: 28px;
        padding: 0 0 1px 7px;
        border: 0;
        background: #323232;
        font-weight: bold;
        font-size: 12px;
        line-height: 28px;
        color: #fff;
        margin-right: 15px;
      }

      .container_header_search button {
        width: 44px;
        height: 33px;
        background: url(https://ssl.pstatic.net/static/movie/2012/07/btn_search.png) no-repeat;
        border: 0;
      }

      .container_rank {
        border-left: 1px solid #212121;
        border-right: 1px solid #212121;
        background: #2b2b2b;
        position: relative;
        width: 100%;
        height: 500px;
        padding-top: 40px;
        border-bottom: 0;
      }

      .container_main {
        background: white;
        height: 950px;
      }

      .container_rank_header {
        position: absolute;
        top: 23px;
        width: 100%;
        display: block;
      }
      

      .container_rank_header ul {
        width: 500px;
        height: 33px;
        margin: 0 auto;
        list-style: none;
        display: block;
      }

      .container_rank_header ul li {
        float: left;
        padding: 0 10px;
        color: white;
        font-size: 13px;
      }

      .container_rank_main {
        margin: auto;
        padding-top: 30px;
      }

      .container_rank_main ul {
        margin: auto;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
      }

      .container_rank_main ul li {
        display: inline-block;
        justify-content: center;
        width: 130px;
        height: 200px;
        margin: 5px 3px 4px 3px;
        text-decoration: none;
        background-color: #151516;
        margin-top: 10px;
        position: relative;
      }

      .container_rank_main ul li a img {
        width: 130px;
        height: 180px;
      }

      .container_rank_main ul li a span.rank {
        position: absolute;
        top: 7px;
        left: 6px;
        width: 17px;
        height: 22px;
        display: block;
        background: url(https://ssl.pstatic.net/static/movie/2019/09/bg_sp_home.png)
          no-repeat;
      }

      .container_rank_main ul li a span.rank1 {
        background-position: 0 0;
      }

      .container_rank_main ul li a span.rank2 {
        background-position: -17px 0;
      }

      .container_rank_main ul li a span.rank3 {
        background-position: -39px 0;
      }

      .container_rank_main ul li a span.rank4 {
        background-position: -61px 0;
      }

      .container_rank_main ul li a span.rank5 {
        background-position: -83px 0;
      }

      .container_rank_main ul li a span.rank6 {
        background-position: -105px 0;
      }

      .container_rank_main ul li a span.rank7 {
        background-position: -126px 0;
      }

      .container_rank_main ul li a span.rank8 {
        background-position: -148px 0;
      }

      .container_rank_main ul li a span.rank9 {
        background-position: -170px 0;
      }

      .container_rank_main ul li a span.rank10 {
        background-position: -192px 0;
        width: 27px;
      }

      .container_rank_main_cnt {
        color: #f24443;
        font-weight: bold;
        background-color: #151516;
        height: 20px;
        text-align: center;
        padding-top: 5px;
        font-size: 11px;
        z-index: 5;
      }

      .container_rank_main_cnt span {
        color: #ebebeb;
      }

      .container_main_1 {
        width: 722px;
        height: 300px;
        display: flex;
        border: 2px solid #f2f2f2;
      }

      .container_review {
        width: 70%;
        border: 1px solid #f2f2f2;
        padding: 15px 50px;
      }

      .container_spotlight {
        width: 30%;
        border: 1px solid #f2f2f2;
        padding: 15px 20px;
      }

      .container_spotlight img {
        border: 1px solid #000;
        width: 200px;
        height: 200px;
      }

      .container_main_2 {
        width: 722px;
        height: 250px;
        border: 2px solid #f2f2f2;
      }

      .container_main_2_header {
        display: flex;
        justify-content: space-between;
        padding: 10px 30px;
      }

      .container_main_2_content {
        display: flex;
        justify-content: center;
      }

      .container_main_2_content li {
        display: inline-flex;
        width: 150px;
        height: 150px;
        margin: 1px;
        text-decoration: none;
        background-color: rgb(112, 70, 70);
      }

      .container_main_3 {
        width: 722px;
        height: 250px;
        border: 2px solid #f2f2f2;
      }

      .container_main_3_content {
        display: flex;
        justify-content: center;
      }

      .container_main_3_content li {
        display: inline-flex;
        width: 100px;
        height: 150px;
        margin: 1px;
        text-decoration: none;
        background-color: rgb(112, 70, 70);
      }

      .container_main_4 {
        padding: 20px 50px;
      }

      .footer {
        margin-bottom: 50px;
      }

      .footer ul {
        display: flex;
        justify-content: center;
        padding-top: 20px;
      }

      .footer ul li {
        display: inline-flex;
        margin: 5px;
      }

      .footer a {
        color: white;
      }

      .info,
      address {
        text-align: center;
        color: white;
      }
    </style>
    
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

//조회할 날짜를 계산
var dt = new Date();

//0(1월)부터 시작하기때문에 1더해주기
var m = dt.getMonth() + 1;
if (m < 10) { 
	var month = "0" + m;
} else { 
	var month = m + ""; }
	
//당일 박스오피스는 안나오기때문에 전날 박스오피를 가져오기위해 -1해줌
var d = dt.getDate() - 1;
if (d < 10) { 
	var day = "0" + d;
} else { 
	var day = d + ""; }
var y = dt.getFullYear();
var year = y + "";
var result = year + month + day;

//천단위마다 콤마찍어주는 함수
function addComma(num) {
	
	// 문자열 길이가 3과 같거나 작은 경우 입력 값을 그대로 리턴
	if (num.length <= 3) {
		return num;
	}
	// 3단어씩 자를 반복 횟수 구하기
	var count = Math.floor((num.length - 1) / 3);
	// 결과 값을 저정할 변수
	var result = "";
	// 문자 뒤쪽에서 3개를 자르며 콤마(,) 추가
	for (var i = 0; i < count; i++) {
		// 마지막 문자(length)위치 - 3 을 하여 마지막인덱스부터 세번째 문자열 인덱스값 구하기
		var length = num.length;
		var strCut = num.substr(length - 3, length);
		// 반복문을 통해 value 값은 뒤에서 부터 세자리씩 값이 리턴됨.
		// 입력값 뒷쪽에서 3개의 문자열을 잘라낸 나머지 값으로 입력값 갱신
		num = num.slice(0, length - 3);
		// 콤마(,) + 신규로 자른 문자열 + 기존 결과 값
		result = "," + strCut + result;
	}
	// 마지막으로 루프를 돌고 남아 있을 입력값(value)을 최종 결과 앞에 추가
	result = num + result;
	// 최종값 리턴
	return result;
}
//박스오피스 로딩하는 함수시작
$(function() {
	jQuery.ajaxSettings.traditional = true;
	$.ajax({
				//&itemPerPage: 1-10위 까지의 데이터가 출력되도록 설정
				url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=101bf546e267e597f93b69f96c123d98&targetDt="
						+ result,
				dataType : "json",
				success: function (data) {
		             var movieName = new Array();
		             var movieCnt = new Array();
		             
		             for (i = 0; i < 10; i++) {
			             movieName[i] = data.boxOfficeResult.dailyBoxOfficeList[i].movieNm;
			             movieCnt[i] = data.boxOfficeResult.dailyBoxOfficeList[i].audiAcc;
		             };
					
					
					$.ajax({
						//json 요청 url
						url : "/K_OpenAPI/api.do",
						type : "GET",
						dataType : "JSON",
						data: {"movieName": movieName},
						success : function(data) {
							 var code = '';
							 $(movieName).each(function (index, item) {
								 code += '<li>' 
								 + '<a href="' + data[index].items[0].link + '">' 
								 + '<span class="rank rank'
								 + (index + 1)
								 + '"></span>'
								 + '<img src="' + data[index].items[0].image + '"/>'
								 + '<div class="container_rank_main_cnt"><span>누적관객</span> ' 
								 + movieCnt[index] 
								 + '명</div>'  
								 + '</a>' 
								 + '</li>';
					              
							 });
								 $(".container_rank_main_ul").empty().append(code);
						},
						error : function(jqXHR) { //에러났을때
							alert(jqXHR.status)
							//alert("실패")
						}
					});
					
					
				},
				//에러 발생시 "실시간 박스오피스 로딩중"메시지가 뜨도록 한다.
				error : function() {
					alert("실시간 박스오피스 로딩중...");
				}
			
	
		});
	}); //박스오피스 로딩하는 함수끝
	

	
	

</script>
</head>
  <body>
    <div id="wrap" class="basic">
      <div class="menu">
        <h1 class="menu_header">
          <a
            href="http://www.naver.com/"
            title="naver로 바로가기"
            class="ci_logo"
            id="lnb_gonaver"
          >
            <img
              src="https://ssl.pstatic.net/static/movie/2013/07/logo_ci.png"
              width="62"
              height="13"
              alt="NAVER"
            />
          </a>

          <a href="/" title="영화서비스홈으로 바로가기" class="svc_logo"
            ><img
              src="https://ssl.pstatic.net/static/movie/2012/06/logo_svc.png"
              width="34"
              height="19"
              alt="영화"
          /></a>
        </h1>

        <div class="menu_body">
          <ul>
            <li><a href="" title="영화홈" class="menu01_on"></a></li>
            <li><a href="" title="상영작·예정작" class="menu02"></a></li>
            <li><a href="" title="영화랭킹" class="menu03"></a></li>
            <li><a href="" title="예매" class="menu04"></a></li>
            <li><a href="" title="평점·리뷰" class="menu05"></a></li>
            <li><a href="" title="다운로드" class="menu06"></a></li>
            <li class="menu_indi">
              <a href="" title="인디극장 UP" class="menu07"></a>
            </li>
          </ul>
        </div>
      </div>

      <div class="container">
        <div class="container_header">
            <div class="container_header_box">

              <div class="container_header_login">
                <a href=""><div class="container_header_login_icon">로그인</div></a>
              </div>
            <div class="container_header_menu">
              <a href=""><div class="container_header_menu_icon"></div></a>
            </div>
            <div class="container_header_search">
              <form
              action="https://movie.naver.com/movie/search/result.nhn"
              method="get"
              >
              <div class="container_header_search_bg">
                <input type="text" placeholder="영화검색" name="query" />
              </div>
              <input type="hidden" name="section" value="all" />
              <input type="hidden" name="ie" value="utf8" />
              <button type="submit">
              </form>
            </div>
          </div>
        </div>

        <div class="container_rank">
          <div class="container_rank_header">
            <ul>
              <li>예매순</li>
              <li>현재상영작</li>
              <li>개봉예정작</li>
              <li>평점순</li>
              <li>박스오피스</li>
              <li>다운로드순</li>
            </ul>
          </div>

          <div class="container_rank_main">
            <ul class="container_rank_main_ul"></ul>
          </div>
        </div>

        <div class="container_main">
          <div class="container_main_1">
            <div class="container_review">
              <h2>개봉영화 평점</h2>
              <hr />

              <h4>반도</h4>
              <hr />

              <h4>알라딘</h4>
              <hr />

              <h4>미녀와 야수</h4>
              <hr />

              <h4>소년시절의 너</h4>
              <hr />
            </div>

            <div class="container_spotlight">
              <h2>스포트라이트</h2>
              <hr />
              <a href="">
                <img src="" alt="이미지" />
              </a>

              <a href="#" class="container_s_image"></a>
            </div>
          </div>

          <div class="container_main_2">
            <div class="container_main_2_header">
              <h2>예고편</h2>
              <h4>
                <a href="#">더보기 ></a>
              </h4>
            </div>

            <div class="container_main_2_content">
              <ul>
                <li>
                  <a href=""></a>
                  <p>비밀경찰</p>
                  <p>메인 예고편</p>
                </li>
                <li>
                  <a href=""></a>
                  <p>담보</p>
                  <p>1차 예고편</p>
                </li>
                <li>
                  <a href=""></a>
                  <p>해피 디 데이</p>
                  <p>뮤직비디오</p>
                </li>
                <li>
                  <a href=""></a>
                  <p>부다페스트</p>
                  <p>비하인드</p>
                </li>
              </ul>
            </div>
          </div>

          <div class="container_main_3">
            <h1>포토</h1>

            <div class="container_main_3_content">
              <ul>
                <li>
                  <a href=""></a>
                  <p>강철비2</p>
                  <p>동북아시아</p>
                </li>
                <li>
                  <a href=""></a>
                  <p>빅샤크3</p>
                  <p>신나는 모험</p>
                </li>
                <li>
                  <a href=""></a>
                  <p>모든 것을</p>
                  <p>특별한 트래킹</p>
                </li>
                <li>
                  <a href=""></a>
                  <p>킬러맨</p>
                  <p>숨막히는 추격</p>
                </li>
                <li>
                  <a href=""></a>
                  <p>부니베어</p>
                  <p>꼬마 늑대</p>
                </li>
                <li>
                  <a href=""></a>
                  <p>죽지않는</p>
                  <p>전대미문</p>
                </li>
              </ul>
            </div>
          </div>

          <div class="container_main_4">
            <span><a href="">공지사항</a></span>

            <a href="">공지 yes24 예매 서비스 점검 안내</a>

            <hr />

            <span>본 페이지는 나눔글꼴에 최적화 되어있습니다.</span>

            <a href="">나눔글꼴설치</a>
          </div>
        </div>

        <div class="footer">
          <ul>
            <li><a href="">이용약관</a></li>
            <li><a href="">개인정보처리방침</a></li>
            <li><a href="">책임의 한계와 법적고지</a></li>
            <li><a href="">영화 고객센터</a></li>
          </ul>

          <p class="info">
            본 콘텐츠의 저작권은 저작권자 또는 제공처에 있으며, 이를 무단
            이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.
          </p>

          <p class="info">
            사업자등록번호 : 220-81-62517
            <span>통신판매업 신고번호</span> : 경기성남 제 2006 - 692호
            <span>대표이사 : 한성숙</span>
            <span>
              <a href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp">
                사업자등록정보 확인
              </a>
            </span>
            <br />
            주소 : 경기도 성남시 분당구 불정로 6 네이버 그린팩토리
            <span>대표전화 : 1588-3820</span>
          </p>

          <address>
            <a href="http://www.navercorp.com/" target="_blank" class="logo"
              ><img
                src="https://ssl.pstatic.net/static/movie/2013/07/logo_naver.png"
                width="63"
                height="11"
                alt="NAVER"
            /></a>
            <em>Copyright ©</em>
            <a href="http://www.navercorp.com/" target="_blank">NAVER Corp.</a>
            <span>All Rights Reserved.</span>
          </address>
        </div>
      </div>
    </div>
  </body>
</html>