﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
 
<% 
new CommDAO().delete(request,"users"); 
String id = Info.getUser(request).get("id").toString(); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
ext.put("usertype","会员"); 
new CommDAO().update(request,response,"users",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"users"); 
%>
<BODY>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=1002 align=center>
  <TBODY>
  <TR>
    <TD background=secondhand_files/bj.jpg align=middle>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=800>
        <TBODY>
       
       
       
       
       
       
       
       <jsp:include page="top.jsp"></jsp:include>
                  
                  
                  
                  
                  
                  
                  
                  
        <TR>
          <TD vAlign=top>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                
                
                
                
                
                
                 <jsp:include page="left.jsp"></jsp:include>
                
                
                
                
                
                
                
                
                
                <TD valign="top">
                
                
                <form   action="regeditx.jsp?f=f&id=<%=mmm.get("id")%>"    onSubmit="return checkform()" method="post" name="f1" >
                <TABLE 
                          width="92%" border=0 align="center" cellPadding=0 cellSpacing=0>
                  <TBODY>
                    <TR>
                      <TD><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                            <TR>
                              <TD height=10 colSpan=2></TD>
                            </TR>
                            <TR>
                              <TD width=228 background="secondhand_files/ny_y3.jpg" height="37" align="left">
                              
                             <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改注册信息</strong>                              </TD>
                              <TD 
                                background=secondhand_files/ny_ybj.jpg>&nbsp;</TD>
                            </TR>
                          </TBODY>
                      </TABLE></TD>
                    </TR>
                    <TR>
                      <TD height=20>&nbsp;</TD>
                    </TR>
                    <TR>
                      <TD class=css vAlign=top align=left><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                            <TR>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="23%" 
                                align=center>用户名</TD>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="77%" 
                                align=left>
                                 <%=mmm.get("username")%> </TD>
                            </TR>
<TR>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="23%" 
                                align=center>密码</TD>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="77%" 
                                align=left>
                                 <input type=text  class='' id='userpass' name='userpass' size=35 /><label id='clabeluserpass' /> </TD>
                            </TR>
<TR>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="23%" 
                                align=center>姓名</TD>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="77%" 
                                align=left>
                                 <input type=text  class='' id='truename' name='truename' size=35 /><label id='clabeltruename' /> </TD>
                            </TR>
<TR>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="23%" 
                                align=center>性别</TD>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="77%" 
                                align=left>
                                 <span id="sexdanx"><label><input type=radio name='sex' value='男' />&nbsp;男 </label>
<label><input type=radio name='sex' value='女' />&nbsp;女 </label>
</span> </TD>
                            </TR>
<TR>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="23%" 
                                align=center>QQ</TD>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="77%" 
                                align=left>
                                 <input type=text  class='' id='qq' name='qq' size=35 /><label id='clabelqq' /> </TD>
                            </TR>
<TR>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="23%" 
                                align=center>电话号码</TD>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="77%" 
                                align=left>
                                 <input type=text  class='' id='phoneno' name='phoneno' size=35 /><label id='clabelphoneno' /> </TD>
                            </TR>
<TR>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="23%" 
                                align=center>email</TD>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="77%" 
                                align=left>
                                 <input type=text  class='' id='email' name='email' size=35 /><label id='clabelemail' /> </TD>
                            </TR>
<TR>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="23%" 
                                align=center>家庭住址</TD>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpg width="77%" 
                                align=left>
                                 <input type=text  class='' id='dizhi' name='dizhi' size=35 /><label id='clabeldizhi' /> </TD>
                            </TR>
<TR>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpgg width="23%" 
                                align=center>头像</TD>
                              <TD class=css height=32 
                                background=secondhand_files/ny_xt.jpgg width="77%" 
                                align=left>
                                 <%=Info.getImgUpInfo(65)%> </TD>
                            </TR>

                          </TBODY>
                      </TABLE>
                      <TR>
                      <TD height=33 colSpan=2 align="center"><label>
                        <input type="submit" name="button" id="button" value="提交">&nbsp;&nbsp;&nbsp;
                        <input type=reset value='重置'   />
                      </label></TD>
                      </TR>
                    <TR>
                      <TD colSpan=2 align=middle>&nbsp;</TD>
                    </TR>
                  </TBODY>
                </TABLE>
                </form>
                
                
                
                
                
                
                
                
                
                
                
                </TD>
              </TR></TBODY></TABLE>
              
              
              </TD></TR>
       
       
       
       
       
       
      <jsp:include page="foot.jsp"></jsp:include>
      
      
      
      
      
      
      
      
      
      </TABLE></TD></TR></TBODY></TABLE>
      
<SCRIPT type=text/javascript charset=utf-8 
src="secondhand_files/2462870.jss"></SCRIPT>


</BODY></HTML>
<script type="text/javascript">
<!--
<%if(request.getAttribute("suc")!=null){%>
alert("操作成功");
<%}%>
//-->
</script>
<%
 
String unames = "";
 
 %>
<script type="text/javascript">
<!--
function check()
{
var uname = document.getElementById("uname").value;
if('<%=unames%>'.indexOf(uname)>-1)
{
alert("用户名已存在");
return false;
}
}
//-->
</script>
<script language=javascript src='/secondhand/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/secondhand/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
 
<script language=javascript src='/secondhand/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/secondhand/js/ajax.js'></script> 
<script language=javascript src='/secondhand/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
</script>  
<script language=javascript >  
 function checkform(){  
var userpassobj = document.getElementById("userpass");  
if(userpassobj.value==""){  
document.getElementById("clabeluserpass").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{ 
document.getElementById("clabeluserpass").innerHTML="  ";  
}  
var qqobj = document.getElementById("qq");  
if(qqobj.value!=""){  
if(qqobj.value.length>12||isNaN(qqobj.value)){ 
document.getElementById("clabelqq").innerHTML="&nbsp;&nbsp;<font color=red>QQ必须为12位以内数字</font>";  
return false;
}else{  
document.getElementById("clabelqq").innerHTML="";  
}  
}  
var phonenoobj = document.getElementById("phoneno");  
if(phonenoobj.value!=""){  
if(phonenoobj.value.length>11||phonenoobj.value.length<8||isNaN(phonenoobj.value)){ 
document.getElementById("clabelphoneno").innerHTML="&nbsp;&nbsp;<font color=red>电话号码必须为8-11位数字</font>";  
return false;
}else{  
document.getElementById("clabelphoneno").innerHTML="";  
}  
}  
var emailobj = document.getElementById("email");  
if(emailobj.value!=""){  
var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;  
if(!myreg.test(emailobj.value)){ 
document.getElementById("clabelemail").innerHTML="&nbsp;&nbsp;<font color=red>email格式不正确</font>";  
return false;
}else{  
document.getElementById("clabelemail").innerHTML="";  
}  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
