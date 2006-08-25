From: "Greg Freemyer" <greg.freemyer@gmail.com>
Subject: Re: Generic Disk Driver in Linux
Date: Fri, 25 Aug 2006 14:19:53 -0400
Message-ID: <87f94c370608251119j4e04b33at67e86539b7bd1744@mail.gmail.com>
References: <44EECF16.6060602@aitel.hist.no>
	 <20060825170513.60108.qmail@web83113.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060825170513.60108.qmail@web83113.mail.mud.yahoo.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Aleksey Gorelov <dared1st@yahoo.com>
Cc: Helge Hafting <helge.hafting@aitel.hist.no>, jengelh@linux01.gwdg.de, daniel.rodrick@gmail.com, linux-kernel@vger.kernel.org, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, satinder.jeet@gmail.com

On 8/25/06, Aleksey Gorelov <dared1st@yahoo.com> wrote:
>
>
> --- Helge Hafting <helge.hafting@aitel.hist.no> wrote:
>
> > Aleksey Gorelov wrote:
> > >> From: linux-kernel-owner@vger.kernel.org
> > >> [mailto:linux-kernel-owner@vger.kernel.org] On Behalf Of Jan Engelhardt
> > >>
> > >>> I was curious that can we develop a generic disk driver that could
> > >>> handle all the kinds of hard drives - IDE, SCSI, RAID et al?
> > >>>
> > >> ide_generic
> > >> sd_mod
> > >>
> > >> All there, what more do you want?
> > >>
> > >
> > > Unfortunately, not _all_. DMRAID does not support all fake raids yet. Moreover, there is
> > usually
> > > some gap for bleeding edge hw support.
> > >
> > Nobody will want to use bleeding edge hardware with an int13 driver,
> > because the performance will necessarily be much worse than using more
> > moderate hardware with the generic IDE driver.
> If some one wants Linux server - I totally agree. I would probably even avoid relying purely on
> generic IDE and instead use chipset specific variant or libata.
> But if someone wants to access already installed & working other OS stuff - that's a different
> story. Bad performance is still better than no support at all.
>

I'll add a vote for this.  Not sure if the user base is large enough
to justify it being added to the mainline kernel, but Computer
Forensic professionals often need to image computers with Raid setups.
 (image == dd copy of logical volume)

For many configurations, the current choices are sub-optimal.  It
would be nice to have a boot disk that could capture any and all raid
volumes.

FYI: There are already many linux boot CDs that specifically target
Computer Forensics tasks, so there is a bigger user community than
many might assume.  Examples incude SPADA (law enforcement only),
smart, Farmer Dude's boot cd, FCCU GNU/Linux Forensic Boot CD, Helix,
Penguin Sleuth.

All of the above would benefit from a generic, but slow raid driver.
For this use it would be great if both real raid and fake raid were
supported.  Not sure if fake raid comes with int13 support or not.

Greg
-- 
Greg Freemyer
The Norcross Group
Forensics for the 21st Century
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
