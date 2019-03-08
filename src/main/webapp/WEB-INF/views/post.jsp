<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<link rel="stylesheet"
		href=<c:url value="/css/community.css" /> >
<body>
<!-- 
  POST 게시판 beta
  페이지기능 넣어야함 각각 칼럼들 누르면 해당글로 이동
  다른 기타요소들 꾸미기
  DB연결하면 캡션부분에 제목과 날짜 작성자 넣어주기
-->
<%@ include file="/WEB-INF/views/include/header.jspf" %>
<%@ include file="/WEB-INF/views/include/nav.jspf" %>
<section>
    <div id="columns">
      <a href="http://famtimes.co.kr/news/view/146027" target="_blank">
        <div class="postlist">
        <div>
           <img class="img" src="http://famtimes.co.kr/data/media/image/news_6/201903/20190307141117642.jpg" >
        </div>
        <div class="subject">
          <h2>다양한 강아지종류의 '강아지분양' 애견무료분양 시 잘 알아봐야.. 중요한 '관리 및 훈련'은 어떻게?</h2>
          <div class="text">
            <p>10년 전에는 푸들, 요크셔테리어와 같은 작고 아담한 애완용강아지 분양이 대세였지만 유행을 타듯이 강아지... 이에 대형 강아지를 애완용강아지 분양으로 받을 시 분양 받는 다면 유의해야 할 점이 있다. 강아지 분양 후...</p>
          </div>   
        </div>
      </div>
      </a>
    
      <a href="http://www.hankookilbo.com/News/Read/201903061560333778?did=NA&dtype=&dtypecode=&prnewsid=" target="_blank">
      <div class="postlist">
        <div>
           <img class="img" src="http://newsimg.hankookilbo.com/2019/03/06/201903061560333778_7.jpg" >
        </div>
        <div class="subject">
          <h2>고양이 전용 샤워실? 집사라면 탐낼 만한 아파트</h2>
          <div class="text">
            <p>NHK 캡처 애완동물을 가족 구성원으로 여기는 인식이 확산되면서 일본 후쿠오카(福岡)시에서 고양이 기르는... 지난해 일본 전역의 반려묘는 965만마리로 애완견(약 890만마리)보다 많은 것으로 집계됐다. 2017년 처음으로...</p>
          </div>   
        </div>
      </div>
      </a>
      <a href="http://www.mdtoday.co.kr/mdtoday/index.html?no=348156" target="_blank">
      <div class="postlist">
        <div>
           <img class="img" src="http://file.mdtoday.co.kr/news/2019/0307/20190307081728_5c805508bea24_1.jpg" >
        </div>
        <div class="subject">
          <h2>날고기 애완견 먹이는 분들 조심하세요</h2>
          <div class="text">
            <p>날고기 애완견 먹이는 분들 조심하세요 ▲ 날고기 개가 먹는 사료 음식중 상당수가 개와 인체 모두에... 60종의 애완견용 날고기 제품을 분석한 결과에 의하면 내용물을 살균처리하고 세균을 없애기 위해 열처리를...</p>
          </div>   
        </div>
      </div>
      </a>
      <a href="https://www.ytn.co.kr/_ln/0104_201903051035065234" target="_blank">
      <div class="postlist">
        <div>
           <img class="img" src="https://image.ytn.co.kr/general/jpg/2019/0305/201903051035065234_d.jpg" >
        </div>
        <div class="subject">
          <h2>'울타리로 손 내밀었다가'...아이 손 물어 뜯어 삼킨 애완견</h2>
          <div class="text">
            <p>미국에서 애완용으로 기르던 시베리안 허스키가 아이의 손을 물어뜯어 삼켜 버리는 끔찍한 사고가 발생했다. 지난 4일, 미국 유타주 경찰은 3일 레이턴에 사는 4살 아동이 이웃집 울타리 사이로 발견한 개와 놀려고...</p>
          </div>   
        </div>
      </div>
      </a>

      <a href="https://news.imaeil.com/Life/2019030516365953186" target="_blank">
      <div class="postlist">
        <div>
           <img class="img" src="https://news.imaeil.com/inc/photos/2019/03/05/2019030510191850423_l.jpg" >
        </div>
        <div class="subject">
          <h2>"치아 스케일링 받은 강아지, 수명 20% 늘어요"…애완견 치석 제거, 건강 직결</h2>
          <div class="text">
            <p>스케일링은 애완견의 건강을 위해 치아 상태가 나빠지기 전에 받는 예방조치 정도라고 볼 수 있다'고 말했다.... ▶치아관리 애완견의 치아관리 중 대표적인 방법이 양치를 해주는 것이다. 양치훈련은 되도록 3개월 미만의...</p>
          </div>   
        </div>
      </div>
      </a>
    </div>
</section>

<%@ include file="/WEB-INF/views/include/footer.jspf" %>
</body>
</html>