<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312" 
pageEncoding="gb2312"%>
<%@ page import="com.bean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../images/wicketstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="../images/wicketjs.js"></script>
<script type="text/javascript" src="../images/jquery.js"></script>
<link href="../images/citywicket.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function f1()
{

 form1.submit();
}
</script>
</head>

<body>
<div id="homecontent"> 
<div id="pane1">
<div id="leftchoose">
<form action="<%=basePath %>member/info/searchinfo.jsp" method="post" name="form1" >
<span id="textbox_start"></span><span id="textbox_city_name"><span class="chooseitem">�������뵽�ĵط���

<input name="final_city" type="text" id="city_name"  size="8"  />
</span></span>

<br><span class="map_search">
<a onclick="f1()" >ȷ��</a>

<a onclick="clear_textbox();" style="cursor:pointer;">���</a>
</span>
</form>
</div>

<!-- ����ID���ֿ�ʼ-->
 <div id="cityname">
 
 
 <div id="guangzhou"><a href="#" onclick="cg_dity('����');">����</a></div>
 <div id="shenzhen"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="zhanjiang"><a href="#" onclick="cg_dity('����-տ��');">տ��</a></div>
 <div id="xianggan"><a href="#" onclick="cg_dity('����-���');">���</a></div>
 <div id="shantou"><a href="#" onclick="cg_dity('����-��ͷ');">��ͷ</a></div>
 <div id="hainan"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="aomen"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
<div id="liuzhou"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="nanning"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
 
 <div id="kunming"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
 <div id="xiamen"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="fuzhou"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="wenzhou"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
<div id="hangzhou"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="shanghai"><a href="#" onclick="cg_dity('����-�Ϻ�');">�Ϻ�</a></div>
 <div id="nanjing"><a href="#" onclick="cg_dity('����-�Ͼ�');">�Ͼ�</a></div>
 <div id="xuzhou"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
<div id="jinan"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="tianjin"><a href="#" onclick="cg_dity('����-���');">���</a></div>
 <div id="shijiazhuang"><a href="#" onclick="cg_dity('����-ʯ��ׯ');">ʯ��ׯ</a></div>
 <div id="beijing"><a href="#" onclick="cg_dity('����-����');">����</a></div>

 <div id="daliang"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="shenyang"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="jilin"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
 
 <div id="haerbin"><a href="#" onclick="cg_dity('����-������');">������</a></div>
 <div id="qiqihaer"><a href="#" onclick="cg_dity('����-�������');">�������</a></div>
 <div id="changchun"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
 <div id="changsha"><a href="#" onclick="cg_dity('����-��ɳ');">��ɳ</a></div>
 <div id="zhuzhou"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="nanchang"><a href="#" onclick="cg_dity('����-�ϲ�');">�ϲ�</a></div>
 
 <div id="wuhan"><a href="#" onclick="cg_dity('����-�人');">�人</a></div>
 <div id="xiangfan"><a href="#" onclick="cg_dity('����-�差');">�差</a></div>
 
 
 
 <div id="zhengzhou"><a href="#" onclick="cg_dity('����-֣��');">֣��</a></div>
 <div id="luoyang"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
 <div id="xian"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="ankang"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
 <div id="taiyuan"><a href="#" onclick="cg_dity('����-̫ԭ');">̫ԭ</a></div>
 <div id="huhehaote"><a href="#" onclick="cg_dity('����-���ͺ���');">���ͺ���</a></div>
 
 <div id="baotou"><a href="#" onclick="cg_dity('����-��ͷ');">��ͷ</a></div>
 <div id="yinchuan"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 
 
 <div id="lanzhou"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="chengdu"><a href="#" onclick="cg_dity('����-�ɶ�');">�ɶ�</a></div>
 
 <div id="xining"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="yumen"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="geermu"><a href="#" onclick="cg_dity('����-���ľ');">���ľ</a></div>
 <div id="hami"><a href="#" onclick="cg_dity('����-����');">����</a></div>
 <div id="wulumuqi"><a href="#" onclick="cg_dity('����-��³ľ��');">��³ľ��</a></div>
 
 
 
  </div>
<!-- ����ID���ֽ���-->

</div>
  
</div> 

</div>
</body>
</html>
