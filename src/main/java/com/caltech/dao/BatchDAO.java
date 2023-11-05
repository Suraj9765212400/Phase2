package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.caltech.DButil.dbutil;
import com.caltech.pojo.Participant;
import com.caltech.pojo.batch;

public class BatchDAO {

	//retrive
		public List<batch> displaybatch() throws ClassNotFoundException, SQLException{
			Connection con = dbutil.dbconn();
			String sql="select * from batch";
			PreparedStatement ps=con.prepareStatement(sql);
			List<batch> list=new ArrayList<>();
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				batch part = new batch();
				part.setBid(rs.getInt("bid"));
				part.setInstructor(rs.getString("Instructor"));
				part.setBdate(rs.getString("bdate"));
				list.add(part);
			}
			return list;
		}
		
		
		//insert
				public int insert(batch batch) throws ClassNotFoundException, SQLException {
					Connection con=dbutil.dbconn();
					String sql="insert into batch values(? ,?)";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,batch.getInstructor());
					ps.setString(2,batch.getBdate());
					
					return ps.executeUpdate();
				}
				
			
				
			//update 
			public int edit(batch batch) throws ClassNotFoundException, SQLException {
				 Connection con = dbutil.dbconn();
					String sql="update batch set Instructor=? where bid=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setInt(1,batch.getBid());
					ps.setString(2,batch.getInstructor());
				
					return ps.executeUpdate();
			}
			 public int delete(batch batch) throws ClassNotFoundException, SQLException {
				    Connection con = dbutil.dbconn();
					String sql="delete from batch where bid=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setInt(1,batch.getBid());
					
					return ps.executeUpdate();
				}
			 
			 public int register(int pid,int bid) throws ClassNotFoundException, SQLException {
				    Connection con = dbutil.dbconn();
				    String sql="insert into batchuser values(? ,?, ?)";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setInt(1,pid);
					ps.setString(2," ");
					ps.setInt(3,bid);
					
					return ps.executeUpdate();
				}
}
