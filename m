From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: how do I set up my FTPd
Date: Fri, 28 May 2004 16:57:39 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200405281657.39223.pa3gcu@zeelandnet.nl>
References: <200405271513.32142.r4mz3z@yahoo.es>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200405271513.32142.r4mz3z@yahoo.es>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pepo <r4mz3z@yahoo.es>, linux-newbie@vger.kernel.org

On Thursday 27 May 2004 22:13, pepo wrote:
> Hi friends...
>
>   please, how do I set up my ftpd (vsftpd) to let all the users (or at
> least one) access to the same directory "/var/miFtpDirectory"

vsftpd has its config file in /etc and (you guessed it) its called 
vsftpd.conf.

If you want _non standard_ directorys you may well need to recompile vsftpd 
you can then read the INSTALL file which comes in the archive, it tells you 
what to do.

As to starting vsftpd, you make no mention of what distro you have.
Different distro's do it different ways.

I'm off on my hols., tommorow so someone else will have to chip in for help 
there.

> thanks

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
