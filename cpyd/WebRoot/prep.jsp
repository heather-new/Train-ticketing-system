<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<LINK href="images/default.css" type=text/css rel=stylesheet>
<LINK href="images/css.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
.ycbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-COLOR: #EAF2EF; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-IMAGE: url(images/head1.gif); BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsnr {
	DISPLAY: block
}
.ycnr {
	DISPLAY: none
}
</STYLE>
<SCRIPT type=text/javascript>
function tb_xs(t,m,n){
for(var i=1;i<=m;i++){
if (i != n){
document.getElementById("tb"+t+ "_bt" + i).className= "ycbt";
document.getElementById("tb"+t+ "_nr" + i).className= "ycnr";}
else{
document.getElementById("tb"+t+ "_bt" + i).className= "xsbt";
document.getElementById("tb"+t+ "_nr" + i).className= "xsnr";}}}
</SCRIPT>
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
<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
</HEAD>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<SCRIPT language=JavaScript>
<!--//Ŀ����Ϊ������񷽱�
document.write('<div class="wrap">');
//-->
</SCRIPT>
      <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        
		<TR>
		<TD  class=middle align="left" >
               <TABLE cellSpacing=0 cellPadding=0 width="940" border=0>
                    <TBODY>
                   
        <TR>
          <TD  >
        <form action="<%=basePath %>Job.shtml?method=addPrep" method=post name=from1 onsubmit="return check()">
		 <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" >
			
			<TD height=23 colspan=2 align=left>Ԥ����Ʊ</TD>
		  </TR>
		<%String id=(String)request.getAttribute("id");
		List list2=tb.getOneTrain(id);
		if(list2.size()!=0){		%>
		  <TR  align="center" bgColor=#ffffff>
			<TD id=map align=right widht=50%>·&nbsp;&nbsp;&nbsp;&nbsp;�ߣ�<input type=hidden name=id value=<%=id %>></TD>
			<TD id=map align=left><%=list2.get(1).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>��&nbsp;&nbsp;&nbsp;&nbsp;�Σ�</TD>
			<TD id=map align=left><%=list2.get(2).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>����ʱ�䣺</TD>
			<TD id=map align=left><%=list2.get(3).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>����ʱ�䣺</TD>
			<TD id=map align=left><%=list2.get(4).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>��λ���ͣ�</TD>
			<TD id=map align=left><%=list2.get(5).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>Ʊ&nbsp;&nbsp;&nbsp;&nbsp;�ۣ�</TD>
			<TD id=map align=left><%=list2.get(6).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>��&nbsp;&nbsp;&nbsp;&nbsp;����</TD>
			<TD id=map align=left><input type=text size=10 name=numb></TD>
		</TR>
	
		<TR><TD align="center" bgColor=#ffffff colspan=2><input type=submit value="�ύ"></TD>
		</TR>
		<%}%>
		 </TBODY>
	   </TABLE>
</form>
<script type="text/javascript">
function check()
{
	if(document.from1.numb.value=="")
	{
		alert("������Ʊ����");
		return false;
	}
	if(document.from1.pay.value=="")
	{
		alert("��ѡ�񸶿ʽ��");
		return false;
	}
	if(isNaN(document.from1.numb.value))
	{
		alert("Ʊ��ֻ��Ϊ���֣�");
		document.from1.numb.focus();
		return false;
	}
}
</script>
<SCRIPT language=JavaScript>
<!--//Ŀ����Ϊ������񷽱�
document.write('</div>');
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--
clickEdit.init();
//-->
</SCRIPT>
</BODY>
</HTML>

<%@ include file="iframe/foot.jsp"%>