From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Fedora5 Kernel Panic
Date: Mon, 12 Jun 2006 09:57:19 -0400
Message-ID: <20060612135719.GA1027@lnx2.kvinet.com>
References: <200606120336.k5C3aGAg004443@skyinet.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200606120336.k5C3aGAg004443@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On 06-12, Peter wrote:
> Hi,
> 
> After I upgraded from Fedora4 to Fedora5 I ended up with kernel panic when 
> booting into it.
> 
> I had media checked all 5 CDs and all were OK.
> 
> Make a new install of Fedora5, same kernel panic on booting.
> 
> Google 'fedora5 kernel panic', lots of kernel panic problems with no solutions 
> offered.
> 
> I started Linux with RedHat 5.2 and upgraded all the way to Fedora5 which now 
> seems to be the end of my affiliation with this distro. Did not use it anyhow 
> anymore, just kept it more for nostalgic reasons.
> 
> 
> Did somebody say Bill Gates dos not have to worry about Linux?

	With his money does he have to "worry" about anything??

	Anyway; I successfully installed FC5 on two machines as long
as I checked the media first, but this was with the DVD version
rather than the CD version; two disks.. Could your CD's have a
problem??

	Since the install completed and the problem is booting; am
wondering if a problem with the first sector of your HD not being
liked by FC5?? Did you try zeroing the first sector before retrying?
Some remnant code still there from previous work?

	Since the distrib uses Grub; wonder what the /boot/grub files
have to say about it?? I wonder if there's a "spot" on your HD that it
doesn't like, and doesn't show up with other distribs?

	Maybe just a "fluke" much like your installing some stuff
that failed for me in the past.. Ugh..

	Not defending FC5, not my favourite.. As you know, I don't
use it..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
