From: Ralph Gesler <rgesler@pacificnet.net>
Subject: Re: Strange shutdown problem with KDE2.2.2.
Date: Tue, 16 Apr 2002 15:58:55 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CBCACAE.A4A0A4F1@pacificnet.net>
References: <Pine.LNX.4.33.0204152254570.28074-100000@enigma.sjcentral.net> <02041615474301.04062@unix.pa3gcu> <3CBC6319.8EB8337C@pacificnet.net> <02041619410805.04062@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

Richard Adams wrote:
> 
> On Tuesday 16 April 2002 17:44, Ralph Gesler wrote:
> 
> > In case you missed it, the origional oster is using a 2.4.18 kernel. I
> > am using 2.4.4., but alo saw the same event with a 2.2.9 kernel. Do you
> > recall if Alan Cox may have indicated some kernel option or compile
> > option that would help to generate dumps or logs that may help track
> > down the source of the bug.
> 
> No. it did not get to that stage, a new kernel cam out and my problem was
> gone.
> 
> To answer another question i have a laptop Armada E500 with tft, i dont have
> it here today to check its hardware, however i have never had such a problem
> on it.
> 
> >
> > Since I can not duplicate the condition at will that causes this bug to
> > appear, I hope that I will have enough information by the next occurance
> > to generate som meaningful data.
> 
> Questions that mostly get asked are, was the machine pingable from another
> host, did the caps lock led work upon depressing num-lock. H/Disk led status
> H/D activity.
>
As I mentioned before, the keyboard, mouse and X display where locked. I
did not see any H/D activity.
 
> One suggstion i had was to have a serial terminal available on a comm port to
> try and get into the machine, that is not much use if it's locked up tho' but
> i have found it handy with other problems.
> 
I explained in my first posting that I could login via ssh from another
system and execute commands.  If I try to shutdown the faulted system,
after su'ing to root, a partial shutdown is executed, but hangs at
somepoint after killing the net connection but prior to unmounting the
file system.

My hope is that some kernel, or X, or KDE guru will be able to guide me
in where to look for the problem while I still have control from the
external terminal.

Thanks, 
Ralph Gesler

> >
> > Ralph Gesler
> 
> --
> Regards Richard
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
