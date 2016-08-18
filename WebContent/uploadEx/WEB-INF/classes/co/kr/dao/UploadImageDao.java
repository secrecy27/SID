package co.kr.dao;

import java.util.List;

import co.kr.vo.UploadImageVO;

public interface UploadImageDao {
	
	List<UploadImageVO> uploadList(int record, int block);
	int uploadBlock();
	void uploadWrite(UploadImageVO upload);
	UploadImageVO uploadView(String num);
	void uploadUpdate(UploadImageVO upload);
	void uploadDelete(String num);
}
