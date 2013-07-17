From: Richard Genoud <richard.genoud@gmail.com>
Subject: Re: How is different version of kernel developped
Date: Wed, 17 Jul 2013 11:59:58 +0200
Message-ID: <CACQ1gAjosW1LL65+ZiTwf86MkMBZGhbsHDc7c92DmCCwEgpSCg@mail.gmail.com>
References: <20130526044147.GB8627@sl63.deity>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=Zo77UMprizCei12Ubjn9yP4qqcWz9f2oSaXE8HF4Tfk=;
        b=Hd33J7WcDisRAJkC848hqtoK9i/0XZPmhTukNUxoY2LsgI5lqyVxa307hgM90xaSpP
         IF9mCioW6gpWpYry+2wbLVpf0Krtxk92L9exyggtokcQ8mR7nqFtGLhVaMzWlseCeVOv
         tT1XWAcwNStls+zWSoVjtKwPGmDImgODC3j+zCUMQR6kADmLqG/aQZPsVqtnNVO4LEVZ
         3ghFv01PqJL121yMOljxDXwyvzdG5Jj5/BljCZayFFZRA1Q3BamIE0rC6XT3pcFpZ2P1
         6AmO6xMK4qI8qxJgQYUYL/2djcOHuHam0Mgewzf8QFBD3d5d8q/k5ujISErc5NEP2iTU
         usCA==
In-Reply-To: <20130526044147.GB8627@sl63.deity>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jimmy Pan <dspjmt@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@kernelnewbies.org

Hi,
2013/5/26 Jimmy Pan <dspjmt@gmail.com>:
> Hi,
> I am wondering how different version of kernel is discussed on kernel mailing list.
> We can see that, the latest kernel stable is 3.9.4, and the mainline is 3.10-rc2 and there is an EOF say 3.8.13 and a longterm 3.4.47, and a linux-next
> I have several questions:
> 1.When we see a patch on linux kernel mailing list, which kernel version is it based on?(seems never exsists a description in the patch)
It's always the next kernel version (now that 3.11-rc1 is out, patches
are for 3.12).
Exception: patches that corrects bugs/regression of the current -rc
> 2.What should we do if we whant to send a patch for different kernel version?
There's no way. We simply don't.
Exception: stable kernels (cf Documentation/stable_kernel_rules.txt )
(only bug fixes)
(the procedure for sending patches to stable may change in a near future)
> 3.If a 3.x-rc turn out to be stable, is it going to be 3.x.1?
After the release candidates, *every* kernel release is "stable" (but
only a few will be "long term support")
example with 3.10 serie :
after the 3.9 is out, during 2 weeks, all the git trees of the
maintainers are merged in linux-next. conflicts are solved, and then
Linus pulls the code from those trees.
That makes 3.10-rc1.
after that, each week there's a new rc, and it stops when Linus juges
that there's no "important" regressions / bugs introduced by this rc
In our case, until 3.10-rc7
Then, 3.10 is tagged and said stable.
Greg GK will maintain this version (with bug fixes only) until
3.12-rc1 is out (I'm not very sure about the timings here, but that's
the idea)
> 4.There is no 3.10 in linus' tree, what exactly is linus' tree?
yes, there is : https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/
and the stable tree is here :
https://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/

> 5.Is linux-next a preview of the next mainline version? In this case 3.10-rc3
Yes, it's a preview of the next version. But it may not compile, or
eat your data !


Richard.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
