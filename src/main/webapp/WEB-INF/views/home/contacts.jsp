<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
  <!-- BEGIN MAIN -->
        <main class="main">              

            <!-- BEGIN INNER TOP -->
            <div class="inner-top">
                <div class="inner-top__main wrapper">
                    <div class="inner-top__cols">
                        <div class="inner-top__left">
                            <h1 class="inner-top__title">Contact</h1>
                            <div class="breadcrumbs">
                                <ul class="breadcrumbs__list">
                                    <li class="breadcrumbs__item">
                                        <a class="breadcrumbs__link" href="index">Home</a>
                                    </li>
                                    <li class="breadcrumbs__item">Contact</li>                                
                                </ul>
                            </div>
                        </div>
                        <div class="inner-top__right">
                            <div class="inner-top__image" data-bg="https://images.unsplash.com/photo-1512428559087-560fa5ceab42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"></div>
                        </div>                        
                    </div>
                    <img class="inner-top__bg" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" data-lazy="/forUser/assets/img/svg/vector-inner-top.svg" alt="">
                </div>
            </div>
            <!-- INNER TOP END -->

            <!-- BEGIN CONTACTS -->
            <div class="contacts-page">
                <div class="contacts-page__main wrapper">
                    <div class="contacts-page__cols">
                        <div class="contacts-page__left">
                            <form>
                                <div class="contacts-form">
                                    <div class="contacts-form__top">
                                        <h2 class="contacts-form__title">Get In Touch</h2>
                                        <p class="contacts-form__text">Write us your impressions of&nbsp;the&nbsp;purchase</p>
                                    </div>
                                    <div class="contacts-form__cols">
                                        <div class="contacts-form__col">
                                            <input class="text-input" type="text" placeholder="Enter your name">
                                        </div>
                                        <div class="contacts-form__col">
                                            <input class="text-input" type="email" placeholder="Enter your email">
                                        </div>                                        
                                    </div>
                                    <textarea class="textarea" placeholder="Enter your feedback"></textarea>
                                    <button class="contacts-form__button button">
                                        <span class="button__text">Send a message</span>
                                    </button>                                    
                                </div>
                            </form>
                        </div>
                        <div class="contacts-page__right">
                            <div class="contacts">
                                <section class="contacts__item">
                                    <div class="contacts__left">
                                        <h3 class="contacts__title">contacts:</h3>
                                    </div>
                                    <div class="contacts__right">
                                        <a class="contacts__number" href="tel:+84 968547875 ">+84 968547875 </a><br>
                                        <a class="contacts__link" href="mailto:baotptps22325@fpt.edu.vn">baotptps22325@fpt.edu.vn</a>
                                    </div>
                                </section>
                                <section class="contacts__item">
                                    <div class="contacts__left">
                                        <h3 class="contacts__title">location:</h3>
                                    </div>
                                    <div class="contacts__right">
                                        <span class="contacts__text">Fpt Polytechnic College <br>Ho Chi Minh City, Viet Nam</span>
                                    </div>
                                </section> 
                                <section class="contacts__item">
                                    <div class="contacts__left">
                                        <h3 class="contacts__title">find us:</h3>
                                    </div>
                                    <div class="contacts__right">
                                        <div class="contacts__socials socials">
                                            <ul class="socials__list">
                                                <li class="socials__item">
                                                    <a class="socials__link" href="#">Fb</a>
                                                </li>
                                                <li class="socials__item">
                                                    <a class="socials__link" href="#">Tw</a>
                                                </li> 
                                                <li class="socials__item">
                                                    <a class="socials__link" href="#">Ins</a>
                                                </li>
                                                <li class="socials__item">
                                                    <a class="socials__link" href="#">Pt</a>
                                                </li>                                                                           
                                            </ul>
                                        </div>
                                    </div>
                                </section>                                                                 
                            </div>
                        </div>                    
                    </div>
                    <img class="contacts-page__vector" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" data-lazy="/forUser/assets/img/svg/vector-contacts.svg" alt="">
                </div>
                <div class="contacts-page__map">
                    <div class="map" id="map"></div>
                </div>
            </div>
            <!-- CONTACTS END -->

        </main>
        <!-- MAIN END -->