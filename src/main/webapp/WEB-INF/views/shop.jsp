<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href=<c:url value="/css/shop.css" /> >
<head>
</head>
<body>

<%@ include file="/WEB-INF/views/include/header.jspf" %>

<%@ include file="/WEB-INF/views/include/nav.jspf" %>
 
<h2 class="w3-center"></h2>

<div class="w3-content w3-display-container">
  <img class="mySlides" src="images/image_shop/메인1.jpg" 
  href="https://www.designboom.com/design/shake-dog-potty-by-modko-at-new-york-design-week-2013/">
  <img class="mySlides" src="images/image_shop/메인2.jpg">
  <img class="mySlides" src="images/image_shop/메인4.png">

  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

	<p id="text1">EDITOR'S PICK</p>


<article id="common1">
<div class="gallery">
  <a target="_blank" href="img_5terre.jpg">
    <img src="images/image_shop/하네스1.jpg" alt="Cinque Terre" width="800" height="400">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="img_forest.jpg">
    <img src="images/image_shop/하네스2.jpg" alt="Forest" width="800" height="400">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="img_lights.jpg">
    <img src="images/image_shop/하네스3.jpg" alt="Northern Lights" width="800" height="400">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>
</article>

<article id="common2">
<div class="row">
  <div class="column side">
    <h2>Side</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
  </div>
  
  <div class="column middle">
    <h2>Main Content</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
  </div>
  
  <div class="column side">
    <h2>Side</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
  </div>
</div>
</article>

<!-- 3rd Section-->
<article id="common3">
<div class="common3_side1_image">
<img src="images/image_shop/메인3.png" alt="우비" href="#">
</div>

<div class="common3_side2_text">
<p>MORE RAINY, MORY FANCY
</div>
</article>

<%@ include file="/WEB-INF/views/include/footer.jspf" %>
</body>
</html>
    