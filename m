From: "Tim Merkel" <tim@kerryandtim.com>
Subject: courier-imap RPM help!
Date: Wed, 24 Sep 2003 21:15:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BNEEIMBDCFOEJALDEFJAMEDICCAA.tim@kerryandtim.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello,

I have been trying to get courier-imap installed on RH 9 for the past couple
of days to no avail.  Most of my troubles are coming from RPMs.  Any help
you can give this newbie would be much appreciated.

First of all, I don't even know if I have the most current rpm, I am using
courier-imap-1.4.3-2.rh.7.2.i386.rpm.  Freshmeat.net says it's on version
2.1, but I cannot find an RPM for RH, with that version.  Does it matter if
I use a RPM for another distro (i.e. courier-imap-2.1.1-1mdk.i586.rpm)?

Anyway, when I install run "rpm -Uvh courier-imap-1.4.3-2.rh.7.2.i386.rpm",
I get:

error: Failed dependencies:
        libcrypto.so.2 is needed by courier-imap-1.4.3-2.rh.7.2
        libssl.so.2 is needed by courier-imap-1.4.3-2.rh.7.2

So, I search for these RPM's but keep getting redirected to
"openssl-0.9.7b-3tr.i586.rpm".  So I figure I will try to install this.
When I run "rpm -Uvh openssl-0.9.7b-3tr.i586.rpm" I get:

error: Failed dependencies:
        libcrypto.so.4 is needed by (installed) python-2.2.2-26
        libcrypto.so.4 is needed by (installed) cyrus-sasl-2.1.10-4
        libcrypto.so.4 is needed by (installed) cyrus-sasl-md5-2.1.10-4
        libcrypto.so.4 is needed by (installed) openldap-2.0.27-8
        .......tons more listed

Why is it saying "libcrypto.so.4 is needed by python.2.2.2-26"?  I am not
trying to install python.

Can somebody please enlighten me to where I am stuck?  Maybe an RPM 101
guide would help me. Thanks in advance for your help!

Tim Merkel


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
