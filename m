From: Ray Olszewski <ray@comarre.com>
Subject: Re: shared partition for dual boot
Date: Fri, 11 Jul 2003 22:42:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030711223708.020181c8@celine>
References: <Email.pvHcaE4ibhs@lcsd.k12.wa.us>
 <Email.pvHcaE4ibhs@lcsd.k12.wa.us>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.56.0307112258490.1107@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:36 PM 7/11/2003 -0500, James Miller wrote:
>On Fri, 11 Jul 2003 dbentson@lcsd.k12.wa.us wrote:
> >
> > Thanks for the response. How would I determine what the desktop I am 
> running
> > is? I thought that Gnome was the desktop environment... I have a lot to 
> learn I
> > think.
> >
> > I will need to check on the etc/fstab information... I doubt that it is 
> there
> > though since I never added anything - and the partition was created after I
> > installed Redhat.
> >
> > Just for kicks, what should I expect to see in etc/fstab?
[...]
>Can others offer some help on this query?  I don't want to go on at too
>great length since I don't always know what the heck I'm talkin' 'bout.

James -- You do not need much help; you got it right as far as you went.

Basically, the original problem has 3 elements:

1. Does his kernel support the vfat filesystem type? Answer: who knows? 
Easiest way to find out is to try step 2 and if it fails with a suggestive 
error message, come back to this step.

2. Is the partition mounted? Answer: He can do this by hand or, as you 
suggested, with an /etc/fstab entry of the form:

>/dev/hda3  /home/data   vfat   defaults   0      1

After adding that entry, either reboot (not really needed in this case) or 
enter (as root):
         mount /home/data

Then check (with "fstab", to pick one of many ways) to see that the 
partition actually has mounted.

3. Does the mounted partition show up on the desktop? Answer: Not being 
familiar with Red Hat, and being accustomed to using a minimalist WM and no 
desktop environment, I could not suggest what he needs to do here even if I 
knew what desktop environment he was running.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
