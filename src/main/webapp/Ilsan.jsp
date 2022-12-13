<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %> <!-- �ڹ��ڵ� ������ -->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="nav.css" />
<style>
img{
    display:block;
    margin:auto;
    width: 660px;
}
</style>
<meta charset="utf-8">
<title>�غ����Դϴ�</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%> <!--   �α����� �ϸ� userID�� ���� �ƴϸ� �ΰ��� ���� -->
	<div id="wrap">
    <nav class="navbar">
        <div class="navbar_logo">
            <a href="main.jsp">
                <h1>DCR</h1>
            </a>
        </div>

        <ul class="navbar_menu">
            <li><a href="reserselectschool.jsp">���� ������</a></li>
            <li><a href="board-list.jsp">������</a></li>
            <li><a href="guest.jsp">����</a></li>
            <li><a href="SiteMap.jsp">����Ʈ��</a></li>
        </ul>

    <%
        if(userID == null) {
    %> <!--�α��� �ȵǾ� �ִ� ������� ���� ȭ�� -->
        <ul class="navbar_icon">
            <li><a href="login.jsp">�α���/ȸ������</a></li>
        </ul>
    <% 
        } else {
    %>  <!-- �α��� ��  ����� ���� ȭ��, �α׾ƿ���ư -->
        <ul class="navbar_icon">
            <li><a href="logoutAction.jsp">�α׾ƿ�</a></li>
            <li><a href="mypage.jsp">����������</a></li>
        </ul>
    <%
        }
    %>
    
            <input type="checkbox" id="menuicon">
        <label for="menuicon" class="menubtn">
        	<span></span>
        	<span></span>
        	<span></span>
        </label>
        
		<div class="sidebar">
            <span class="area_desc">
                <div class="menu">
                    <input type="checkbox" id="expand-menu" name="expand-menu">
                    <ul>
                        <li><a href="reserselectschool.jsp" class="item"><div><b>���� ������</b></div></a></li>
                        <br>
                        <li><a href="board-list.jsp" class="item"><div><b>������</b></div></a></li>
                        <li><a href="board-list.jsp" class="item"><div class="sub_menu">��������</div></a></li>
                        <li><a href="guide.jsp" class="item"><div class="sub_menu">�̿�ȳ�</div></a></li>
                        <li><a href="Q&A-list.jsp" class="item"><div class="sub_menu">Q&A</div></a></li>
                        <br>
                        <li><a href="guest.jsp" class="item"><div><b>����</b></div></a></li>
                        <br>
                        <li><a href="SiteMap.jsp" class="item"><div><b>����Ʈ��</b></div></a></li>
                        <br>
                        <li><a href="mypage.jsp" class="item"><div class="main-menu"><b>����������</b></div></a></li>
                        <li><a href="myinfo.jsp" class="item"><div class="sub_menu">���� ���� Ȯ��</div></a></li>
                        <li><a href="reserpre.jsp" class="item"><div class="sub_menu">���� ���� ����</div></a></li>
                        <li><a href="resernow.jsp" class="item"><div class="sub_menu">���� ���� ����</div></a></li>

                    </ul>
                </div>

            </span>
        </div>
    
    </nav>
    
	<br><br><br><br><br><br><br><br><br><br>
<img src="service.PNG" alt=""/>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <footer>
          <p>
          	  <span class="brand"><b>DCR</b></span><br/><br/><br/>
              <span>��ǥ : grade type=����A+</span><br/>
              <span>dongguk@dgu.ac.kr   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp| &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   02-2260-3114</span><br/>
              <span>04620 ����Ư���� �߱� �ʵ��� 1�� 30 �������б�</span><br/>
              <span>Copyright 2022. grade type=����A+. All Rights Reserved.</span>
          </p>
      </footer>
</div>
</body>
</html>