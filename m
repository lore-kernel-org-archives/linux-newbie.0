From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Slack8.0 - 2.4.XX - ftpd missing?
Date: Thu, 18 Apr 2002 20:57:48 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0204182057480B.04062@unix.pa3gcu>
References: <20020418152828.A172@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020418152828.A172@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hal MacArgle <haltec@iceweb.net>, linux-newbie@vger.kernel.org

On Thursday 18 April 2002 19:28, Hal MacArgle wrote:
> Greetings: Been running Slackware 8.0 - kernel 2.2.19 /or/ kernel
> 2.4.5 /or/ kernel 2.4.13 and find I can't FTP that machine via my eth
> lashup.
>
> Ping works; telnet works; NSFD works, etc but trying ftp the machine
> reports: "Connected to lnx2" then a wait, "421 Service not available,
> remote server has closed connection." The opposite direction from the
> problem machine to any other machine running Slack 7.1; Slack3.5;
> RH6.2, etc - all fine.. It seems obvious, to me, that FTPD is not in
> evidence. I looked at the Configure file and see no obvious entries.

Which configure file ????
The correct file would be /etc/inetd.conf and should contain one of the two 
following lines.

ftp    stream  tcp     nowait  root    /usr/sbin/tcpd  wu.ftpd -l -i -a
ftp     stream  tcp     nowait  root    /usr/sbin/tcpd  proftpd

and of course the programs should be resident in the mentioned directory's.
On the otherhand it sounds like you did not install ftp at all, if that is 
the case you can install it from your source(cdrom) ((or what ever)) with 
"setup" or "pkgtool".
Oops another point is; in /etc/ftpusers it states;
# To enable anonymous FTP, remove the "ftp" user:
In otherwords if a line exsists with 
ftp
remove it or comment it out.

>
> I note there is no 'man ftpd' or 'man ftpaccess', like previous
> versions, so something must have changed and I can't find it...

> I looked thru all the docs including the source package to no avail.
>
> Any suggestions?
>
> Cheers,

73's.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
