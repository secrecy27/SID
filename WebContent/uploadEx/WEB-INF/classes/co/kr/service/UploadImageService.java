package co.kr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.dao.UploadImageDao;
import co.kr.vo.UploadImageVO;

@Service
public class UploadImageService implements IUploadImageService {
    
	@Autowired 
	private UploadImageDao uploadImageDao;
	

	@Override
	public List<UploadImageVO> uploadList(int record, int block) {
		return uploadImageDao.uploadList(record, block);
	}
	@Override
	public int uploadBlock() {
		return uploadImageDao.uploadBlock();
	}
	@Override
	public void uploadWrite(UploadImageVO upload) {
		uploadImageDao.uploadWrite(upload);
	}
	@Override
	public UploadImageVO uploadView(String num) {
		return uploadImageDao.uploadView(num);
	}
	@Override
	public void uploadUpdate(UploadImageVO upload) {
		uploadImageDao.uploadUpdate(upload);
	}
	@Override
	public void uploadDelete(String num) {
		uploadImageDao.uploadDelete(num);
	}
}