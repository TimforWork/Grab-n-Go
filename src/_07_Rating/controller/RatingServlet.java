package _07_Rating.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _07_Rating.model.RestRatingBean;
import _07_Rating.model.RestRatingBeanDAO;

@WebServlet("/_06_member/rating.do")
public class RatingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

//		System.out.println("HI Rating");

		String EvaOrd_id = request.getParameter("ord_Id");
		String EvaRestId = request.getParameter("restId");
		String EvaUserName = request.getParameter("username");
		String score = request.getParameter("score");
		String comment = request.getParameter("comment");
		String[] data = new String[]{
			EvaOrd_id,
			EvaRestId,
			EvaUserName,
			score
		};
		System.out.println("EvaOrd_id=" + EvaOrd_id);
		System.out.println("EvaRestId=" + EvaRestId);
		System.out.println("EvaUserName=" + EvaUserName);
		System.out.println("score=" + score);
		System.out.println("comment=" + comment);
		
		for(String st : data){
			if(st==null || st.length()==0){
				System.out.println("取值錯誤 in RatingServlet");
				return;
			}
		}
		
		long lg = System.currentTimeMillis();
		Date d = new Date(lg);

		RestRatingBeanDAO dao = new RestRatingBeanDAO();
		RestRatingBean rrb = new RestRatingBean(Integer.parseInt(EvaOrd_id), Integer.parseInt(EvaRestId), Integer.parseInt(score),
				EvaUserName, comment,d);
		int result = dao.insertRestEva(rrb);
		if(result ==1){
			System.out.println("評價新增成功");
		}
		
		RequestDispatcher rs = request.getRequestDispatcher("order.jsp");
		rs.forward(request, response);
		return;

	}

}
