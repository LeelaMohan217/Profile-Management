package test;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		UserBean ub = new LoginDAO().login(req);
		if (ub == null) {
			req.setAttribute("msg", "Invalid Login Process.<br>");
			RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
			rd.forward(req, res);
		} else {

			ServletContext sct = req.getServletContext();
			sct.setAttribute("ubean", ub);
			String fName = ub.getfName();
			String encodedValue = URLEncoder.encode(fName, "UTF-8");
			Cookie ck = new Cookie("FirstName", encodedValue);

			res.addCookie(ck);

			RequestDispatcher rd = req.getRequestDispatcher("LogSuccess.jsp");
			rd.forward(req, res);
		}
	}
}
