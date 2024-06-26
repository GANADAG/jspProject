package quizshop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mysql.db.DbConnect;

public class QuizShopDao {

	DbConnect db=new DbConnect();

	public void insertQuizShop(QuizShopDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;

		String sql="insert into quizshop values(null,?,?,?,?,now())";

		try {
			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, dto.getSang_name());
			pstmt.setString(2, dto.getPhoto());
			pstmt.setInt(3, dto.getPrice());
			pstmt.setString(4, dto.getIpgoday());

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}db.dbClose(pstmt, conn);
	}
	
	//전체출력
	public List<QuizShopDto> selectShop(){
		List<QuizShopDto> list=new ArrayList<QuizShopDto>();

		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		String sql="select * from quizshop order by num desc";

		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();

			while(rs.next())
			{
				QuizShopDto dto=new QuizShopDto();

				dto.setNum(rs.getString("num"));
				dto.setSang_name(rs.getString("sang_name"));
				dto.setPhoto(rs.getString("photo"));
				dto.setPrice(rs.getInt("price"));
				dto.setIpgoday(rs.getString("ipgoday"));
				dto.setWriteday(rs.getTimestamp("writeday"));

				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return list;
	}

	//num을 인자로 받아서 해당 dto반환하는 메서드 구현(get data)
	public QuizShopDto getOneData(String num)
	{
		QuizShopDto dto =new QuizShopDto();

		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		String sql="select * from quizshop where num=?";

		try {
			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, num);
			rs=pstmt.executeQuery();

			if(rs.next())
			{
				dto.setNum(rs.getString("num"));
				dto.setSang_name(rs.getString("sang_name"));
				dto.setPhoto(rs.getString("photo"));
				dto.setPrice(rs.getInt("price"));
				dto.setIpgoday(rs.getString("ipgoday"));
				dto.setWriteday(rs.getTimestamp("writeday"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}

		return dto;
	}
}
