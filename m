From: Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] commiting the .git/hooks/pre-commit and
 testing the changes on the updated e1000_main.c
Date: Tue, 26 Jul 2016 20:49:38 -0700
Message-ID: <20160727034935.GB32248@d830.WORKGROUP>
References: <64c3385b-6ee7-44ac-bb17-e265d5f9ade8@googlegroups.com>
 <20160726194613.GA14874@d830.WORKGROUP>
 <3c9a93d6-25e0-41ee-bb58-2b29a800200c@googlegroups.com>
 <20160727034046.GA32248@d830.WORKGROUP>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PA+7kI880lbz8zRQgBoCkyQcg5RTk+3JzZPiNxTtKtk=;
        b=bNHpyXjd2l7h96ne9zOGaKGKLdwf95vwGKWgAPqDIN5ydEq2S1rV2IyaJ56vbN2CGc
         w8F2yO7SGGhahCr8Dfhv2TN6liEYMN6vn6kKlYYpGTxC7RWd8PJza3OYgivtEAwGaIL/
         CaJt7xwMa4DfPsBvega8QfyXcm1sc2gsDzJgT9Lq/N+gEsWv/xA/RElwMGyUDns559Ce
         /xQYbqqYkdw9/4K4OJfZLlf7Hco0KMnwYI5mze0vYtIEgUGTcxC00jfI+bNIW0b9EpSe
         HmchI7gQzP4G0giqCPOVeVN6CUgLLF55yQkaiqn0LejHEJmq9q1+ytTI0GL6DwTyd0HG
         5wSA==
Content-Disposition: inline
In-Reply-To: <20160727034046.GA32248@d830.WORKGROUP>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: courage angeh <courageangeh@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Tue, Jul 26, 2016 at 08:40:47PM -0700, Alison Schofield wrote:
> On Tue, Jul 26, 2016 at 08:19:00PM -0700, courage angeh wrote:
> > 
> > 
> > On Tuesday, July 26, 2016 at 8:46:17 PM UTC+1, Alison Schofield wrote:
> > >
> > > Hi Courage ? ;) 
> > > I'll help you.  I'm an outreachy intern now. 
> > >
> > > We need to move this thread over to linux-newbie mailing list, since 
> > > this outreachy list won't be active until the next application round. 
> > > Please 'cc linux-newbie on posts as I've done above. 
> > >
> > > See comments in line below. 
> > > alisons 
> > >
> > >
> > > On Tue, Jul 26, 2016 at 11:06:10AM -0700, courage angeh wrote: 
> > > > I am a newbie... just start recently preparing for the out reach program 
> > > in 
> > > > December.... i started at: https://kernelnewbies.org/Outreachyfirstpatch 
> > > > but i have a number of difficulties: 
> > > > 1. After editx... ,  recompiling my driver, installing the changes and 
> > > > rebooting my linux system . I tested the changes but i didn't find the 
> > > > message " I can modify the Linux kernel!".... i contacted the irc 
> > > > channel:#kernel-outreachy but i seemed not to exist. 
> > >
> > > Let's go step by step. 
> > >
> > > Let's make sure you put in a printk that will get printed. 
> > > Let's make sure you've compiled the module. 
> > >
> > > Confirm you compiled the module...do you see a .ko with new timestamp? 
> > >
> > > Can you sudo modprobe <drivername> ? 
> > > Or sudo insmod drivername.ko ? 
> > >
> > > (at this point you don't need to keep rebooting the kernel.  We will 
> > > modprobe add/remove your driver.) 
> 
> OOPS!!!  I just reaquainted myself with the first patch tutorial and
> realize that you are on the step that tells you to modify a driver
> that is running on your system. So - forget what I said about modprobe
> and insmod.  You'll do that in the next step.  (It wouldn't hurt your
> system, it just would fail with device busy.)
> 
> OK...see more below
> 
> 
> > >
> > > post what you have on the above items and I'll take a look. 
> > >
> > 
> > Thanks for the reply. 
> > I did run the command but no output. i got an idea but i don't know if its 
> > right
> > i actually edited but the diver file in a folder in my work directory  not 
> > the driver file in my OS 
> > kernel...:/home/courage/git/kernels/staging/drivers/net/ethernet/intel/e1000
> > 
> > 
> > while the r other instances of this driver in my computer:
> > /lib/modules/3.13.0-32-generic/kernel/drivers/net/ethernet/intel/e1000
> > /lib/modules/4.7.0-rc6+/kernel/drivers/net/ethernet/intel/e1000
> > /usr/src/linux-headers-3.13.0-32/drivers/net/ethernet/intel/e1000
> > /usr/src/linux-headers-3.13.0-24/drivers/net/ethernet/intel/e1000


note: my tree is called 'iio' while you've named yours 'staging' of
course.  And, yes, you need to be doing the changes and building in
your git staging tree.

> 
> here's what i'd do on my system, see if you can track similar.
> 
> Find which ethernet modules sys is using:
> $ lsmod | grep e1000
> e1000e                233472  0 
> ptp                    20480  1 e1000e
> 
> Go find it:
> 
> amsfield22@d830:~/git/kernels/iio/drivers/net/ethernet/intel$ ls
> e1000   e100.c  i40e    igb    ixgb   ixgbevf  Makefile
> e1000e  fm10k   i40evf  igbvf  ixgbe  Kconfig
> amsfield22@d830:~/git/kernels/iio/drivers/net/ethernet/intel$ cd e1000e
> amsfield22@d830:~/git/kernels/iio/drivers/net/ethernet/intel/e1000e$ ls
> 80003es2lan.c  defines.h  ich8lan.c  Makefile  nvm.c    phy.h
> 80003es2lan.h  e1000.h    ich8lan.h  manage.c  nvm.h    ptp.c
> 82571.c        ethtool.c  mac.c      manage.h  param.c  regs.h
> 82571.h        hw.h       mac.h      netdev.c  phy.c
> amsfield22@d830:~/git/kernels/iio/drivers/net/ethernet/intel/e1000e$
> grep probe *.c
> netdev.c: * e1000_probe - Device Initialization Routine
> netdev.c: * e1000_probe initializes an adapter identified by a pci_dev
> structure.
> netdev.c:static int e1000_probe(struct pci_dev *pdev, const struct
> pci_device_id *ent)
> netdev.c:	.probe    = e1000_probe,
> amsfield22@d830:~/git/kernels/iio/drivers/net/ethernet/intel/e1000e$ 
> 
> I'd edit the probe function in netdev.c
> 
> Then follow tutorial instructions for rebuild/reboot.
> Look in dmesg for your printk message.
> 
> Let me know if you get further along...
> 
> alisons
> 
> 
> 
> 
> > 
> >  
> > 
> > >
> > > > 2. i went ahead to creating the .git/hooks/pre-commit but when i try 
> > > > staging and commiting the file i get the respective errors: 
> > > > 
> > > > error: Invalid path '.git/hooks/pre-commit' 
> > > > error: unable to add .git/hooks/pre-commit to index 
> > > > fatal: adding files failed 
> > > > 
> > > > and 
> > > > 
> > > > error: pathspec 'First patch' did not match any file(s) known to git. 
> > > > 
> > > > please some one help me out??? 
> > >
> > > You are not submitted that pre-commit hooks file.  It lives in your 
> > > git tree to poke you went you make a submittal. 
> > >
> > > > 
> > > > 
> > > > -- 
> > > > You received this message because you are subscribed to the Google 
> > > Groups "outreachy-kernel" group. 
> > > > To unsubscribe from this group and stop receiving emails from it, send 
> > > an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > > > To post to this group, send email to outreach...@googlegroups.com 
> > > <javascript:>. 
> > > > To view this discussion on the web visit 
> > > https://groups.google.com/d/msgid/outreachy-kernel/64c3385b-6ee7-44ac-bb17-e265d5f9ade8%40googlegroups.com. 
> > >
> > > > For more options, visit https://groups.google.com/d/optout. 
> > >
> > >
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3c9a93d6-25e0-41ee-bb58-2b29a800200c%40googlegroups.com.
> > For more options, visit https://groups.google.com/d/optout.
> 
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
