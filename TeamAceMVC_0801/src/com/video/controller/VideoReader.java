package com.video.controller;

import java.io.*;
import java.sql.*;

import javax.naming.Context;
import javax.naming.NamingException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.sql.DataSource;

@WebServlet("/front-end/home/VideoReader.do")
public class VideoReader extends HttpServlet {

	private static final long serialVersionUID = -7354226099077105196L;
	Connection con;

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		res.setContentType("video/quicktime");
		ServletOutputStream out = res.getOutputStream();
		
		try {
			Statement stmt = con.createStatement();
			String vdo_no= req.getParameter("vdo_no").trim();
			ResultSet rs = stmt.executeQuery(
				"SELECT vdo FROM video WHERE vdo_no = '"+vdo_no+"'" );

			if (rs.next()) {
				BufferedInputStream in = new BufferedInputStream(rs.getBinaryStream("vdo"));
				byte[] buf = new byte[4 * 1024]; // 4K buffer
				int len;
				while ((len = in.read(buf)) != -1) {
					out.write(buf, 0, len);
				}
				in.close();
			} else {
//				res.sendError(HttpServletResponse.SC_NOT_FOUND);
				
				InputStream in = getServletContext().getResourceAsStream("/NoData/no.png");
				byte[] b = new byte[in.available()];
				in.read(b);
				out.write(b);
				in.close();
				
			}
			rs.close();
			stmt.close();
		} catch (Exception e) {
			
			InputStream in = getServletContext().getResourceAsStream("/NoData/null.png");
			byte[] b = new byte[in.available()];
			in.read(b);
			out.write(b);
			in.close();
		}
	}

	public void init() throws ServletException {
		try {
			Context ctx = new javax.naming.InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/TestDB");
			con = ds.getConnection();
		} catch (NamingException e) {			
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void destroy() {
		try {
			if (con != null) con.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

}