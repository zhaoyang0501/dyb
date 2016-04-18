<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      <header class="bar bar-nav">
              <a class="button button-link button-nav pull-left" href="javascript:void(0)"  onclick="history.back()">
                  <span class="icon icon-left"></span>
               	   返回
              </a>
              <h1 class="title">电影APP</h1>
          </header>
          <nav class="bar bar-tab">
              <a class="tab-item external " href="index">
                  <span class="icon icon-home"></span>
                  <span class="tab-label">电影</span>
              </a>
               <a class="tab-item external" href="movie">
                  <span class="icon icon-star"></span>
                  <span class="tab-label">推荐</span>
              </a>
              
              <a class="tab-item external" href="center">
                  <span class="icon icon-me"></span>
                  <span class="tab-label">我</span>
              </a>
          </nav>