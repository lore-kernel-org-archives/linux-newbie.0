From: Peter <heisspf@skyinet.net>
Subject: Re: Can't Mail with Exmh
Date: Wed, 14 Jan 2004 15:01:49 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401140701.i0E71nh01583@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

>  >  Peter said:
>  > > In RedHat9.0 after I changed from kernel 2.4.20.20-9 to kernel
>  >  2.4.22 I can't send mail any longer with exmh or with pine. 

To which I got only one reply.

>  > 
>  > I finally solved the problem. I made a "make upgrade" with postfix
>  > which  seems to have fixed it.

It did not solve it, it only stopped giving error messages and placed the mail 
in the queue from which it could not be mailed.

The culprit was sendmail-8.12.8-9.90.i386.rpm. I uninstalled it and went back 
to
sendmail-8.11.6-27.73.i386.rpm and this mail will go out with exmh.

I started to suspect sendmail when on booting I always got the error: 
sm-client failed, invalid option -- A.

Therefore RH9 seems to be buggy.  With the kernel 2.4.20.20-9 I can't open 
siag office and with sendmail-8.12.8-9.90 I can't send mail. This is the Krud 
Linux version of RH9.

Regards


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
