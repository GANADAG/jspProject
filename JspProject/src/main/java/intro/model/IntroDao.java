package intro.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import info.model.InfoDto;
import oracle.db.DbConnect;

public class IntroDao {
		
		DbConnect db=new DbConnect();
		
		public void infoIntro(IntroDto dto) 
		{
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			
			String sql="insert into intro values(seq_1.nextval,?,?,?,?,?,?,?)";
			
			try {
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setString(1,dto.getNum());
				pstmt.setString(2,dto.getName());
				pstmt.setString(3,dto.getAge());
				pstmt.setString(4,dto.getBirthday());
				pstmt.setString(5,dto.getHometown());
				pstmt.setString(6,dto.getHobby());
				pstmt.setString(7,dto.getMemo());
				
				pstmt.execute();
					
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(pstmt, conn);
			}
		}
		
		
		public Vector<IntroDto> getAllDatas()
		{
			Vector<IntroDto> introList=new Vector<IntroDto>();
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select * from intro order by num";
			
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				//여러개의 데이타 얻을땐 while
				while(rs.next())
				{
					IntroDto dto=new IntroDto();
					
					dto.setNum(rs.getString("num"));
					dto.setName(rs.getString("name"));
				
					
					//벡터에 추가
					introList.add(dto);
				}	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, pstmt, conn);
			}
			return introList;
		}
		
}
