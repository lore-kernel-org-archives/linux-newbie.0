From: Ray Olszewski <ray@comarre.com>
Subject: Re: net (& module, I guess) problems after dist-upgrade
Date: Sat, 12 Jun 2004 20:57:58 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040612204315.02004830@celine>
References: <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040612121108.01fc9a80@celine>
 <Pine.LNX.4.58.0406121445360.1825@debian-emach> <Pine.LNX.4.58.0406121719540.1071@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406121719540.1071@debian-emach>
References: <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040612121108.01fc9a80@celine>
 <Pine.LNX.4.58.0406121445360.1825@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:36 PM 6/12/2004 -0500, James Miller wrote:
>Well, I took your advice and dist-upgraded Ray.  Now I know why I was not
>very anxious to do it :).  A problem occured with kernel modules during
>the dist-upgrade.  From memory, it was something like the new modules
>couldn't be configured until after the system was rebooted: somehow the
>fact that the running kernel was using modules was going to interfere.
>The message made it sound like this generation was going to be done
>automatically on next boot (and it was pretty stern about warning me to
>reboot).  I took that advice: however, also in the wake of the
>dist-upgrade there was a lilo problem.  I've got sort of a complex boot
>menu, and decided I'd need to get in there and hand-edit it.  I did.
>But, as fate would have it, I made a minor goof-up and couldn't fully boot
>when I sent the system down (the initrd.img symlink wasn't pointing to the
>right initrd.img).  But I did manage to reboot with the old kernel after
>the new one rebooting failed and to straighten out that mistake.  It was
>at that point that I spotted the fearful message "eth0 ERROR while getting
>interface flags: no such device."  And, sure enough, there was no net
>connection.  And there was no process automatically running to straighten
>out whatever module problem had occured in the dist-upgrade.  Tried
>booting a yet older kernel, but with the same eth0 error.  Thinking maybe
>the card had gone south, I booted Knoppix (can someone send that guy a
>purple heart or something?).  eth0 came up fine under Knoppix.  I ran
>lsmod there to see what modules my NIC is using.  Booted back to the
>dist-upgraded Debian, modprobed those modules and ran ifup -a - and here I
>am on the 'net again.  But this is obviously not the real solution to the
>problem.  This has all been a long-winded preface to the question: what
>the heck I gotta do to get my NIC modules back to loading on boot? Am I
>gonna run into other module problems as well?  What's the way to start
>this process that gets the module loading routine working as it should be?
>I think there was a reference to modules.dep or maybe modules.conf in that
>message I saw during dist-upgrade.  But there was definitely nothing there
>telling me how I could manually start the process that couldn't finish
>during dist-upgrade.  Any pointers, please?
>
>Thanks, James
>
>PS Most of the above refers to having booted using the new kernel (2.6.6,
>though some of those boots were with the old 2.6.5 kernel and one was even
>with the 2.4.22 kernel).  None of those were able to use eth0 and gave the
>same error message during the boot process.

OK. This general description is pretty hard to follow. I imagine you were 
pretty upset when you wrote it. If you want help with the general problem 
you experienced, you'll need to repost a more exact description.

But the immediate problem is getting the NIC module(s) to load during 
boot/init . To accomplish that, add the name(s) of the module(s) to 
/etc/modules . One of the init scripts (I forget which one) will modprobe 
every module in /etc/modules, in the order in which they appear there.

You list each module you want loaded by name, without the.o (or whatever 
2.6.x uses) suffix.

The problem you are encountering **may** be an outdated or incomplete 
listing of module dependencies. If you modprobe'd each invidivually and in 
the right order, you simply bypassed this problem in your hand install. The 
way to get this cleaned up is to run "depmod -a", which will rebuild the 
appropriate modules.dep file. The init script I referred to above -- I 
checked and it is /etc/init.d/modutils -- is supposed to do this for you 
during init.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
