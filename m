From: Ray Olszewski <ray@comarre.com>
Subject: Re: Newbie can't start ftpd
Date: Tue, 11 Mar 2003 07:34:43 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030311071611.01f000c8@celine>
References: <720FB032F37C0D45A11085D881B03368A2B465@MBXSRV24.stu.nus.ed
 u.sg>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <720FB032F37C0D45A11085D881B03368A2B465@MBXSRV24.stu.nus.ed
 u.sg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:49 PM 3/11/2003 +0800, Eng Se-Hsieng wrote:
>Hi,
>
>I installed a custom installation of Redhat 7.3 and would like to get
>the simplest ftp server running.
>
>ftp localhost gives me "ftp: connect: Connection refused"
>
>I would like to use the basic linux-ftpd-0.17 but typing "ftpd" doesn't
>help. Please tell me how I may use the basic ftpd command and not
>wu-ftpd, proftpd or others.

I'm not familiar with the package "linux-ftpd-0.17", but I infer from your 
question that it includes an ftp daemon that runs under the name "ftpd". 
(But this implied assumption on your part may be your problem. I just 
looked up the Debian version of the package, and it installs the daemon 
under the name in.ftpd.) The "Connection refused" message does mean that 
nothing (neither any ftpd daemon nor inetd) is listening on port 21.

We can't realistically provide here a tutorial that addresses all of the 
many things you *may* be doing incorrectly -- instead, you need to describe 
the steps you followed when installing the package so someone here can spot 
the mistake.

So, please tell us ...

1. How you installed the RPM of  "linux-ftpd-0.17". Afterwards, what does 
"which ftpd" (run as root) return?

2. What DOES happen when you "type" ftpd (I assume you mean by "type" that 
you run it, as root, from the command line). "doesn't help" is not a 
description I (or anyone, really) can troubleshoot. Afterwards, is ftpd 
running ("ps ax |grep ftpd")? Is it, or anything, listening on port 21 
("netstat -l |grep ftp")?

3. Whether you are running inetd; if you are, what entry is in 
/etc/inetd.conf for ftp?

4. Whether there is anything in /etc/hosts.allow or /etc/hosts.deny 
relevant to connections from localhost.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
