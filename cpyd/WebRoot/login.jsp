<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>
<SCRIPT language=javascript>
//������ĺϷ���
function checklogin() {
	if (document.form1.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�����������û�����");
		document.form1.username.focus();
	}
	else if (document.form1.password.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�������������룡");
		document.form1.password.focus();
	}
	
	else{
	     form1.submit();
	}
}
</SCRIPT>
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

                           <FORM id=form1 name=form1 action=<%=basePath %>Login.shtml?method=PAGEUSERLOGIN method=post >
                                                                          <TABLE width=600 border=0 align="center" id=Table7>
                                                                            <TBODY>
                                                                              <TR height=40>
                                                                                <TD vAlign=center align=middle colSpan=3>
								<FONT face=����></FONT><BR><FONT color=#ff7700><STRONG>��ӭ��½<%=sysList.get(0).toString() %></STRONG></FONT>
									</TD></TR>
                                                                              <TR>
                                                                                <TD colSpan=3>
                                                                                  <HR class=hui align=center width="98%" SIZE=1>
                                                                                </TD></TR>
                                                                              <TR height=60>
                                                                                <TD align=right width=84 height=110>
								
									</TD>
                                  <TD noWrap align=middle width=171>
                                    <TABLE width="100%" border=0>
                                      <TBODY>
                                    <TR>
                                  <TD width="35%" height=24>�û�����</TD>
                                  <TD>
								  <INPUT class=input_new id=username style="WIDTH: 110px" size=15 maxLength=10 name=username onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" 
                              onkeyup="value=value.replace(/[\W]/g,'')"  value=<%=request.getAttribute("reg_user")==null?"":request.getAttribute("reg_user") %>>
								  </TD>
								  </TR>
                                  <TR>
                                  <TD height=25>�ܡ��룺</TD>
                                  <TD height=25>
								  <INPUT class=input_new id=password style="WIDTH: 110px" type=password size=15  maxLength=16 name=password onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" 
                              onkeyup="value=value.replace(/[\W]/g,'')">
								  </TD>
								  </TR>
								  <TR>
                                  <TD colspan=2 height=25><input type=hidden name=reg_type value=person>
								  
								  </TD>
								  </TR>

								  <TR>
                                  <TD height=25></TD>
                                  <TD height=25><input type=button value="��¼" onClick="checklogin()"></TD>
								  </TR>
								  </TBODY>
								  </TABLE>
								  </TD>
                                  <TD width=81>
								  
								  </TD>
								  </TR>
								  <TR>
									<TD vAlign=center height=20>
								<DIV id=Login1_ValidationSummary2 style="DISPLAY: none; COLOR: red" showmessagebox="True" showsummary="False"></DIV></TD>
                                  <TD class=red1 vAlign=center>
								  <A class=dhx12 href=""></A>
								  </TD>
                                  <TD vAlign=center>
									<A href="<%=basePath %>reg2.jsp">ע��</A>
								</TD>
								</TR>
							  <TR>
								<TD vAlign=center colSpan=3 height=22>
								  <HR class=hui align=center width="98%" SIZE=1>
							    </TD></TR>
							  <TR height=40>
								<TD class=buttomtxt align=middle colSpan=3 height=21>
								</TD>
								</TR>
								</TBODY>
							 </TABLE>
</FORM>


<%@ include file="iframe/foot.jsp"%>
