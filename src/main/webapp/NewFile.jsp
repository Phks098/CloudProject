<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">소속

.page_toparea {
    padding-top: 195px; 
    padding-top: 224px;
}

.subpage .page_toparea {
    padding-bottom: 150px;
    background: #e7f0fc;
}
.grid_content {
    width: 1280px;
    margin: 0 auto;
}

.header_top {
    position: relative;
    margin-bottom: 10px;
    padding: 28px 0;
    height: 90px;
    font-size: 0;
    line-height: 0;
    text-align: right;
}

.page_wrap {
    position: relative;
    z-index: 1;
    width: 100%;
    min-height: 100%;
    background: #fff;
    -webkit-transition: padding 0.3s;
    -moz-transition: padding 0.3s;
    -o-transition: padding 0.3s;
    transition: padding 0.3s;
    overflow: hidden;
}

.header_logo {
    position: absolute;
    top: 50%;
    left: 50%;
    /* width: 167px; */
    height: 50px;
    -webkit-transform: translate(-50%,-50%);
    -moz-transform: translate(-50%,-50%);
    -o-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
}

h1, h2, h3, h4, h5, h6 {
    font-weight: normal;
}

img {
    border: 0;
    vertical-align: middle;
}

html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
    border: 0;
    outline: 0;
    line-height: 1.5em;
    vertical-align: middle;
    letter-spacing: -0.02em;
}

.tbl table {
    width: 100%;
    padding: 8px;
    text-align: center;
    font-size: 1.5rem;
    background-color: #fff;
    border-bottom: 1px solid #d0d2d4;
}

.tbl table tbody td, .tbl table tfoot td {
    padding: 8px;
    text-align: center;
}

.mainsection_tit {
    margin-bottom: 20px;
    color: #1e1e1e;
    font-family: GyeonggiTitle, sans-serif;
    font-size: 2.6rem;
    font-weight: 600;
    letter-spacing: -0.05em;
    line-height: 1;
   
}


.subpage .contents_wrap  .grid_content {
    padding: 25px 20px 5%;
    min-height: calc( 100vh - 350px );
    background: #fff;
    border: 1px solid #e1e1e1;
}

.tbl_row tbody tr td {
    text-align: center;
    border: 1px solid #d0d2d4;
}
.section_marea {
    position: relative;
    margin-bottom: 4%;
}



.section_tit_lg {
    margin-bottom: 0.5em;
    padding: 5px 0 5px 26px;
    color: #3a3a3a;
    font-family: GyeonggiTitle, sans-serif;
    font-size: 2.4rem;
    font-weight: 600;
    letter-spacing: -0.05em;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: auto;
    -webkit-transform: skew(-0.03deg);
    -moz-transform: skew(-0.03deg);
    -o-transform: skew(-0.03deg);
    transform: skew(-0.03deg);
    background: url(https://semsplus.seowon.ac.kr/contents/images/client/sub/icon_tit_lg.png) left 14px no-repeat;
}

.tbl_fixed table {
    table-layout: fixed;
    word-break: break-all;
}




.tbl_row tbody tr th {
    font-weight: 500;
    background-color: #f0f3f7;
    border: 1px solid #d0d2d4;
}

.subpage .contents_wrap > .grid_content {
    padding: 25px 20px 5%;
    min-height: calc( 100vh - 350px );
    background: #fff;
    border: 1px solid #e1e1e1; #자동 줄바꿈
}



.level_table table{
	table-layout: fixed;
    word-break: break-all;
}

.level_table tbody tr th td{
	font-weight: 500;
    background-color: #f0f3f7;
    border: 1px solid #d0d2d4;
}

</style>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<%

String name ;
String number;
String major;
String sub_major;
String belong;
String phone_number;
String addr;



String url = "jdbc:mysql://192.168.111.142:3306/team4";
String id = "test1";
String pw = "123456789";
   
    try{
    	Connection con;
    	Statement stmt;
    	ResultSet rs;
        

        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection(url, id, pw);
        stmt = con.createStatement();
        rs = stmt.executeQuery("select * from student where number = '201710648' ");
        while(rs.next()){
%>

<div class = "page_wrap subpage subpage9">

	<div class="page_toparea">
		
	</div>
	
	<div class ="grid_content">
	<section class ="section_marea">
		<h3 class="section_tit_lg">기본 정보</h3>
		<div class="tbl tbl_fixed tbl_row">
		<table>

				<colgroup>
					
					<col style="width: 20%;">
					<col style="width: 30%;">
					<col style="width: 20%;">
					<col style="width: 30%;">
					
				</colgroup>
				<tbody>
					<tr>
					<th scope="row">단과대학</th>
					<td>미디어융합대학</td>
					<th>소속</th>
					<td><%=rs.getString("name") %> </td>
					</tr>

					<tr>
					<th scope="row">부/복수/연계/융합전공</th>
					<td><%=rs.getString(2)%></td>
					<th>학년</th>
					<td><%=rs.getString(3)%>학년</td>
					</tr>

					<tr>
					<th scope="row">연락처</th>
					<td><%=rs.getString(4)%></td>
					<th>이름</th>
					<td><%=rs.getString(5)%></td>
					</tr>

					<tr>
					<th scope="row">주소</th>
					<td colspan="3"><%=rs.getString(6)%></td>
					</tr>
					
				</tbody>
		</table>
		</div>
		<% }
        
       
    }catch(Exception e){
        out.println("fail<hr>"+e);
    }
 %>
	
	
	
	
</body>
</html>