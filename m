From: Hal MacArgle <haltec@iceweb.net>
Subject: Re: Slack8.0 - 2.4.XX - ftpd missing?
Date: Fri, 19 Apr 2002 11:09:12 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020419110912.A375@lnx2.w8mch.ampr.org>
References: <20020418152828.A172@lnx2.w8mch.ampr.org> <0204182057480B.04062@unix.pa3gcu>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <0204182057480B.04062@unix.pa3gcu>; from pa3gcu@zeelandnet.nl on Thu, Apr 18, 2002 at 08:57:48PM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: linux-newbie@vger.kernel.org

On Thu, Apr 18, 2002 at 08:57:48PM +0000, Richard Adams wrote:
> On Thursday 18 April 2002 19:28, Hal MacArgle wrote:
> > Greetings: Been running Slackware 8.0 - kernel 2.2.19 /or/ kernel
> > 2.4.5 /or/ kernel 2.4.13 and find I can't FTP that machine via my eth
> > lashup.
> >
> > Ping works; telnet works; NSFD works, etc but trying ftp the machine
> > reports: "Connected to lnx2" then a wait, "421 Service not available,
> > remote server has closed connection." The opposite direction from the
> > problem machine to any other machine running Slack 7.1; Slack3.5;
> > RH6.2, etc - all fine.. It seems obvious, to me, that FTPD is not in
> > evidence. I looked at the Configure file and see no obvious entries.
> 
> Which configure file ????
	I was looking at the generated file that lists the selections
from 'make config'.. I didn't know that there were changes made in
2.4, presuming the "old" default would work.

> The correct file would be /etc/inetd.conf and should contain one of the two 
> following lines.
> 
> ftp    stream  tcp     nowait  root    /usr/sbin/tcpd  wu.ftpd -l -i -a
> ftp     stream  tcp     nowait  root    /usr/sbin/tcpd  proftpd
	The wu.ftpd line is commented out so this machine will be
using proftpd.. (ftpd is no longer used I see.) THAT was the problem:
When compiling 2.4.13 I passed by /n1/proftp.tgz, not knowing what it
was - at the time... Installing it fixed the problem... APPRECIATE!!
A big help was, also, finding 'tcpdchk' that pinned it down..

> and of course the programs should be resident in the mentioned directory's.
> On the otherhand it sounds like you did not install ftp at all, if that is 
> the case you can install it from your source(cdrom) ((or what ever)) with 
> "setup" or "pkgtool".
	I used: installpkg /cdrom/slakware/n1/proftp.tgz..

> Oops another point is; in /etc/ftpusers it states;
> # To enable anonymous FTP, remove the "ftp" user:
> In otherwords if a line exsists with 
> ftp
> remove it or comment it out.
	Left it as is because am not interested, at this time, in
anonymous users, although will file all this for the future. <grin>

	Again: Thanks Richard for another "save".......

    Hal - in Terra Alta, WV,  -  Slackware Linux 8.0   (2.4.13)
    haltec@iceweb.net | w8mch@iceweb.net..A M$ free environment     
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
