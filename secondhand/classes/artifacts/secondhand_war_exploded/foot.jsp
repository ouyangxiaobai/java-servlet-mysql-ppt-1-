<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CommDAO"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.qyyqyj.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE> 校园闲置书籍交易系统</TITLE>
<LINK rel=stylesheet type=text/css 
href="style/css.css">

<STYLE type=text/css>BODY {
	BACKGROUND-IMAGE: none; MARGIN: 0px
}
</STYLE>
<LINK rel=stylesheet type=text/css href="secondhand_files/style.css">
<STYLE type=text/css>.STYLE3 {
	COLOR: #333333; FONT-SIZE: 12px
}
A:link {
	TEXT-DECORATION: none
}
A:visited {
	TEXT-DECORATION: none
}
A:hover {
	TEXT-DECORATION: none
}
A:active {
	TEXT-DECORATION: none
}
</STYLE>

<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<BODY>



      
        <TR>
          <TD height=12></TD></TR>
        <TR>
          <TD bgColor=#006699 height=28 align=middle><SPAN class=bold_txt><A 
            style="CURSOR: hand" 
            onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://localhost:8888/secondhand')" 
            href="http://localhost:8888/secondhand">设为首页</A>&nbsp;&nbsp;|&nbsp;&nbsp;<A 
            href="javascript:window.external.AddFavorite('http://localhost:8888/secondhand','企业与企业家')">加入收藏</A> 
           </SPAN></TD></TR>
        <TR>
          <TD class=css height=110 align=middle>
          <%
          for(HashMap map:new CommDAO().select("select * from yqlj order by id desc ")){
           %>
           <a href="<%=map.get("ljurl") %>"><font color=gray><%=map.get("ljname") %></font></a>  &nbsp;&nbsp;&nbsp;
           <%} %>
          <br />
		<div class="am-g">
		<div class="bot ">
			<div style="margin: 0 auto; width: 700px; height: 30px;">
				<p style="font-size: 11.5px;  line-height: 10px;">
					© &nbsp;2022 校园闲置书籍交易系统 版权所有 ，并保留所有权利 <span
						style="margin-left: 20px;"> 开发者 ：xxx </span>
				</p>
			</div>
		</div>
	</div>
          <br />

          <br />

          
          
          </TD></TR>
  
  
  
  
  
  
  
</BODY></HTML>

