package co.kr.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import co.kr.service.IUploadImageService;
import co.kr.vo.UploadImageVO;

@Controller
public class UploadmageController {
	private static final Logger logger = LoggerFactory.getLogger(UploadmageController.class);

	@Autowired
	private IUploadImageService iuploadImageService;
	
	private InputStream inputStream;
	private OutputStream outputStream;
	private byte[] image;
	
	@RequestMapping(value = "/imageList.do", method = {RequestMethod.GET})
	public String imageList(UploadImageVO upload, Model model) {
		logger.info("List!! "+ new Date());

		List<UploadImageVO> board = iuploadImageService.uploadList((upload.getRecord()-1) * upload.getBlock(), upload.getBlock());
		
		int totalcount = iuploadImageService.uploadBlock();
		int totalrecord = (int) Math.ceil(totalcount * 1.0 / upload.getBlock());
			
		model.addAttribute("board", board);
		model.addAttribute("currentpage", upload.getRecord());
		model.addAttribute("totalrecord", totalrecord);
		model.addAttribute("upload", upload);
		
		return "list";			
	}

	@RequestMapping(value = "/imageWrite.do", method = {RequestMethod.GET})
	public String imageWrite(UploadImageVO upload, Model model) {
		logger.info("Write!!"+ new Date());

		model.addAttribute("board", upload);
		
		return "write";
	}
	
	@RequestMapping(value = "/imageAdd.do", method = RequestMethod.POST)
	public String imageAdd(@ModelAttribute("board") @Valid UploadImageVO upload, BindingResult result, Model model, @RequestParam("file") MultipartFile file) throws IOException {
		logger.info("Add!! "+ new Date());
		
		inputStream = file.getInputStream();
		image = IOUtils.toByteArray(inputStream);
	
		upload.setContent(image);			
		upload.setContentName(file.getOriginalFilename());
		upload.setContentType(file.getContentType());
		
		iuploadImageService.uploadWrite(upload);
		
		return "redirect:/imageList.do";
	}
	
	@RequestMapping(value = "/imageView.do", method = {RequestMethod.GET})
	public String imageView(UploadImageVO upload, Model model) {
		logger.info("View!!"+ new Date());
		
		UploadImageVO board = iuploadImageService.uploadView(upload.getNum());
		
		model.addAttribute("board", board);
		
		return "view";
	}
	
	@RequestMapping(value = "/imageShow/{num}.do", method = {RequestMethod.GET})
	public void imageShow(@PathVariable("num") String num, HttpServletResponse response) throws IOException, SerialException, SQLException {
		logger.info("Show!!"+ new Date());
		
		UploadImageVO board = iuploadImageService.uploadView(num);
		
		response.setHeader("Content-Disposition", "inline;filename=\"" + board.getContentName() + "\"");
		outputStream = response.getOutputStream();
		response.setContentType(board.getContentType());
        
        SerialBlob blob = new SerialBlob(board.getContent());

        IOUtils.copy(blob.getBinaryStream(), outputStream);
        
        outputStream.flush();
        outputStream.close();
	}
	
	@RequestMapping(value = "/imageEdit.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String imageEdit(UploadImageVO upload, Model model) {
		logger.info("Edit!!"+ new Date());
		
		UploadImageVO board = iuploadImageService.uploadView(upload.getNum());
		model.addAttribute("board", board);
		
		return "update";
	}
	
	@RequestMapping(value = "/imageUpdate.do", method = {RequestMethod.POST})
	public String imageUpdate(UploadImageVO upload, BindingResult result, @RequestParam("file") MultipartFile file) throws IOException {
		logger.info("Update!!"+ new Date());
		
		inputStream = file.getInputStream();
		image = IOUtils.toByteArray(inputStream);
	
		upload.setContent(image);			
		upload.setContentName(file.getOriginalFilename());
		upload.setContentType(file.getContentType());
		
		iuploadImageService.uploadUpdate(upload);
		
		return "redirect:/imageList.do";
	}
	
	@RequestMapping(value = "/imageDelete.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String imageDelete(UploadImageVO upload, Model model) {
		logger.info("Delete!!"+ new Date());
		
		iuploadImageService.uploadDelete(upload.getNum());

		return "redirect:/imageList.do";
	}
}