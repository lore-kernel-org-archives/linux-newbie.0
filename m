From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: really hidden hidden files
Date: Sun, 25 Aug 2002 08:47:58 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208250838540.8397-100000@Consulate.UFP.CX>
References: <7A9A0C00.079CF921.7C182763@netscape.net>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7A9A0C00.079CF921.7C182763@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Robert Haehnel <HaehnelRobert@netscape.net>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Robert.

> Hey out there. This is really a Dos/Windows question, but I'm trying
> to fix a problem in windows using Linux.

We all get to do that on occasion...

> Here is the deal. My son trashed the windows 98 installation on our
> home PC. So I formatted the Windows partition and started over with
> a clean install. However, the install did not go smoothly. It
> rebooted as part of the install process, and tried to reformat the
> windows partition, but the installation is confused, and what it
> thinks is the hard drive is actually the CD drive. Of course it
> can't do that, and it is stuck right there and won't go any further.

That sounds like typical Microsoft programming...

> First I dropped out of the install process, and tried to clean it's
> memory (on c:) of what it had done so far in the install process by
> formatting the windows partition. This did not purge the partition
> of the hidden files that are created during the install process to
> keep the install information during reboot.
>
> So ... I had a bright idea (anyway, I thought it was bright). Maybe
> I can see these hidden files in Linux, and wipe the slate clean
> there. Well I only had partial success. I booted into Linux, mounted
> the windows partition, and typed...
>
>	ls -la
>
> ...to see what was on the partition. It only showed "." and "..",
> but it reported 5 files were present (Ha, a clue!, Maybe..). Anyway,
> I think that what the ls command told me was it saw three hidden
> files there even though it didn't list them.
>
> Unfortunately, an "rm *" doesn't remove them.

You could try going back to the Windows command prompt and running
scandisk on that drive - those three "files" could easily be strings
of "lost clusters" rather than genuine files.

> Does anyone have an idea of how I can see these hidden files and
> more importantly remove them, so I can clean up and start over.

What I would do is to use Linux to format that partition as ext2 with
the mke2fs command, as that will overwrite everything in the partition
with what Windows regards as gibberish. After that, Windows will say the
partition is unformatted, and you should be able to start the whole
procedure afresh with a clean format.

> Thanks for your help in advance.

NP.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
