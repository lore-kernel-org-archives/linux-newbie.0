From: whitnl73@juno.com
Subject: Re: Compiation Err:Derefercing pointer to incomplete type
Date: Mon, 7 Apr 2003 15:48:41 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030407.161230.8.0.whitnl73@juno.com>
References: <200304071112.QAA26141@WS0005.indiatimes.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304071112.QAA26141@WS0005.indiatimes.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ramands@indiatimes.com
Cc: linux-newbie@vger.kernel.org

|
| whenever i incude header uaccess.h for copy my compiler throws
| a lot of compilation errors . They are generaly of nature
|
| uaccess.h>dereferencing pointer to incomplete type
|
| sched.h>dereferncing pointer to incomplete type
|
| i am using redhat 8.0
| i have read that some distributions do not provide complete headers
| for module level programming. Is that the reason for error i am getting ?
|
In effect, yes.   /usr/include -including /usr/include/linux and
/usr/include/asm, that typically come in a kernel-headers package -
are for the use of libc.  kernel headers are included
with the kernel source.  See <linux>/README

Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
