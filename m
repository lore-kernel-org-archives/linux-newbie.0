From: Andrew Langdon-Davies <ald@arrakis.es>
Subject: segmentation fault
Date: Mon, 27 Jan 2003 18:31:43 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E356CFF.9040905@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

The following happens only with Gimp and only as normal user (not as 
root). It started today. I have had no problems until now, BUT: when 
last using Gimp I tried to open too many large files at once and then 
had to do a killall. However it then worked all right. Today was the 
first time I had booted the system since then.

gimp --enable-stack-trace always
gimp: fatal error: Segmentation fault
#0  0x401e32e0 in g_on_error_stack_trace () from /usr/lib/libglib-1.2.so.0
#1  0x080c5f02 in gimp_fatal_error ()

System info:
Pentium 4
500 megas RAM
Mandrake 9.0
gimp 1.2.3.
free space on /home partition 500  megas

Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
