From: Peter <heisspf@skyinet.net>
Subject: Re: Fedora5 Kernel Panic
Date: Tue, 13 Jun 2006 09:48:41 +0800
Message-ID: <20060613094841.061a336e@skyinet.net>
References: <200606120336.k5C3aGAg004443@skyinet.net>
	<20060612135719.GA1027@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060612135719.GA1027@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

On Mon, 12 Jun 2006 09:57:19 -0400
Hal MacArgle <haltec@kvinet.com> wrote:

> On 06-12, Peter wrote:
> > Hi,
> > 
> > After I upgraded from Fedora4 to Fedora5 I ended up with kernel panic when 
> > booting into it.
> > 
> > I had media checked all 5 CDs and all were OK.
> > 
> > Make a new install of Fedora5, same kernel panic on booting.
> > 
> > Google 'fedora5 kernel panic', lots of kernel panic problems with no solutions 
> > offered.
> > 
> > I started Linux with RedHat 5.2 and upgraded all the way to Fedora5 which now 
> > seems to be the end of my affiliation with this distro. Did not use it anyhow 
> > anymore, just kept it more for nostalgic reasons.
> > 
> > 
> > Did somebody say Bill Gates dos not have to worry about Linux?
> 
> 	With his money does he have to "worry" about anything??
> 
> 	Anyway; I successfully installed FC5 on two machines as long
> as I checked the media first, but this was with the DVD version
> rather than the CD version; two disks.. Could your CD's have a
> problem??
> 
> 	Since the install completed and the problem is booting; am
> wondering if a problem with the first sector of your HD not being
> liked by FC5?? Did you try zeroing the first sector before retrying?
> Some remnant code still there from previous work?
> 
> 	Since the distrib uses Grub; wonder what the /boot/grub files
> have to say about it?? I wonder if there's a "spot" on your HD that it
> doesn't like, and doesn't show up with other distribs?
> 
> 	Maybe just a "fluke" much like your installing some stuff
> that failed for me in the past.. Ugh..
> 
> 	Not defending FC5, not my favourite.. As you know, I don't
> use it..

> 

I tried to install on separate HDs. I formnatted them beforehand.
And anyhow it fouled-up my fedora4 installation first when I made the upgrade.

When I checked with google on 'fedora5 kernel panic' they all reported the
same errors as I am getting on booting before it stops with kernel
panic .

When I looked into /etc/fstab it had there a /dev/root which on booting it
reported it could not find. My swap was LABEL=&%@* and more weird
characters. /etc/mtab had only one entry /dev/root 

So I guess there is really a bug in this particular fedora5 edition.
-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
