From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: New linux box
Date: Mon, 26 Jan 2004 20:53:06 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040126195306.GA20068@teamfinders.org>
References: <200401262213.43388.wheds8@ms66.hinet.net> <Pine.LNX.4.58.0401261552000.12103@ppg_penguin>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.58.0401261552000.12103@ppg_penguin>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Ken,

Are you referring to one the VIA Mini-ITX boards with the C3s or EPIA-M's installed?  I have one of those, and from the reading I have been doing, it seems I am going to have quite a time of it configuring it under Slackware.  VIA distributes binary drivers for their C3/EPIA-M boards, but the modules are built for a limited number of distros running stock kernels.  They do have drivers that are distro independent, but I understand that they require a good bit of configuration to get working.

If I weren't too worried about speed and wanted a small quiet box, I think I'd go more for one of the small form factor (SFF) boards and cases, such as Shuttle or Biostar.  Right now, I am resisting the temptation to get a Shuttle SN45G to build as a firewall or PVR (if I get too frustrated with the VIA EPIA-M).  Doesn't have the onboard video, so you can add a dependable video card of your own.

If your experience with the C3 has been different though, let me know.  I want to set this VIA board up as a PVR.  Other than early, not-really-serious attempts to install the VIA video drivers, I haven't started messing with the VIA-specific parts of it yet.  Still trying to get Freevo or MythTV to run on a Slackware distro.

Cheers,
Sean

On Mon, Jan 26, 2004 at 03:57:28PM +0000, Ken Moffat hunted and pecked out:
> On Mon, 26 Jan 2004, S. Barret Dolph wrote:
> 
> > Well, my problems have much to do with hardware and it is time to get a new
> > box. My old box ran for 6 years with Mandrake and never crashed. (X-windows
> > crashed when setting up Matrox 450 though.) My question is what hardware is
> > good to avoid. I only use my computer for work, no games, but I am on it at
> > least 6 hours or more a day. I care mostly about stability and don't really
> > care too much about speed. So more to the point are any of you aware of
> > hardware that is a nightmare to install. Or a site which can help.
> >
> > Cordially,
> > S. Barret Dolph
> > Taipei Taiwan
> > -
> 
>  If it's that old, your biggest problem on anything new might be noise!
> For stability with an Athlon or P4, don't skimp on the power supply.  If
> you don't need a lot of power, maybe something based on a via C3 might do
> - but make sure you install i586 or i386 binaries, gcc usually thinks
> C3s are i686 but they don't have the 'cmov' instruction.
> 
> Ken
> -- 
> This is a job for Riviera Kid!
> -

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
