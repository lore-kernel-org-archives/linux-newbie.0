From: Ray Olszewski <ray@comarre.com>
Subject: Re: TFT display on Debian GNU/Linux
Date: Tue, 02 Sep 2003 07:39:07 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030902072443.01fb8f98@celine>
References: <200309020853.h828r6j4017481@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309020853.h828r6j4017481@ev6.be.wanadoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At , Heimo Claasen wrote:
>Geoff -
>
> > Is there a simple reason why the "commercial distros" are able to do
> > this ?  Maybe they are using non-GPL  software that we would not wish to
> > see in Debian.
>
>Me newbie cannot see the difference - it seems not a problem of proprietary
>drivers (many of the video cards' are that in any case, as the chips
>are firmware) - as much I can see is that both Debian and Mandrake, for
>instance, use the same "nv" driver for the Nvidia TNT2 chip (one of the
>bones of contention). Then why couldn't we arrive at having the full high
>resolution scale working with the monitor(s) ? There, the spec.s and
>interfaces are broadly open, so that's no so much of an issue. </sigh>


Since the original question in this thread involved a TFT flat-panel 
display with an unnamed video card, I didn't focus before on your technical 
comment (or, as you call it, your "bone of contention"), Heimo. As regards 
it, you haven't described the problem in enough detail to get help with it.

 From what you did write, I inferred that your problem (as distinct from 
the original poster's) was with the setup script in the Debian X package 
(probably xfree86-xserver), not with the underlying X server itself. And as 
I said in response, it's well known that Debian installers are primitive 
compared to the ones with many of the commercial distros (I think the 
original poster was comparing Debian to Red Hat). Its something that Debian 
users learn to live with, though not to brag about.

As regards the particular chipset you had trouble with, it is worth noting 
that there are two choices for nVidia cards in X -- the "nv" driver that is 
part of standard XFree86, and the "nvidia" driver that is available from 
nVidia and is not free software. Debian does not ship the latter driver -- 
despite its technical superiority with many nVidia cards (I don't know 
specifically about yours; I use it here with several GeForce-based cards 
that offer TV out), its failure to meet the DFSG means Debian does not 
include it (but I'm told that some other distros do ship with it, and that 
nVidia has licensed it in a way that permits some redistribution).

But really, without a description of the problem that includes some 
technical details, neither I nor anyone else can really give you good 
advice about it. Was I wrong, for example, in thinking that the problem was 
in the setup script (that is, that it creates an XF86Config-4 file with 
errors)? What version of XFree86 (and of Debian, for that matter) was 
involved in your attempts? How long ago did you try (like all distros, 
Debian has transient problems, ones that get fixed, especially in Unstable)?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
