From: "Jim C. Brown" <jma5@umd.edu>
Subject: Re: root password
Date: Sun, 3 Apr 2005 00:05:45 -0500
Message-ID: <20050403050545.GA28883@jbrown.mylinuxbox.org>
References: <20050403043940.90401.qmail@web52903.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-admin-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20050403043940.90401.qmail@web52903.mail.yahoo.com>
Sender: linux-admin-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: linux-admin@vger.kernel.org, linux-newbie@vger.kernel.org

On Sat, Apr 02, 2005 at 08:39:40PM -0800, Ankit Jain wrote:
> in this case the authenticity is a problem. still it
> can be changed by a boot CD even i think so u have
> apasswd for boot loader. so in this case what should
> be done?

Password on the bootloader will only stop those who are trying to get into
single user mode. In most cases, a boot CD will be loaded before the hard disk
is checked for a bootloader, and in that case the password protection would
be effectively bypassed.

If your bios supports it, you can turn on a CMOS password ... this is asked
the moment you turn your computer on from a cold boot, and must be entered
correctly before the bios will load any boot media (such as CDs, hard disks,
floppy disks, etc). However it is fairly easy to read the CMOS password on a
running system, and it can be erased by resetting the CMOS chip's battery.
So a determined person (such as a computer thief) will be able to bypass all 3
password protections.

There is the additional factor of password protecting your file systems (by
means of encryption) but this is not a trival undertaking (there is no single
'what command do i type' to do this, and unless this is a fresh install or you
have fresh backups there is the possibility of losing all your data in the
conversion if something goes wrong). And it only protects your data from being
read, a thief could still bypass CMOS password and load up bootCD to erase
everything on your disk.

> and also is there any other flaws which are
> openly known i am not intrested to destruct any system
> but want to know which is already known to ppl that if
> root passwd can be changed any other way also?
> 
> thanks to all for helping me out

I would recommend looking at linuxsecurity.com or the security advisorys on
linux.com

> 
> regards,
> 
> ankit
> --- Ray Olszewski <ray@comarre.com> wrote:
> > At 10:55 AM 4/1/2005 -0600, Eric Bambach wrote:
> > >On Wednesday 30 March 2005 08:36 am, Ray Olszewski
> > wrote:
> > > > Any other suggestion of how to become root
> > without knowing the root
> > > > password is a technique for breaking into
> > systems, and I (and I hope
> > > > everyone else) will not give advice on that
> > publicly, in this forum or
> > > > anywhere else.
> > >
> > >I respectfully disagree. How will sysadmins ever
> > know how to secure their
> > >systems unless they know HOW break-ins occur.
> > Certainly most hacking doesnt
> > >come from boot CDs but having a more informed
> > sysadmin is infinitely better
> > >than one that only discovers how to make their
> > system more secure *AFTER*
> > >being broken into.
> > >
> > >What you are saying is that security through
> > obscurity is good and there have
> > >been countless rebuttals on just how horrible
> > security though obscurity is in
> > >99% of the situations. The only reason for S.T.O.
> > is a company that found an
> > >exploit and is giving lead-time to the vendor to
> > patch their vulnerable
> > >software.
> > 
> > I wasn't quite saying that, and I apologize if my
> > abbreviated presentation 
> > led you down that path. My reluctance was specific
> > to this context, in 
> > which someone was asking not how to secure a system,
> > but how to become root 
> > without knowing the root password. That it was his
> > own system he wanted to 
> > break into certainly is relevant, but, on a public
> > list, it is not the only 
> > consideration.
> > 
> > I do believe that sysadmins need to know how to
> > secure thair systems. There 
> > are plenty of sites on the Internet, and books and
> > articles in print, that 
> > offer this sort of help. And one can learn how to
> > secure systems without 
> > receiving detailed tutorials in how to exploit
> > common holes (buffer 
> > overflows, overprivileged daemons, weak passwords,
> > and so on).
> > 
> > But I also believe that giving step-by-step
> > instructions for how to break 
> > into systems, on a list intended for beginners, is
> > not the best way to make 
> > this information public. That sort of help is a bit
> > more than fighting 
> > "security through obscurity" by identifying
> > vulnerabilities, in my opinion 
> > ... it amounts to tutoring crackers, something I
> > personally do not care to 
> > do. Particularly in the context of the actual
> > question, which involved a 
> > system that the poster (presumably) had physical
> > access to, so could retake 
> > control of with a rescue disk.
> > 
> > If you (and Tobias, and anyone else) feel
> > differently, then you should act 
> > on your beliefs and provide this sort of information
> > on request, I suppose. 
> > So I do apologize for the suggestion that my
> > personal view here should 
> > restrict what you and others do. Please feel free to
> > provide any 
> > information of this sort that you have, and be sure
> > I will not criticize 
> > you for doing so.
> > 
> > 
> > -
> > To unsubscribe from this list: send the line
> > "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at 
> > http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at
> > http://www.linux-learn.org/faqs
> > 
> 
> 
> 		
> __________________________________ 
> Do you Yahoo!? 
> Yahoo! Personals - Better first dates. More second dates. 
> http://personals.yahoo.com
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-admin" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 

-- 
Infinite complexity begets infinite beauty.
Infinite precision begets infinite perfection.
