package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import vo.Student;
import vo.Teacher;
public class TeacherDao {
	private Connection conn = null;
	public void initConnection() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Group1","jyootai","1234");
	}
	public Teacher getTeacherByTeano(String teano) throws Exception{
		Teacher tea = null;
		this.initConnection();
		Statement stat = conn.createStatement();
		String sql = "select * from t_teacher where teano='"+teano+"'";
		ResultSet rs = stat.executeQuery(sql);
		if(rs.next()){
			tea = new Teacher();
			tea.setTeano(teano);
			tea.setPassword(rs.getString("teapwd").trim());
			tea.setTeaname(rs.getString("teaname").trim());
			tea.setTeasex(rs.getString("teasex").trim());
			tea.setTitle(rs.getString("title").trim());
		}
		this.closeConnection();
		return tea;		
	}
	public void updateTeacher(Teacher tea) throws Exception{
		this.initConnection();
		String sql = "update t_teacher set teapwd=? where teano=?";
		PreparedStatement ps = conn.prepareStatement(sql);		
		ps.setString(1, tea.getPassword());
		ps.setString(2, tea.getTeano());
		ps.executeUpdate();
		this.closeConnection();
	} 
	public void closeConnection() throws Exception{
		conn.close();
	}
	
}
