From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Mon, 19 May 2003 10:51:11 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EC9198F.9080600@bcgreen.com>
References: <20030510100903.GA1586@localhost.localdomain> <5.1.0.14.1.20030510082110.01eae2b0@celine> <20030510160917.GA890@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030510160917.GA890@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

Amin wrote:
> On Sat, May 10, 2003 at 08:42:05AM -0700, Ray Olszewski
> wrote:
> 
> 
>>I did not see the original posting, and I can't find it
>>anywhere. Amin's response does not indicate whether the
>>original posting mentioned the Linux distro involved, and
>>he does not do so. And Amin's advice is not
> 
> 
> Sorry, I found the original post in Google Groups:
> http://groups.google.com/groups?q=mlist.linux.newbie&ie=UTF-8&oe=UTF-8&hl=en&btnG=Google+Search
> 
> And here it is:
> 
>     From: Workman (david.rust@watkinsmfg.com)
>     Subject: How do I stop GUI from autoloading?
>     Newsgroups: mlist.linux.newbie
>     This is the only article in this thread
>     View: Original Format
>     Date: 2003-03-30 08:00:16 PST

.....

>>log in). In that case ... typically, distros that run xdm
>>also open a hidden console on /dev/tty1, which one can
>>access by pressing CTRL-ALT-F1 when the xdm display is
>>active. You can then log in, make any needed changes, and
>>reboot.
> 
> 
> That is a good idea, but I was afraid that it would mess
> around with X.  I tried it once (I'm using RH8.0), and it
> seemed to hose my X server.

ctrl-alt-F1 should not mess with X (It's messed up,
anyways, so who cares). It simply moves you to a different
virtual terminal.  X is still running.  ctrl-altF7 (on redhat)
will move you back to the X screen.  It might be a differnt
screen number for Turbo Linux... (just go through all 12
ctrl-alt-F[n] sequences if you can't find it).

>>Finally, if even that does not work, at the lilo prompt
>>(assuming we're talking about an install that uses lilo),
>>instead of accepting the default load, you can usually
>>enter "linux single" to boot/init into single-user mode
>>with a console rather than X presented.
> 
> 
> I assumed Linux was the lone OS on the PC, so there was no
> bootloader.

There will be a boot loader... be it Lilo, GRUB, or whatever.
watch the boot sequence closely.

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
