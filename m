From: am kara <kara_am@yahoo.com>
Subject: IPsec, kernel, kara_am
Date: Tue, 12 Feb 2008 21:34:48 -0800 (PST)
Message-ID: <752164.54710.qm@web45907.mail.sp1.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have questions about the linux kernel and IPsec at
the layer 3, the files 'net/ipv4/ipip.c' and
'net/ipv4/tunnel4.c':
Are these files necessary to implement IPsec? What are
their main functionalities?

I see many input and output files at net/ipv4 like:
ip_input.c/ip_output.c or
xfrm4_input.c/xfrm4_output.c, If IPsec is enabled,
does the second group  'xfrm4_input.c/xfrm4_output.c'
is used instead of the first one? Or the second ones
are called by the first couple of functions?

net/ipv4/ah4.c and net/ipv4/esp4.c also have
input/output functions, when and how they are called?
I am looking for a simple flow of network traffic in
case of IPsec...

I did not get my answer in the Linux kernel books,
please answer me with your own technical knowledge.
thank you. 

What is the flow of (input/output) information inside
the layer 3 when IPsec is enabled? 

How IPsec is enabled at user space, is it done by
setkey or socket system call with special arguments?





      ____________________________________________________________________________________
Be a better friend, newshound, and 
know-it-all with Yahoo! Mobile.  Try it now.  http://mobile.yahoo.com/;_ylt=Ahu06i62sR8HDtDypao8Wcj9tAcJ 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
