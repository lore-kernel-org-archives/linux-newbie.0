From: Ray Olszewski <ray@comarre.com>
Subject: Re: faulty screen resolution
Date: Tue, 31 Aug 2004 20:23:40 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040831201041.01f13888@celine>
References: <fc.004c4e000061adaa004c4e000061adaa.61af5d@palmertrinity.org>
 <fc.004c4e000061adaa004c4e000061adaa.61af5d@palmertrinity.org> <41353BEE.3060307@kevino.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41353BEE.3060307@kevino.org>
References: <fc.004c4e000061adaa004c4e000061adaa.61af5d@palmertrinity.org>
 <fc.004c4e000061adaa004c4e000061adaa.61af5d@palmertrinity.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:03 PM 8/31/2004 -0700, mike wrote:


>William Stanard wrote:
> > I'm running Linux 2.4.18-14smp on a Compaq Proliant, using an Acer 56c
> > monitor, and the X login practically fills the screen. I cannot even get
> > to the OK button in trying to switch the screen resolution. This pretty
> > well immobilizes me as far as using the Mozilla browser or any Xterm apps.
> > Any ideas? When I was running the same 2.4.18-14 on an old Acer desktop
> > model, no problem... the monitor comes from that setup, by the way. Would
> > it be safe to swap the video cards as a kludge? BTW, what does the smp
> > mean at the end of the version number?
> >
> > Bill Stanard
> > Academic Computing
> > Palmer Trinity School
>
>
>While you are in X try    Ctrl+Alt+(-)or(+)
>The - and + will move the resolutions up and down. Which may allow
>you see the whole screen to configure your resolution.

That approach might work. But from the problem report, it sounds like you 
(William) are stuck at the xdm or gdm screen, which I believe uses the 
low-res vga X server and does not have multiple resolutions.

So ... what to do?

1. See if the problem is actually with the monitor; that is, fiddle with 
its vertical and horizontal settings to see if you can get the full screen 
to display.

2. See if the problem is with the settings for your video card (the wrong 
vscan or hscan value, probably).

3. Bypass xdm or gdm completely by going to a vt console. *Exactly* how you 
do this depsnds on unreported details of your Linxu distro, but the usual 
way is via CTRL-ALT-F1 through CTRL-ALT-F6, to access the 6 VTs that Linux 
inittab files usually create. Then from there, use "startx" (after you log 
in) to bypass the xdm/gdm problem.

BTW, if the VTs also have trouble with the display, then this indicates a 
hardware problem of some sort.

4. Swap the video cards. This is usually safe, if you follow normal 
procedures, and -- IMPORTANT QUALIFICATION -- if the old card is compatible 
with the new mobo. Occasionally, I've run into AGP cards that won't work 
with some AGP mobos; I even have a mobo that came with a warning that 
certain AGP cards could destroy the mobo. Since you identify neither of the 
video cards involved, no one here can assure you that that proposed swap 
will be "safe".

PS -- "smp" means "Symmetric MultiProcessor". It means the kernel is 
compiled to work with systems that have 2 or more CPUs.

If you need to post again, please be sure to include more complete basic 
details: what Linux distro, what X version, what video card(s) ... provide 
the info for both old and new systems  -- in addition to the specifics of 
the trouble you are having. (This is good advice for ANYONE posting a 
question, BTW ... always mention the basics of your setup.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
