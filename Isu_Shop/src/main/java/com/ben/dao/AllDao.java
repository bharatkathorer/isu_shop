package com.ben.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

import com.ben.model.CartModel;
import com.ben.model.ProductModel;
import com.ben.model.RegModel;
import com.ben.sqlconnection.SqlConnection;

public class AllDao {
	SqlConnection sqcon;
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	int i = 0;

	public AllDao() throws ClassNotFoundException, SQLException {
		sqcon = new SqlConnection();
		con = sqcon.SqlConnection();
	}

	public int getReg(RegModel rm) throws SQLException {

		pst = con.prepareStatement("insert into user(email,password,fname,mname,lname) values(?,?,?,?,?)");
		pst.setString(1, rm.getEmail());
		pst.setString(2, rm.getPassword());
		pst.setString(3, rm.getFname());
		pst.setString(4, rm.getMname());
		pst.setString(5, rm.getLname());
		i = pst.executeUpdate();
		return i;
	}

	public int setFullReg(RegModel rm) throws SQLException, IOException {

		pst = con.prepareStatement(
				"insert into user_details(email,address,pincode,state,city,profile_pic,phone) values(?,?,?,?,?,?,?)");
		pst.setString(1, rm.getEmail());
		pst.setString(2, rm.getAddress());
		pst.setString(3, rm.getPincode());
		pst.setString(4, rm.getState());
		pst.setString(5, rm.getCity());
		Part img = rm.getP_pic();
		InputStream is = img.getInputStream();
		pst.setBlob(6, is);

		pst.setString(7, rm.getPhone());

		i = pst.executeUpdate();
		return i;

	}

	public boolean checkFReg(String email) throws SQLException {
		pst = con.prepareStatement("select * from user_details where email=?");
		pst.setString(1, email);
		rs = pst.executeQuery();
		if (rs.next()) {
			return true;
		}
		return false;
	}

	public boolean getLogin(RegModel rm) throws SQLException {
		pst = con.prepareStatement("select * from user where(email=? and password=?)");
		pst.setString(1, rm.getEmail());
		pst.setString(2, rm.getPassword());
		rs = pst.executeQuery();
		if (rs.next()) {
			return true;
		}

		return false;
	}
	
	
	public RegModel getName(String email) throws SQLException {
		RegModel rm=new RegModel();
		pst = con.prepareStatement("select * from user where email=?");
		pst.setString(1, email);
		rs=pst.executeQuery();
		while(rs.next()) {
			
			rm=fullDetailUser(rs.getString("fname"),rs.getString("mname"),rs.getString("lname"),email);
			
		}
		return rm;
	}
	public RegModel fullDetailUser(String fname ,String mname, String lname ,String email) throws SQLException {
		pst = con.prepareStatement("select * from user_details where email=?");
		RegModel rm=new RegModel();
		pst.setString(1, email);
		rs=pst.executeQuery();
		while(rs.next()) {
			rm.setFname(fname);
			rm.setMname(mname);
			rm.setLname(lname);
			rm.setEmail(email);
			rm.setAddress(rs.getString("address"));
			rm.setPincode(rs.getString("pincode"));
			rm.setState(rs.getString("state"));
			rm.setCity(rs.getString("city"));
			rm.setPhone(rs.getString("phone"));
			
	
		}
		return rm;
	}
	public RegModel ProfileDisplay(String email) throws SQLException {
		RegModel rm = new RegModel();
		pst = con.prepareStatement("select * from user_details where email=?");
		pst.setString(1, email);
		rs = pst.executeQuery();

		if (rs.next()) {
			Blob blob = rs.getBlob("profile_pic");
			byte pic[] = blob.getBytes(1, (int) blob.length());
			rm.setProfile_Pic(pic);
		}
		return rm;
	}

	public int AddProduct(ProductModel pm) throws SQLException, IOException {
		pst = con.prepareStatement(
				"insert into products_details(p_pic,category,p_name,price,p_modal,discount,brand,color,warranty,more_info,description) values(?,?,?,?,?,?,?,?,?,?,?)");
		Part im = pm.getP_pic();
		InputStream is = im.getInputStream();
		pst.setBlob(1, is);
		pst.setString(2, pm.getCategory());
		pst.setString(3, pm.getP_name());
		pst.setString(4, pm.getPrice());
		pst.setString(5, pm.getP_modal());
		pst.setString(6, pm.getDiscount());
		pst.setString(7, pm.getBrand());
		pst.setString(8, pm.getColor());
		pst.setString(9, pm.getWarranty());
		pst.setString(10, pm.getMore_info());
		pst.setString(11, pm.getDescription());
		i = pst.executeUpdate();

		return i;
	}

	public ProductModel productImg(int id) throws SQLException {
		ProductModel pm = new ProductModel();
		pst = con.prepareStatement("select * from products_details where id=?");
		pst.setInt(1, id);
		rs = pst.executeQuery();

		if (rs.next()) {
			Blob blob = rs.getBlob("p_pic");
			byte pic[] = blob.getBytes(1, (int) blob.length());
			pm.setImg(pic);
		}

		return pm;
	}

	public List<ProductModel> showProduct() throws SQLException {

		List<ProductModel> list = new ArrayList();
		pst = con.prepareStatement("select * from products_details");
		rs = pst.executeQuery();
		while (rs.next()) {
			ProductModel pm = new ProductModel();
			pm.setId(rs.getInt(1));
			pm.setCategory(rs.getString(3));
			pm.setP_name(rs.getString(4));
			pm.setPrice(rs.getString(5));
			pm.setP_modal(rs.getString(6));
			pm.setDiscount(rs.getString(7));
			pm.setBrand(rs.getString(8));
			pm.setColor(rs.getString(9));
			pm.setWarranty(rs.getString(10));
			pm.setMore_info(rs.getString(11));
			pm.setRating(rs.getString(13));
			
			pm.setLove(rs.getString(15));

			list.add(pm);

		}

		return list;
	}

	public ProductModel showProductById(int id) throws SQLException {

		ProductModel pm = new ProductModel();
		pst = con.prepareStatement("select * from products_details where id=?");
		pst.setInt(1, id);
		rs = pst.executeQuery();
		while (rs.next()) {

			pm.setId(rs.getInt(1));
			pm.setCategory(rs.getString(3));
			pm.setP_name(rs.getString(4));
			pm.setPrice(rs.getString(5));
			pm.setP_modal(rs.getString(6));
			pm.setDiscount(rs.getString(7));
			pm.setBrand(rs.getString(8));
			pm.setColor(rs.getString(9));
			pm.setWarranty(rs.getString(10));
			pm.setMore_info(rs.getString(11));
			pm.setDescription(rs.getString(12));

		}
		return pm;
	}

	public ProductModel showLiksById() throws SQLException {
		ProductModel pm = new ProductModel();
		pst = con.prepareStatement("select * from products_details");
		rs = pst.executeQuery();
		while (rs.next()) {
			pm.setRating(rs.getString(13));

			pm.setLove(rs.getString(16));
		}
		return pm;
	}

	/* For Like Buttons */
	public void loveclick(int id, String love) throws SQLException {

		pst = con.prepareStatement("update products_details set love=? where id=?");
		pst.setString(1, love);
		pst.setInt(2, id);

		pst.executeUpdate();
	}

	/* insert cart start */

	public int addCart(String uid, String pid) throws SQLException {
		pst = con.prepareStatement("insert into cart(u_id,p_id) values(?,?)");
		pst.setString(1, uid);
		pst.setString(2, pid);

		i = pst.executeUpdate();
		return i;
	}
	/* insert cart end */
	
	/* select  cart start*/
	public List<CartModel> showCart(String uid) throws SQLException {
		List<CartModel> l = new ArrayList();
		pst = con.prepareStatement("select * from cart where u_id=?");
		pst.setString(1, uid);
		rs = pst.executeQuery();
		while (rs.next()) {
			CartModel cm = new CartModel();
			cm.setId(rs.getInt("id"));
			cm.setPid(rs.getString("p_id"));
			cm.setUid(rs.getString("u_id"));
			l.add(cm);

		}
		return l;

	}

	/* select  cart end*/
	
	/* Delete cart start */

	public int deletCart(String uid, String pid) throws SQLException {

		pst = con.prepareStatement("select * from cart where u_id=? and p_id=?");
		pst.setString(1, uid);
		pst.setString(2, pid);
		rs = pst.executeQuery();
		int a = 0;
		while (rs.next()) {
			a = rs.getInt("id");
		}

		return deletCart1(a);
	}

	public int deletCart1(int id) throws SQLException {

		pst = con.prepareStatement("delete from cart where id=?");
		pst.setInt(1, id);
		i = pst.executeUpdate();
		return i;
	}
	/* Delete cart end */
	
	/*Like Insert start*/
	
	public int setLike(String like_uid, String unlike_pid) throws SQLException {
		pst = con.prepareStatement("insert into pro_like(like_uid,like_pid,like_val) values(?,?,?)");
		pst.setString(1, like_uid);
		pst.setString(2, unlike_pid);
		pst.setString(3, "1");
		
		i = pst.executeUpdate();
		return i;
	}
	/*Like Insert End*/
	
	/* select  Like start*/
	public List<CartModel> showLike(String uid) throws SQLException {
		List<CartModel> l = new ArrayList();
		pst = con.prepareStatement("select * from pro_like where like_uid=?");
		pst.setString(1, uid);
		rs = pst.executeQuery();
		while (rs.next()) {
			CartModel cm = new CartModel();
			cm.setL_id(rs.getInt("id"));
			
			cm.setLike_pid(rs.getString("like_pid"));
			cm.setLike_uid(rs.getString("like_uid"));
			cm.setLike_val(rs.getString("like_val"));
			l.add(cm);

		}
		return l;

	}

	/* select  like end*/
	/* Delete like start */

	public int unLike(String uid, String pid) throws SQLException {

		pst = con.prepareStatement("select * from pro_like where like_uid=? and like_pid=?");
		pst.setString(1, uid);
		pst.setString(2, pid);
		rs = pst.executeQuery();
		int a = 0;
		while (rs.next()) {
			a = rs.getInt("id");
		}

		return unLike(a);
	}

	public int unLike(int id) throws SQLException {
		
		pst = con.prepareStatement("update pro_like set like_val=? where id=?");
		pst.setString(1, "0");
		pst.setInt(2, id);
		i = pst.executeUpdate();
		return i;
	}
	/* Delete like end */
	
	public List<ProductModel> showAllCartItem(){
		List<ProductModel> list =new ArrayList();
		
		
		return list;
	}
}
