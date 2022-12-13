<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %> <!-- �ڹ��ڵ� ������ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>�̿�ȳ�</title>
<link rel="stylesheet" href="nav.css" />
<style>

    /* <<�������� �̿�ȳ� Q&A �Խ���>> ��� �κ�  */
    .list a {
        font-size: 20px;
        text-decoration: none;
        color: black;
    }

    /* �����̳�(���̺� �κ�) ũ�� ���� */
    .container {
        width: 1500px;
        margin: 0 auto;
    }


    /* �������� ���̺� �κ� */
    table {
        border-collapse: collapse;
        border-spacing: 0;
    }

    section.notice {
        padding: 80px 0;
    }

    /* title ���� */
    .page-title {
        margin-bottom: 70px;
    }

    .page-title h3 {
        font-size: 28px;
        color: #333333;
        font-weight: 550;
        text-align: center;
    }

    .board-table {
        font-size: 13px;
        width: 100%;
        border-top: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
    }

    .board-table a {
        color: #333;
        display: inline-block;
        line-height: 1.4;
        word-break: break-all;
        vertical-align: middle;
    }

    .board-table a:hover {
        text-decoration: underline;
    }

    .board-table th {
        text-align: center;
    }

    .board-table .th-num {
        width: 100px;
        text-align: center;
    }

    .board-table .th-date {
        width: 200px;
    }

    .board-table th,
    .board-table td {
        padding: 20px 0;
    }

    .board-table tbody td {
        border-top: 1px solid #e7e7e7;
        text-align: center;
    }

    .board-table tbody th {
        padding-left: 28px;
        padding-right: 14px;
        border-top: 1px solid #e7e7e7;
        text-align: left;
    }

    .board-table tbody th p {
        display: none;
    }

    /* �˻� �κ� */
    
    /* �˻� ��ư */
    .btn-dark {
        background: #555;
        color: #fff;
    }

    .btn-dark:hover,
    .btn-dark:focus {
        background: #373737;
        border-color: #373737;
        color: #fff;
    }

    /* �˻�â */
    #board-search .search-wrap {
        position: relative;
        float: right;
        margin: 20 auto;
        width: 80%;
        max-width: 564px;
    }

    #board-search .search-wrap input {
        height: 40px;
        width: 465px;
        font-size: 14px;
        padding: 7px 14px;
        border: 1px solid #ccc;
    }

    #board-search .search-wrap input:focus {
        border-color: #333;
        outline: 0;
        border-width: 1px;
    }

    #board-search .search-wrap .btn {
        position: absolute;
        right: 0;
        top: 0;
        bottom: 0;
        width: 100px;
        padding: 0;
        font-size: 16px;
    }

    .container .page-wrap {
        width:1500px;
    }

    .container .page-wrap .page{
        width: 500px;
        margin: auto;
        margin-right: 21%;
        padding: 50px;
    }

    .container .page .pre{
        padding-right: 10px;
    }


    .container .page a {
        padding-left: 10px;
        margin: auto;
        position: center;
        font-size: 16px;
        color: black;
        text-decoration-line: none;
    }
</style>
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

    <br><br><br><br><br><br>
    <div class="list">
        <center>
            <a href="board-list.jsp">��������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href=""><b>�̿�ȳ�</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="Q&A-list.jsp">Q&A �Խ���</a>
        </center>
    </div>
    <br>
    <hr>

    <section class="notice">
        <div class="page-title">
            <div class="container">
                <h3>�̿�ȳ�</h3>
                <br><br><br>
                <center><img src="guide.PNG" alt=""/></center>
            </div>
        </div>
    </section>
    <br><br><br><br><br><br><br><br><br><br><br><br>
        <footer>
          <p>
          	  <span class="brand"><b>DCR</b></span><br/><br/>
              <span>��ǥ : grade type=����A+</span><br/>
              <span>dongguk@dgu.ac.kr   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp| &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   02-2260-3114</span><br/>
              <span>04620 ����Ư���� �߱� �ʵ��� 1�� 30 �������б�</span><br/>
              <span>Copyright 2022. grade type=����A+. All Rights Reserved.</span>
          </p>
      </footer>
</div> 
</body>
</html>