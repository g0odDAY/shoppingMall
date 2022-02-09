<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="main.do">
                YEDAM SHOP
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                    <c:if test="${author == user }"> 
                        <li class="nav-item">
                            <a class="nav-link" href="main.do">홈으로</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="noticeList.do">공지사항</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="prodList.do">상품보러가기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="qaList.do">고객문의</a>
                        </li>
                        </c:if>
                        <c:if test="${author == admin }">
                        <li class="nav-item">
                            <a class="nav-link" href="prodRegister.do">상품등록</a>
                        </li>
                        </c:if>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    
					<c:if test="${empty id }">                    
                     <a class="btn btn-primary btn-sm" href="loginForm.do"><strong>로그인</strong></a>
                 	 </c:if>
                 	<c:if test="${not empty id }">
                 		<div>
                    	${id }님환영합니다.
                    	 <a class="btn btn-primary btn-sm" href="loginForm.do"><strong>로그아웃</strong></a>
                    	</div>
                 	 
                    	
                 	 </c:if>
                </div>
            </div>

        </div>
    </nav>