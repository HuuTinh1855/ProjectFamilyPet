<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <mt:admin_template title="Dashboard">
    	<jsp:attribute name="content">
    		<div class="row justify-content-center">
  <form action="" class="needs-validation col-md-12 col-lg-6" novalidate>
      <div class="col-xl-12 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12 d-none d-lg-block bg-login-image"></div>
                <div class="col-lg-12">
                  <div class="p-5">
                    <div class="text-center">
                      <h1 class="h4 text-gray-900 mb-4">Thêm Khách hàng</h1>
                    </div>
                    <div class="form-group">
                      <label for="makh">Mã Khách Hàng:</label>
                      <input type="text" class="form-control" id="makh" placeholder="Nhập Mã Khách Hàng" name="makh" required>
                      <div class="valid-feedback">Valid.</div>
                      <div class="invalid-feedback">Nhập sai định dạng.</div>
                    </div>
                    <div class="form-group">
                      <label for="hoten">Họ Và Tên:</label>
                      <input type="text" class="form-control" id="hoten" placeholder="Nhập Họ Và Tên" name="hoten" required>
                      <div class="valid-feedback">Valid.</div>
                      <div class="invalid-feedback">Nhập sai định dạng.</div>
                    </div>
                    <div class="form-group">
                      <label for="diachi">Địa Chỉ:</label>
                      <input type="text" class="form-control" id="diachi" placeholder="Nhập Địa Chỉ" name="diachi" required>
                      <div class="valid-feedback">Valid.</div>
                      <div class="invalid-feedback">Nhập sai định dạng.</div>
                    </div>
                    <div class="form-group">
                      <label for="sdt">Số Điện Thoại:</label>
                      <input type="text" class="form-control" id="sdt" placeholder="Nhập Số Điện Thoại" name="sdt" required>
                      <div class="valid-feedback">Valid.</div>
                      <div class="invalid-feedback">Nhập sai định dạng.</div>
                    </div>
                    <div class="form-group">
                      <label for="gt">Giới Tính:</label>
                      <br>
                      <div class="form-check-inline mb-0 mr-sm-3">
                        <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gioitinh" value="nam"> Nam
                        </label>
                      </div>
                      <div class="form-check-inline mb-0 mr-sm-3">
                        <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gioitinh" value="nu"> Nữ
                        </label>
                      </div>
                      <div class="form-check-inline mb-0 mr-sm-3">
                        <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gioitinh" value="khac"> Khác
                        </label>
                      </div>        
                    </div>
                    <div class="p-1">
                      <div class="row justify-content-center">
                        <button type="submit" class="btn btn-primary mr-sm-4 my-0">Thêm Khách Hàng</button>
                        <button type="submit" class="btn btn-primary">Thoát</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
  </form>
</div>
<script>
(function() {
  'use strict';
  window.addEventListener('load', function() {
    var forms = document.getElementsByClassName('needs-validation');
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