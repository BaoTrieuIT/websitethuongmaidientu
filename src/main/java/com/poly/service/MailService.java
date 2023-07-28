
package com.poly.service;

import javax.mail.MessagingException;

import com.poly.model.MailInfo;

public interface MailService {

	void send(String to, String subject, String body) throws MessagingException;

	void queue(String to, String subject, String body);

	void queue(MailInfo mail);

	void send(MailInfo mail) throws MessagingException;

}
