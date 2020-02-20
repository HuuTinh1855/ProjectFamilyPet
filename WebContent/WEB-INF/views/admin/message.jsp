<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <mt:admin_template title="Thông báo">
    	<jsp:attribute name="content">
    	<div class="row justify-content-center">
    	  <div class="col-xl-12 col-lg-12 col-md-9">
    	  	<h3 class="text-center">${message}</h3>
    	  	<a href="adminthemtaikhoan">Có</a>
    	  	<a href="admintaikhoan">Không</a>
    	  </div>
    	 </div>
    	
    	</jsp:attribute>
    </mt:admin_template>