<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.bean.*" %>
<jsp:useBean id="yb" scope="page" class="com.bean.TrainBean" />
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>��̨������</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
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

<!-- ��Ʊ��Ա ���� ����ʱ�� Ʊ�� �Ƿ������� ��Ӳ�� ���� ��ȡ������Ʊ ������� -->
<BODY >
 <form action="<%=basePath %>Job.shtml?method=upPrep" method=post name=from1 onsubmit="return check()">
		 <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" >
			
			<TD height=23 colspan=2 align=left>Ԥ����Ʊ</TD>
		  </TR>
		<%String id=request.getParameter("id");
		List list2=yb.getOnePrep(id);
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
			<TD id=map align=left><input type=text size=10 name=numb value=<%=list2.get(7).toString() %>></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			
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

	if(isNaN(document.from1.numb.value))
	{
		alert("Ʊ��ֻ��Ϊ���֣�");
		document.from1.numb.focus();
		return false;
	}
}
</script>
</BODY>
</HTML>
