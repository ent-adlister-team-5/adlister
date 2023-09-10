<%--
  Created by IntelliJ IDEA.
  User: kv
  Date: 9/10/23
  Time: 2:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <body>
        <div class="page-wrapper">
         <section class="home">
             <video class="video-slide active" src="/img/Screen Recording 2023-09-10 at 4.56.12 AM.mov"autoplay muted loop></video>
             <video class="video-slide" src="/img/concertView.mov"autoplay muted loop></video>
             <video class="video-slide" src="/img/lanterns.mov"autoplay muted loop></video>
             <video class="video-slide" src="/img/Screen Recording 2023-09-10 at 4.56.12 AM.mov"autoplay muted loop></video>
             <video class="video-slide" src="/img/Screen Recording 2023-09-10 at 4.56.12 AM.mov"autoplay muted loop></video>
<div class="content active">

             <div class="container-content">
                    <h1>Discover<br><span> A World You Never Knew Existed!</span></h1>
                    <p>Create and View hundreds of Events, and Organizations right in your area with just a click away.</p>
                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus dignissimos dolor <br>illum maiores molestias nulla odio sapiente, temporibus voluptatum? Beatae nostrum placeat quidem reiciendis?</p>
                 <a class="register-landing" href="/register">Register Today</a>
             </div>
</div>
                    <div class="slider-navigation">
                        <div class="nav-btn active"></div>
                        <div class="nav-btn"></div>
                        <div class="nav-btn"></div>
                        <div class="nav-btn"></div>
                        <div class="nav-btn"></div>

                    </div>
            </section>
             </div>
    <script>
        const btns = document.querySelectorAll(".nav-btn");
        const slides = document.querySelectorAll(".video-slide")
        const contents = document.querySelectorAll(".container-content")

        let sliderNav = function(manual) {
            btns.forEach((btn) => {
                btn.classList.remove("active");
            });
            slides.forEach((slide) => {
                slide.classList.remove("active");
            });
            contents.forEach((content) => {
                content.classList.remove("active");
            });
            btns[manual].classList.add("active");
            slides[manual].classList.add("active");
            contents[manual].classList.add("active");


        }
        btns.forEach((btn, i)=>{
           btn.addEventListener("click", ()=>{
               sliderNav(i);
           })

        });

    </script>
    </body>
</html>
