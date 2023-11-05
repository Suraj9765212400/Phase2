package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.caltech.DButil.dbutil;
import com.caltech.pojo.Participant;
import com.caltech.pojo.batchuser;



public class ParticipantDAO {

			
			//retrive all
		public List<Participant> displayParticipant() throws ClassNotFoundException, SQLException{
			Connection con = dbutil.dbconn();
			  String sql="select * from participant left  join batchuser  on participant.pid = batchuser.pid";
			  PreparedStatement ps=con.prepareStatement(sql);
				List<Participant> list=new ArrayList<>();
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					Participant part = new Participant();
					part.setPid(rs.getInt("pid"));
					part.setPname(rs.getString("pname"));
					part.setPemail(rs.getString("pemail"));
					part.setPaddress(rs.getString("paddress"));
					part.setPassword(rs.getString("password"));
					part.setBid(rs.getInt("bid"));
					
					list.add(part);
				}
				return list;
		}
		
		public List<Participant> displaybyid(int pid) throws ClassNotFoundException, SQLException{
			Connection con = dbutil.dbconn();
			  String sql="select * from participant left  join batchuser  on participant.pid = batchuser.pid where participant.pid = ?";
			  
			  PreparedStatement ps=con.prepareStatement(sql);
			  ps.setInt(1, pid);
				List<Participant> list=new ArrayList<>();
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					Participant part = new Participant();
					part.setPid(rs.getInt("pid"));
					part.setPname(rs.getString("pname"));
					part.setPemail(rs.getString("pemail"));
					part.setPaddress(rs.getString("paddress"));
					part.setPassword(rs.getString("password"));
					part.setBid(rs.getInt("bid"));
					
					list.add(part);
				}
				return list;
		}
			
		//insert
		public int insert(Participant participant) throws ClassNotFoundException, SQLException {
			Connection con=dbutil.dbconn();
			
			String sql="insert into participant values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,participant.getPid());
			ps.setString(2,participant.getPname());
			ps.setString(3,participant.getPemail());
			ps.setString(4,participant.getPaddress());
			ps.setString(5,participant.getPassword());
			
			return ps.executeUpdate();
			
			
			
		}
		
	
		
	//update 
	public int edit(Participant participant) throws ClassNotFoundException, SQLException {
		 Connection con = dbutil.dbconn();
			String sql="update participant set pname=? , pemail=? where pid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(3,participant.getPid());
			ps.setString(1,participant.getPname());
			ps.setString(2,participant.getPemail());
			return ps.executeUpdate();
	}
	 public int delete(Participant participant) throws ClassNotFoundException, SQLException {
		    Connection con = dbutil.dbconn();
			String sql="delete from participant where pid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,participant.getPid());
			
			return ps.executeUpdate();
		}
	 
	 public int login(int user, String Password) throws ClassNotFoundException, SQLException {
		 Connection con = dbutil.dbconn();
			String sql="select * from participant where pid=? and password=?";
			int a = 0;
			PreparedStatement ps=con.prepareStatement(sql);
	
			ps.setInt(1, user);
			ps.setString(2,Password);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
		    	  a =1;
		    	  
				
			}
			 if(!rs.next())
			 {
			     System.out.println("No Data Found");
			     	    
			 }
			 return a;
		     
	 }
	 
	//update 
		public int passwordreset(int pid,String opass , String npass) throws ClassNotFoundException, SQLException {
			 Connection con = dbutil.dbconn();
				String sql="update participant set password=?  where pid=? and password=? ";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setInt(2,pid);
				ps.setString(1,npass);
				ps.setString(3,opass);
				return ps.executeUpdate();
		}

	 
}
