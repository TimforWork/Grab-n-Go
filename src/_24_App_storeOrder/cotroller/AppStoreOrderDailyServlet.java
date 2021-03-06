package _24_App_storeOrder.cotroller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import _05_orderProcess.model.OrderBean;
import _05_orderProcess.model.OrderDAO;

@SuppressWarnings("serial")
@WebServlet("/AppStoreOrderDailyServlet")
public class AppStoreOrderDailyServlet extends HttpServlet {
	private final static String CONTENT_TYPE = "text/html; charset=UTF-8";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType(CONTENT_TYPE);

		//解開從App取得的Gson
		Gson gson = new Gson();
		BufferedReader br = request.getReader();
		StringBuffer jsonIn = new StringBuffer();
		String line = null;
		while ((line = br.readLine()) != null) {
			jsonIn.append(line);
		}
		System.out.println("jsonIn = " + jsonIn);
		JsonObject jsonObject = gson.fromJson(jsonIn.toString(), JsonObject.class);
		
		String param = jsonObject.get("param").getAsString();
		List<OrderBean> list = new ArrayList<>();
		List<List<String>> itemSummary = new ArrayList<List<String>>();
		Map<String, Integer> map = new HashMap<>();
		OrderDAO dao = new OrderDAO();
		int n = -1;
		if (param.equals("DailyOrdersActivity")) {
			int rest_id = Integer.parseInt(jsonObject.get("rest_id").getAsString());
			String status = jsonObject.get("status").getAsString();			
			dao.setRestId(rest_id);
			dao.setOrd_status(status);
			list = dao.getStoreOrdersDailyForApp();
		} else if (param.equals("InprogressOrderItemSummaryActivity")) {
			int rest_id = Integer.parseInt(jsonObject.get("rest_id").getAsString());
			dao.setRestId(rest_id);
			itemSummary = dao.getStoreOrdersDetailsForApp();
		} else if (param.equals("OrderIsRead")) {
//			int ord_id = Integer.parseInt(jsonObject.get("ord_id").getAsString());
			String ord_id = jsonObject.get("ord_id").getAsString();
			n = dao.readOrder(ord_id);
			map.put( "readOrder", n);
		}
		
		//將訂單資料送回App
		PrintWriter out = response.getWriter();
		if (param.equals("DailyOrdersActivity")) {
			out.println(gson.toJson(list));
//			System.out.println("list = " + list);
		} else if (param.equals("InprogressOrderItemSummaryActivity")) {
			out.println(gson.toJson(itemSummary));
//			System.out.println("itemSummary = " + itemSummary);
		} else if (param.equals("OrderIsRead")) {
			out.println(gson.toJson(map));
			System.out.println("map = " + map);
		}
		out.close();
	}
}
