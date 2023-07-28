package com.poly.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CookieService {
    @Autowired
    HttpServletRequest req;
    @Autowired
    HttpServletResponse res;

    public Cookie get(String name) {
        Cookie[] cookies = req.getCookies();
        if (cookies != null)
            for (Cookie cookie : cookies) {
                if (cookie.getName().equalsIgnoreCase(name)) return cookie;
            }
        return null;
    }

    /**
     * Đọc giá trị của cookie từ request
     *
     * @param name tên cookie cần đọc
     * @return chuỗi giá trị đọc được hoặc rỗng nếu không tồn tại
     */
    public String getValue(String name, String defaultValue) {
        Cookie cookie = get(name);
        if (cookie != null) {
            return cookie.getValue();
        }
        return defaultValue;
    }

    /**
     * Tạo và gửi cookie về client
     *
     * @param name  tên cookie
     * @param value giá trị cookie
     * @param hours thời hạn (giờ)
     * @return đối tượng cookie đã tạo
     */
    public Cookie add(String name, String value, int hours) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(hours * 60 * 60);
        /* cookie.setDomain("/"); */
        cookie.setPath("/");
        res.addCookie(cookie);
        return cookie;
    }

    /**
     * Xóa cookie khỏi client
     *
     * @param name tên cookie cần xóa
     */
    public void remove(String name) {
        add(name, "", 0);
    }
}
