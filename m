From: gracecott@sancharnet.in
Subject: IMAP setup...
Date: Thu, 08 Jul 2004 13:00:23 +0530 (GMT+05:30)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2793408.1089271823855.JavaMail.nobody@ndl1pp2-a-fixed>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="Boundary_(ID_6F1/c8deQGaxSgQHcOYQKQ)"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--Boundary_(ID_6F1/c8deQGaxSgQHcOYQKQ)
Content-type: text/plain; charset=iso-8859-1
Content-transfer-encoding: 7BIT
Content-disposition: inline

Hi,

I am trying to setup an IMAP server (COURIER Sid,unstable)with squirrelmail as a front end. For authentication I used userdb and used pw2userdb to convert my passwd to userdb and ran a makeuserdb.
However, only root is authenticated. and for the others, squirrelmail dies with unknown error.
However the funny part is only one regular user(I dont know for what reason this particular one... no one else though) can also get authenticated but once in, squirrelmail gives a 

Connection dropped by server   QUERY:select INBOX

error.
can anybody direct me to some commands I can use to communicate with the Imap server via telnet so that I can get more information than what is given by SQM?

Thanx in advance,
Joy.M.M

--Boundary_(ID_6F1/c8deQGaxSgQHcOYQKQ)--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
