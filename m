From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: CD-ROM Hell
Date: Tue, 01 Oct 2002 22:30:17 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D9A5A39.B409A91E@gelm.net>
References: <1033443333.7225.50.camel@localhost.localdomain> 
		<200210010238.22882.wfoo@linuxvoodoo.com> <1033518420.19378.7.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bryan Simmons <bsimmo1@gl.umbc.edu>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

I don't have lsof on my system.
Perhaps you do not either.
HTH, Chuck

Bryan Simmons wrote:
> 
> For some reason, the command "lsof | grep /mnt/cdrom ." didn't produce
> any results.  No error, nothing.  I looked at the man page for lsof but
> it didn't seem to have anything to say about locating run-away
> processes.  I also took a look at my running processes and couldn't find
> anything suspicious.
> 
> The damn CD-ROM is still going.  I was able to successfully run umount
> /mnt/cdrom.  But, of course, I can't remount it because "the device is
> busy".
> I'd really like to find out why this happens and how to recover from it
> without a reboot.  It happens quite often with old or burned CDs, and
> it's a problem I've had with 4 different CD-ROMs on 4 different distros
> of Linux.
> 
> On Tue, 2002-10-01 at 02:38, Wladimir Foo wrote:
> > > I have two terrible CD-ROMs and a lot of shady CDs.  Sometimes I'll put
> > > one in the drive and Linux will fail to read it properly.  Sometimes
> > > this means I just can't read the disk.  Other times it means that the
> > > damn drive light stays on and the disk stays mounted and "busy" until I
> > > reboot the frickin PC.
> > >
> >
> > As Ray mentioned earlier, it would be easier to come up with a possible remedy
> > if we knew what you were doing. But, here's a something else that might help.
> > Try using lsof:
> >
> > lsof | grep /mnt/cdrom .
> >
> > lsof will output the program(s) that is(are) using resources on /mnt/cdrom.
> > Now simply quit (or kill those programs) and you should be able to unmount
> > the cdrom drive.
> >
> > --
> > http://www.linuxvoodoo.com
> > perl -le '$_="75>42833<33.=3?,13406577073890:;90833<330690<3!!";tr[0-?][
> > YXOUIWLVETHDCNM];print'
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
> --
> Regards,
> 
> Bryan Simmons
> =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
>  "Sometimes I wonder whether the world is being
>   run by smart people who are putting us on or
>   by imbeciles who really mean it".
>     ---Mark Twain
> =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
> 
>   ------------------------------------------------------------------------
>                        Name: signature.asc
>    signature.asc       Type: application/pgp-signature
>                 Description: This is a digitally signed message part
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
