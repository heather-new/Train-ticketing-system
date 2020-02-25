package com.action;

/**
 * 会员中心求职招聘信息发布 修改 删除
 */

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.TrainBean;
import com.bean.SystemBean;
import com.util.Constant;
import com.util.Filter;

public class JobServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public JobServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType(Constant.CONTENTTYPE);
		request.setCharacterEncoding(Constant.CHARACTERENCODING);
		HttpSession session = request.getSession();		
		TrainBean tb=new TrainBean();
		/////////////////////////////////////////////////////////////////////////////////////////线路 
		String method=request.getParameter("method").trim();
		if(method.equals("addTrain")){
			String train=request.getParameter("train");
			String num=request.getParameter("num");
			String stime=request.getParameter("stime");
			String etime=request.getParameter("etime");
			String sitetype=request.getParameter("sitetype");
			String price=request.getParameter("price");
			int flag=tb.addTrain(train, num, stime, etime, sitetype, price);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/train/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护！");
				request.getRequestDispatcher("admin/train/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("upTrain")){
			String id=request.getParameter("id");
			String train=request.getParameter("train");
			String num=request.getParameter("num");
			String stime=request.getParameter("stime");
			String etime=request.getParameter("etime");
			String sitetype=request.getParameter("sitetype");
			String price=request.getParameter("price");
			int flag=tb.upTrain(Integer.parseInt(id),train, num, stime, etime,  sitetype, price);
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/train/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护！");
				request.getRequestDispatcher("admin/train/index.jsp").forward(request, response);
			}
		}
		else if(method.equals("delTrain")){
			String id=request.getParameter("id");
			int flag=tb.delTrain(Integer.parseInt(id));
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/train/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护！");
				request.getRequestDispatcher("admin/train/index.jsp").forward(request, response);
			}
		}
		/////////////////////////////////////////////////////////////////////////订票
		//String train,String num,String stime,String etime,String sitetype,String price,int numb,String pay,String member,String flag
		else if(method.equals("addPrep")){
			String id=request.getParameter("id");
			List list=tb.getOneTrain(id);
			String train=list.get(1).toString();
			String num=list.get(2).toString();
			String stime=list.get(3).toString();
			String etime=list.get(4).toString();
			String sitetype=list.get(5).toString();
			String price=list.get(6).toString();
			String numb=request.getParameter("numb");
			String pay=request.getParameter("pay");
			String member=(String)session.getAttribute("member");
			int flagf=tb.addPrep(train, num, stime, etime, sitetype, price, Integer.parseInt(numb), pay, member);
			if(flagf==Constant.SUCCESS){
				request.setAttribute("message", "操作成功，如需修改查看请到会员中心！");
				request.getRequestDispatcher("news.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护！");
				request.getRequestDispatcher("news.jsp").forward(request, response);
			}
		}
		else if(method.equals("upPrep")){
			String id=request.getParameter("id");
			String numb=request.getParameter("numb");
			String pay=request.getParameter("pay");
			int flag2=tb.upPrep(Integer.parseInt(id), Integer.parseInt(numb), pay);
			if(flag2==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("member/info/my.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护！");
				request.getRequestDispatcher("member/info/my.jsp").forward(request, response);
			}
		}
		else if(method.equals("delPrep")){
			String id=request.getParameter("id");
			int flag=tb.delPrep(Integer.parseInt(id));
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/sale/prep.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护！");
				request.getRequestDispatcher("admin/sale/prep.jsp").forward(request, response);
			}
		}
		else if(method.equals("mdelPrep")){
			String id=request.getParameter("id");
			int flag=tb.delPrep(Integer.parseInt(id));
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("member/info/my.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护！");
				request.getRequestDispatcher("member/info/my.jsp").forward(request, response);
			}
		}
		else if(method.equals("prepTrain")){
			String id=request.getParameter("id");
			String member=(String)session.getAttribute("member");
			if(member==null){
				request.setAttribute("message", "请先登录后再预定车票！");
				request.getRequestDispatcher("news.jsp").forward(request, response);
			}
			else{			
				request.setAttribute("id", id);
				request.getRequestDispatcher("prep.jsp").forward(request, response);
			}			
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
