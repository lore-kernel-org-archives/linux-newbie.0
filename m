From: Ray Olszewski <ray@comarre.com>
Subject: Re: insmod at system startup - where?
Date: Tue, 20 May 2003 13:20:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030520131602.01f7cd18@celine>
References: <5.1.0.14.1.20030520125948.01ec6e90@celine>
 <5.1.0.14.1.20030520125948.01ec6e90@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0305201506520.959@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

modprove is neither less nor more esoteric than insmod, but a reason why 
you might *have* to use insmod instead of modprobe would be esoteric, given 
their similarities.

modprobe checks for module dependencies 
(checking/<path_to_modules>/modules.dep, a file created witht the command 
"depmod")  and loads any other modules that the named one depends on. 
insmod doesn't do this extra step. For example, if I modprobe bttv, it will 
load videodev for me; if I insmod bttv, it will load only bttv ... and 
fail, because bttv needs videodev to work.

I only use insmod in specialized cases where modprobe is not available (as 
is the case with some special-purpose distros, but no full-strength 
workstation-oridented ones).

At 03:13 PM 5/20/2003 -0500, James Miller wrote:
>On Tue, 20 May 2003, Ray Olszewski wrote:
>
> > Assuming you are not for some esoteric reason unable to use modprobe rather
> > than insmod ... all you need to do in Debian is add the name of the module
> > (without the .o part, but with any parameter settings, just the way you
> > wrote it below) to /etc/modules . One of the early-on init scripts (I
> > forget its name right now) checks this file and modprobes every module name
> > in it, in order.
> >
>Well, here we go again: time to tackle yet *another* Linux learning
>curve.  I was only being as esoteric as the directions I found on the web,
>actually.  That said, why is modprobe less esoteric than insmod?  What (in
>short scope) does each do in comparison with the other?  Being in almost
>total ignorance, I really have no preference for one over the other.  In
>other areas of life where I have greater degrees of adeptness, I usually
>choose the short and direct over the labrynthine and tortuous (you may be
>wondering: "why the hell is he using Linux, then?").  So, perhaps armed
>with a bit more know-how, I could make a valid choice between the two?
>
>Thanks, James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
