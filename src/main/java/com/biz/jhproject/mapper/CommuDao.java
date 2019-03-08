package com.biz.jhproject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.biz.jhproject.model.CommuVO;

public interface CommuDao {

	@Select("SELECT * FROM tbl_commu")
	public List<CommuVO> selectAll();
	
	@Select("SELECT * FROM tbl_commu WHERE c_num = #{c_num}")
	public CommuVO findByNum(int c_num);
	
	@Insert("INSERT INTO tbl_commu(c_num, c_userid, c_title, c_image, c_text, c_time) VALUES(commu_seq.nextval,#{c_userid}, #{c_title}, #{c_image}, #{c_text}, #{c_time})")
	public int insert(CommuVO vo);
	
	@Update("UPDATE tbl_commu SET c_userid = #{c_userid}, c_title = #{c_title}, c_image = #{c_image}, c_text = #{c_text}, c_time = #{c_time} WHERE c_num = #{c_num}")
	public int update(CommuVO vo);
	
	@Delete("DELETE FROM tbl_commu WHERE c_num=#{c_num}")
	public int delete(String c_userid);
	
}
