<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile - Enomy-Finance</title>
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
	<style><%@include file="/WEB-INF/resource/css/header-footer.css"%></style>
    <style><%@include file="/WEB-INF/resource/css/style-new.css"%></style>
</head>
<body>
	
	<jsp:include page="../components/Toast.jsp"/>
	<jsp:include page="../components/dashboardNav.jsp"/>
	
	<div class="lebel-text-box">
		<label>Profile</label>
	</div>

    <div class="container-form">
    <form method="post" action="${pageContext.request.contextPath}/User/info/save" class="box-form form-panel">
        <h3>Manage Your Account</h3>
        <div class="row-form">
            <div class="input-group-form">
                <label >Username</label>
                <input name="username" value="${myuser.username != null ? myuser.username : ''}" type="text" class="input-box-p">
            </div>
            <div class="input-group-form">
                <label >Email address</label>
                <input name="email" value="${myuser.email != null ? myuser.email : ''}" type="text" class="input-box-p">
            </div>
        </div>
        <div class="input-group-form line-p">
            <label>Contact No.</label>
            <input type="text" placeholder="xx-xxx-xxxx-xx" name="contactNo" class="input-box-p" value="${myuser.contactNo != null ? myuser.contactNo : ''}">
            <label>Your Address</label>
            <textarea style="height: 60px;" placeholder="Enter Your Address" name="address" class="input-box-p"required>${myuser.address != null ? myuser.address.trim() : ''}</textarea>
            <input type="text" style="display: none;" name="userType">
        </div>
        <span class="line-dash"></span>
        <div class="row">
            <div class="input-group-form">
                <label>Current Password</label>
                <input type="text" class="input-box-p" name="currentPass">
            </div>
            
            <div class="input-group-form">
                <label>New Password</label>
                <input type="text" class="input-box-p" name="newPass">
            </div>
        </div>
        <div class="buttons-con">
            <button class="button-p-red" type="reset">Discard Changes</button>
            <button class="button-p-blue" type="submit">Save Changes</button>
        </div>
    </form>
    </div>
    <jsp:include page="../components/footer.jsp" />
    
    <script><%@include file="/WEB-INF/resource/js/form-slider.js"%></script>
    
</body>
</html>