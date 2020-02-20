<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <mt:admin_template title="Tài khoản">
    	<jsp:attribute name="content">
    		<div class="card shadow mb-4">
            <div class="card-header py-3">
              <h3 class="m-0 font-weight-bold text-primary d-inline">Bảng tài khoản</h3>
              <a href="adminthemtaikhoan" class="btn btn-success btn-icon-split float-right d-inline">
                    <span class="icon text-white-50">
                      <i class="fas fa-user-plus"></i>
                    </span>
                    <span class="text">Thêm tài khoản</span>
                  </a>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
                <thead>
                    <tr>
                      		<th>Mã tài khoản</th>
                    		<th >Tên đăng nhập</th>
                    		<th >Mật khẩu</th>
                    		<th >Mail</th>
                    		<th >Mã quyền</th>
                    		<th></th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
          					<th>Mã tài khoản</th>
                    		<th>Tên đăng nhập</th>
                    		<th >Mật khẩu</th>
                    		<th>Mail</th>
                    		<th >Mã quyền</th>
                    		<th></th>
                    </tr>
                  </tfoot>
                  <tbody id="bang">    
                 
                     <c:forEach items="${listtk}" var="tk">
                      	<tr>
                      	 	<td>${tk.maTK}</td>
                      		<td>${tk.taiKhoan}</td>
                      		<td>${tk.matKhau}</td>
                      		<td>${tk.mail}</td>
                      		<td>${tk.maQ} </td>
                      		<td>
                      			<a href="adminchinhsuataikhoan?matk=${tk.maTK}" class="btn-icon-split rounded-circle">
                    				<span class="icon">
                      					<i class="fas fa-edit"></i>
                    				</span>
                  				</a>
                  				<button onclick="xoataikhoan(deletetaikhoan,'${tk.maTK}')" class="btn-icon-split rounded-circle">
                    				<span class="icon">
                      					<i class="fas fa-eraser"></i>
                    				</span>
                  				</button>
                  			</td>
                    	</tr>
          				</c:forEach>
                   </tbody>
                </table>
               </div>
            </div>
            <script>
            	function deletetaikhoan(matk){
            		xmlhttp = new XMLHttpRequest();
            		xmlhttp.onreadystatechange = function(){
            			var txt="",xmlhttp,list,obj;
            			if(this.readyState ==4 && this.status ==200){
            				console.log(this.responseText);
            				list = JSON.parse(this.responseText);
  							if(list==null){
  								window.alert("Xóa không thành công !");
  							} else{
  								for(tk in list){
  	            					txt+="<tr>";
  	                          	 	txt+="<td>"+list[tk].MaTK+"</td>";
  	                          		txt+="<td>"+list[tk].TaiKhoan+"</td>";
  	                          		txt+="<td>"+list[tk].MatKhau+"</td>";
  	                          		txt+="<td>"+list[tk].Mail+"</td>";
  	                          		txt+="<td>"+list[tk].MaQ +"</td>";
  	                          		txt+="<td>";
  	                          			txt+="<a href=\"adminchinhsuataikhoan?matk="+list[tk].MaTK+" class=\"btn-icon-split rounded-circle\">";
  	                        				txt+="<span class=\"icon\">";
  	                          					txt+="<i class=\"fas fa-edit\"></i>";
  	                        				txt+="</span>";
  	                      				txt+="</a>";
  	                      				txt+="<button  onclick=\"deletetaikhoan("+list[tk].MaTK+")\" class=\"btn-icon-split rounded-circle\">";
  	                        				txt+="<span class=\"icon\">";
  	                          					txt+="<i class=\"fas fa-eraser\"></i>";
  	                        				txt+="</span>";
  	                      				txt+="</button>";
  	                      			txt+="</td>";
  	                        	txt+="</tr>";
  	            				}
  	            			document.getElementById("bang").innerHTML =txt;
  							}
            			}
            		}
            		 obj={"MaTK":matk,"MatKhau":1213445};
            		 dbParam=JSON.stringify(obj);
            		 xmlhttp.open("POST","adminxoataikhoan", true);
            		 xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            		 xmlhttp.send("matk=" + dbParam);
            	}
            function xoataikhoan(delTaiKhoan,matk){
            		  var txt;
            		  if (confirm("Bạn chắc chắn muốn xóa!")) {
            		    delTaiKhoan(matk);
            		  }
            }
            </script>
    	</jsp:attribute>
    </mt:admin_template>

          

