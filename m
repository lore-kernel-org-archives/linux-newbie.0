From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Ntfs compability
Date: Tue, 14 Mar 2006 09:23:43 -0500
Message-ID: <20060314142342.GA1164@lnx2.kvinet.com>
References: <1142332639.44169cdfe9602@webmail2.hut.fi>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1142332639.44169cdfe9602@webmail2.hut.fi>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ttpiirai@cc.hut.fi
Cc: linux-newbie@vger.kernel.org

On 03-14, Tommi Tapani Piirainen wrote:
> Hi,
> 
> I have slackware 10.1. I rewrote my ntfs partition with cfdisk and now I am
> unable to boot the partition (with windows xp). Can the problem be that i wrote
> the table with cfdisk or could it be some thing else. In additional there is two
> different ntfs partition is cfdisk both named same way. I used the first one
> can't remember the number (or was it 86, don't remember).
> 
> The reason for doing this was to include slackware to same disk. First I deleted
> ntfs partition and made it smaller. Motivation for doing this was mbr chrash due
> use of "System Mechanic 6" or at least I think so. I intalled lilo to mbr and it
> fixed the mbr problem. Booting problems can also have some thing to do with
> System Mechanic 6 altering my dll-files or some thing else.
> 
> The ntfs partition is first partition in the disk and I use lilo-bootloader. Can
> I fix the partition with ntfstools to be bootable?
> 
> -- 
> Tommi

	Greetings: In other words it looks like you want XP to boot,
but then how would you run Slack; with a floppy??

	Anyway could you not re-edit /etc/lilo.conf putting the hda1
notations ahead of the Linux notations; running lilo to rewrite the MBR?

	How about booting with an XP rescue floppy or CD and running
the old standby; fdisk /mbr??  Live dangerously, eh?

	HTH.


-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
