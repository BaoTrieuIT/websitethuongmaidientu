package com.poly.utils;

import org.springframework.web.multipart.MultipartFile;

public class MultipartFileUtils {
	public static String convertToString(MultipartFile multipartFile) {
		String fileName = multipartFile.getOriginalFilename();
		// Hoặc, nếu bạn đã lưu trữ tệp tạm thời trên máy chủ, bạn có thể truy xuất
		// đường dẫn tạm thời
		// String tempFilePath = ((StandardMultipartFile)
		// multipartFile).getFile().getAbsolutePath();
		return fileName;
	}
}
