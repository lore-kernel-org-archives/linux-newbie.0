From: Brett <brett@brett.d2g.biz>
Subject: Re: Suggestions on Backups
Date: Thu, 3 Oct 2002 21:40:29 -0600 (MDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0210032129560.28602-100000@linuxDBA.brett.d2g.biz>
References: <001501c26ad9$11865920$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001501c26ad9$11865920$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org



Linux linuxDBA 2.4.18-4GB #1 Wed Mar 27 13:57:05 UTC 2002 i686 unknown
  8:30pm  up 4 days, 22:17,  2 users,  load average: 1.91, 1.96, 1.91

On Thu, 3 Oct 2002, Paul Kraus wrote:

> There are many different ways to approach backup schemes. I want to put
> in a 120gb Hard Drive in my Linux Server and then use it as a backup
> server. I have about 15 various windows workstations that I want to be

Just an idea, mind you I have no experence with Samba but with NT there is
the consept of home directorys.  At work I make everyone put important
files on the mapped drive to their home directory.  That drive is of
course on a server that is backed up each night.  That way, I only have to
backup the server and not schedule seperate backups for each workstation.
Anything that is important could be configured to be on that drive,
documents, mail, etc. The users would know it as, say their H: drive.
Just a thought....

Brett
____

Linux linuxDBA 2.4.18-4GB #1 Wed Mar 27 13:57:05 UTC 2002 i686 unknown
  9:37pm  up 4 days, 23:24,  3 users,  load average: 1.91, 1.92, 1.90

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
