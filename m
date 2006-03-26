From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Printing with Kernel 2.6.14.4
Date: Sun, 26 Mar 2006 13:55:31 -0500
Message-ID: <20060326185531.GA1485@lnx2.kvinet.com>
References: <380-22006362515858506@M2W055.mail2web.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <380-22006362515858506@M2W055.mail2web.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "heisspf@skyinet.net" <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On 03-24, heisspf@skyinet.net wrote:
> Thanks Ray,
> 
> >>Doesn't 'cat filename.txt > /dev/lp0' work
> > 
> > 
> > no since /dev/lp0 is not an executable file.
> > 
> 
> Ok my mistake. It does work under su, however, not as sudo which I had
> tried only.
> 
> > as I have a hazy recollection that some versions of Slackware associated 
> > lp1, not lp0, with the first parallel port.
> 
> It is lp0.
> 
> The reason I can't print not being connected with kernel 2.6.14 is, the way
> I see it, that there is no provision for a parallel port on "local printer"
> set-up, but only for "network printer".
> 
> May be I should try to fumble around the source, /usr/src/linux.
> 
> Regards
> 
> Peter

	Greetings: You got my curiosity in gear: I installed
Slackware 10.2, (test26) and it's module library, full install except KDE,
Tex or Games and hooked a Panasonic KX-P2123, Epson mode, printer;
and booted...

	After logging in as root; lsmod reported that parport_pc and
parport were both installed automatically..

	Noting there was one txt file already in root I invoked 'cat
loadlin16c.txt > /dev/lp0' and it printed perfectly.. I created
another txt file of all 60 lines and tried it too; AOK...

	Since default Slack 10.2/26test is 2.6.13; something may have
happened when you bumped up from that?? I don't remember; maybe
you're not using Slackware10.2 here?? As an aside; I've been trying
to install SuSE 10.0 on the same machine, off and on for a week, to
no avail.. Forget which 2.6 patch it defaults to...

	At least I know Slack still works as expected.. I didn't go
any further than that...

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
