From: Kari Hurtta <hurtta+z1@leija.mh.fmi.fi>
Subject: Re: reading links in proc - permission denied
Date: Sat, 14 Jun 2003 22:05:07 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306141905.h5EJ57mE024740@leija.fmi.fi>
References: <008501c32b98$cc7503f0$1403a8c0@sc.tlinx.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <008501c32b98$cc7503f0$1403a8c0@sc.tlinx.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "linda w." <linux-newbie@tlinx.org>
Cc: linux-newbie@vger.kernel.org

> I'm misunderstanding something about links in proc.
> 
> I thought 'ps', 'top' et al used /proc to display processes, command lines,
> etc.
> 
> Since neither ps nor top are suid root, they are running with my uid
> permissions.
> 
> However, if I do "ls -l" on /proc/<number>/exe, I get a
> 
> "ls: cannot read symbolic link /proc/16714/exe: Permission denied"
> 
> message.

Well, 'top' perhaps reads /proc/{number}/cmdline and not look about
/proc/{number}/exe

> Now the process is owned by 'named', but the entries in diriectory are
> owned by root (is that right/logical?), thus:
 
> I can't read that link -- yet the permissions say rxw for group and other.
> So why am I getting the *permission error*?  The binary it is pointing to
> /usr/sbin/named is also publicly readable, so that can't be the problem.

Well, perhaps /proc also uses some other criteria (and not only permission
mask) to determine who can do readlink() 

Perhaps extra condition is

       if (current->fsuid != inode->i_uid && !capable(CAP_DAC_OVERRIDE))
                goto out;

(or I looked wrong function)

 
> 	So why can't I follow the link of 'exe' to see what image the process
> is executing?  Programs like 'ps' and 'top' seem to not have this
> difficulty.

Are you sure that 'top' uses that 'exe' ?


/ Kari Hurtta
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
