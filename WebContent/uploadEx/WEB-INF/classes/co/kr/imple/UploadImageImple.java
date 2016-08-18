package co.kr.imple;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import co.kr.dao.UploadImageDao;
import co.kr.vo.UploadImageVO;

@Repository
public class UploadImageImple implements UploadImageDao
{

	private String NAMESPACE="Upload.";
	
	@Autowired 
	SqlMapClientTemplate sqlMapClientTemplate1;

	private Integer block;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<UploadImageVO> uploadList(int record, int block) {
		
		UploadImageVO paging = new UploadImageVO();
        paging.setRecord(record);
        paging.setBlock(block);
        
        this.block = (Integer) sqlMapClientTemplate1.queryForObject(NAMESPACE+"TotalCount"); 
		return (List<UploadImageVO>)sqlMapClientTemplate1.queryForList(NAMESPACE+"Paging",paging);
	}

	@Override
	public int uploadBlock() {
		return block;
	}

	@Override
	public void uploadWrite(UploadImageVO upload) {
		sqlMapClientTemplate1.insert(NAMESPACE+"boardAdd",upload);	
	}

	@Override
	public UploadImageVO uploadView(String num) {
		return (UploadImageVO) sqlMapClientTemplate1.queryForObject(NAMESPACE+"boardDetail",num);
	}

	@Override
	public void uploadUpdate(UploadImageVO upload) {
		sqlMapClientTemplate1.update(NAMESPACE+"boardUpdate", upload);
	}

	@Override
	public void uploadDelete(String num) {
		sqlMapClientTemplate1.delete(NAMESPACE+"boardDelete",num);	
	}

}