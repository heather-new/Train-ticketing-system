<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<jsp:useBean id="sys" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="tb" scope="page" class="com.bean.TrainBean"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List sysList=sys.getSiteInfo();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE><%=sysList.get(0).toString() %></TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META name="keywords" content="<%=sysList.get(2).toString() %>" />
<META name="description" content="<%=sysList.get(3).toString() %>" />

<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
<LINK href="<%=basePath %>images/css.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>images/default.css" type=text/css rel=stylesheet>
</HEAD>
<SCRIPT language=JavaScript src="<%=basePath %>images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/index.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/calendar.js"></SCRIPT>
<%if(sysList.get(5).toString().trim().equals("open")){ %>
<SCRIPT language=JavaScript>
<!--//���γ������
function killErr(){
	return true;
}
window.onerror=killErr;
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//��������һ������С����
function autoTable(div){
	fs=document.getElementById(div).getElementsByTagName("TABLE");
	for(var i=0;i<fs.length;i++){
		fs[i].style.width='49.5%';
		if(i%2==1){
			if (document.all) {
				fs[i].style.styleFloat="right";
			}else{
				fs[i].style.cssFloat="right;";
			}
		}else{
			if (document.all) {
				fs[i].style.styleFloat="left";
			}else{
				fs[i].style.cssFloat="left;";
			}
		}
	}
}
//-->
</SCRIPT>
<SCRIPT language=JavaScript src="images/inc.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/default.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/swfobject.js"></SCRIPT>
</HEAD>
<BODY text=#fffff bgColor=#fffff leftMargin=0 topMargin=0>
<SCRIPT language=JavaScript>
<!--//Ŀ����Ϊ������񷽱�
document.write('<div class="wrap">');
//-->
</SCRIPT>

<TABLE id=header cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<TBODY>
  <TR>
    <TD>
    <tr>
	    <td><div align="center" style="FONT-WEIGHT: bold; FONT-SIZE: 30pt;">��ƱԤ��ϵͳ</div></td>
	 </tr>
       <DIV class=ad id=banner>
      <OBJECT codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0 
	  height=160 width=950 classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000>
	  <PARAM NAME="movie" VALUE="images/top3.jpg">
	  <PARAM NAME="quality" VALUE="high">
 	  <embed src="images/top3.jpg" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" 
      type="application/x-shockwave-flash" width="700" height="160">
      </embed>      
      </OBJECT>
	  </DIV>
	</TD>
  </TR>
 </TBODY>
</TABLE>
<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<TBODY>
  <TR>
    <TD align=middle>
	<!--****************���˵���ʼ****************-->
	
	<A href="index.jsp" target="">��    ҳ</A> |
	
	<A href="news.jsp" target="">������Ϣ</A> |
	
	<A href="member/index.jsp" target="">�û���¼</A> |
	
	<A href="search.jsp" target="">���β�ѯ</A> |
	
	<A href="admin/login.jsp" target="">����Ա��¼</A> 
		<A href="admin/map.jsp" target="">��ͼ��ѯ</A> 
	<!--****************���˵�����****************-->
	</TD>
  </TR>
</TBODY>
</TABLE>



