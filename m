From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: startx
Date: Wed, 16 Jul 2003 21:00:36 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307162100.36307.pa3gcu@zeelandnet.nl>
References: <HBEJLOFMLEPBMAAEFNFDOELNCAAA.azapata@du.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDOELNCAAA.azapata@du.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Anna G. Zapata" <azapata@du.edu>, Linux-Newbie <linux-newbie@vger.kernel.org>

On Wednesday 16 July 2003 20:09, Anna G. Zapata wrote:
> Hi all,
>
> I have startx configured to startup when I boot the machine, however, it
> doesn't work.  I still have to type startx at the command line.  Any ideas
> as to what's going on here?

You make no mention of what distro you use and further more who are you,? root 
a normal user.??
Anyway most distros have a file called inittab and its found in /etc edit the 
line which looks like;

id:3:initdefault:
To which ever runlevel is defined as X11 with KDM/GDM/XDM (session managers)
that should be found (or something like it at the top of inittab.

type init X (as root) after inittab has been changed to start X.

X = the runlevel nember of your distro for X.

If that sounds and looks strange to you, then you know how your question 
looked to me and others here on the list, please give more info to get a 
decent answer.

> Anna G. Zapata - GSEC, MCIS
> University of Denver
> University Technology Services - Network Security
> (303) 871-2009 (phone)
> (303) 871-4135 (fax)
> azapata@du.edu (email)
>

-- 
If the Linux community is a bunch of theives because they
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
