<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
  <mt:admin_template title="Tài khoản">
    <jsp:attribute name="content">
    	<div class="row justify-content-center">
  <form action="adminthemtaikhoan" class="needs-validation col-md-12 col-lg-6" novalidate method="post">
      <div class="col-xl-12 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12 d-none d-lg-block bg-login-image"></div>
                <div class="col-lg-12">
                  <div class="p-5">
                    <div class="text-center">
                      <h1 class="h4 text-gray-900 mb-4">Thêm Tài Khoản</h1>
                    </div>
                    <div class="form-group">
                      <label for="matk">Mã Tài Khoản:</label>
                      <input type="text" class="form-control" id="matk" placeholder="Nhập Mã Tài Khoản" name="matk" value="${matk}" required>
                      <div class="valid-feedback">Valid.</div>
      		       <div class="invalid-feedback">Please fill out this field.</div>
                    </div>
                    <div class="form-group">
                      <label for="tentk">Tên Tài Khoản:</label>
                      <input type="text" class="form-control" id="tentk" placeholder="Nhập Tên Tài Khoản" name="tentk" value="${tentk}" required>
                      <div class="valid-feedback">Valid.</div>
                      <div class="invalid-feedback">Nhập sai định dạng.</div>
                    </div>
                    <div class="form-group">
                      <label for="matkhau">Mật Khẩu:</label>
                      <input type="password" class="form-control" id="matkhau" placeholder="Nhập Mật Khẩu" name="matkhau" value="${matkhau}" required>
                      <div class="valid-feedback">Valid.</div>
                      <div class="invalid-feedback">Nhập sai định dạng.</div>
                    </div>
                    <div class="form-group">
                      <label for="mail">Mail:</label>
                      <input type="mail" class="form-control" id="mail" placeholder="Nhập Mail" name="mail" value="${mail}" required>
                      <div class="valid-feedback">Valid.</div>
                      <div class="invalid-feedback">Nhập sai định dạng.</div>
                    </div>
                    <div class="form-group">
                      <label for="maquyen">Mã Quyền:</label>
                      <input type="text" class="form-control" id="maquyen" placeholder="Nhập Mã Quyền" name="maquyen" value="${maquyen}"required>
                      <div class="valid-feedback">Valid.</div>
                      <div class="invalid-feedback">Nhập sai định dạng.</div>
                    </div>
                    <div class="p-1">
                      <div class="row justify-content-center">
                        <button type="submit" class="btn btn-primary mr-sm-4 my-0">Thêm Tài Khoản</button>
                        <a href="admintaikhoan" class="btn btn-primary">Hủy</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
  </form>
  <c:if test="${message ne null}">
  	<script>
  		window.alert("${message}");
  	</script>
  </c:if>
  
  <script>
// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
    </jsp:attribute>
   </mt:admin_template>