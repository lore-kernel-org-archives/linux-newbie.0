From: caszonyi@rdslink.ro
Subject: Re: upgrading open ssh
Date: Mon, 23 Feb 2004 23:45:05 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0402232343260.1619@grinch.ro>
References: <HBEJLOFMLEPBMAAEFNFDMECICFAA.azapata@du.edu>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDMECICFAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Anna G. Zapata" <azapata@du.edu>
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

On Mon, 23 Feb 2004, Anna G. Zapata wrote:

> Hi all,
>
> I downloaded and installed the latest version of open ssh.  I was running openssh-3.6.1p2-19 on a Fedora box.  However,
> how do I know that the new install took and that the old open ssh has been done away with?  I did the ./configure, make,
> and make install, but I think I'm missing some steps.
>

ls -l `which sshd`  `which ssh`
and look at time field
they should have the date you installed them

> Thank you as always.
>
> Anna Zapata
> UTS - Network Security
> 303.871.2009
>
>



--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
