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
<%
String member=(String)session.getAttribute("member");
		List list2=yb.getPrep(member);		
%>
<!-- ��Ʊ��Ա ���� ����ʱ�� Ʊ�� �Ƿ������� ��Ӳ�� ���� ��ȡ������Ʊ ������� -->
<BODY >
 <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>���</TD>
			<TD>����·��</TD>
			<TD>����</TD>
			<TD>����ʱ��</TD>
			<TD>��վʱ��</TD>
			<TD>��Ʊ����</TD>
			<TD>Ʊ��</TD>
			<TD>����</TD>

			<TD>��Ʊʱ��</TD>
			<TD>�޸�</TD>
			<TD>��Ʊ</TD>
		  </TR>
		<%
		if(list2.size()!=0){
			for(int i = 0; i<list2.size(); i++){
				List list3 = (List)list2.get(i);
		%>
		  <TR  align="center" bgColor=#ffffff>
			<TD width="30" id=map><%=i+1 %></TD>
			<TD id=map><%=list3.get(1).toString() %></TD>
			<TD id=map><%=list3.get(2).toString() %></TD>
			<TD id=map><%=list3.get(3).toString() %></TD>
			<TD id=map><%=list3.get(4).toString() %></TD>
			<TD id=map><%=list3.get(5).toString() %></TD>
			<TD id=map><%=list3.get(6).toString() %></TD>
			<TD id=map><%=list3.get(7).toString() %></TD>
			<TD id=map><%=list3.get(10).toString() %></TD>
			<TD id=map><a href="<%=basePath %>member/info/upprep.jsp?method=upPrep&id=<%=list3.get(0).toString()%>">�޸�</a></TD>
			<TD id=map><a href="<%=basePath %>Job.shtml?method=mdelPrep&id=<%=list3.get(0).toString()%>">��Ʊ</a></TD>
		  </TR>
		<%}}%>
		 </TBODY>
	   </TABLE>
	  
</BODY>
</HTML>
