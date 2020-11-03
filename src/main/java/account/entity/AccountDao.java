package account.entity;

import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.http.HttpServletResponse;

public class AccountDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;

	// private AccountDad()���� �ٲ�
	public AccountDao() {
		con = this.getConnection();
	}

	public Connection getConnection() {
		String url = "jdbc:mysql://smart-auction.cqzeadwtdglh.ap-northeast-2.rds.amazonaws.com:3306/smartAuction";
		String id = "admin", password = "SAuction3*";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, id, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public int join(Account mDto) {
		StringBuffer query = new StringBuffer();
		query.append("INSERT INTO Members").append(" VALUES (?, ?, ?, ?,?)");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, mDto.getId());
			pstmt.setString(2, mDto.getPassword());
			pstmt.setString(3, mDto.getName());
			pstmt.setString(4, mDto.getEmail());
			// phone�� ���� �߰��Ѱ�
			pstmt.setString(5, mDto.getPhone());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, null);
		}
		return result;
	}

	public int login(String id, String password) {
		StringBuffer query = new StringBuffer();
		query.append("SELECT password").append(" FROM Members").append(" WHERE id = ?");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			System.out.println(rs);
			if (rs.next()) {
				if (rs.getString("password").equals(password)) {
					return 1;
				} else {
					return 0;
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, rs);
		}
		return -1;
	}

	// IDã�� �޼ҵ�
	// �̸�,�ڵ�����ȣ�� ã��
	public int id_search1(Account mDto, String name, String phone) {
		StringBuffer query = new StringBuffer();
		System.out.println(mDto.getName());
		query.append("SELECT *").append(" FROM Members").append(" WHERE name =? AND phone=?");
		
		
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, mDto.getName());
			pstmt.setString(2, mDto.getPhone());
			rs = pstmt.executeQuery();
			System.out.println("ID�޼ҵ� ������");
			

			if (rs.next()) {
				System.out.println(rs.getString("name"));
				if (rs.getString("name").equals(mDto.getName()) && rs.getString("phone").equals(mDto.getPhone())) {
					return 1;
				} else {
					System.out.println("���ϰ�0");
					return 0;
					
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, rs);
		}
		System.out.println("���ϰ�-1");
		return -1;
	}

	// �̸�,�̸��Ϸ� ã��
	public int id_search2(Account mDto, String name, String email) {
		StringBuffer query = new StringBuffer();
		query.append("SELECT *").append(" FROM Members").append(" WHERE name = ? AND email= ?");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, mDto.getName());
			pstmt.setString(2, mDto.getEmail());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("name").equals(mDto.getName()) && rs.getString("email").equals(mDto.getEmail())) {
					return 1;
				} else {
					return 0;
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, rs);
		}
		return -1;
	}
}
