From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Sanyo CDR-H94A (non-atapi) Booting???
Date: Mon, 31 Mar 2003 15:35:02 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030331153502.C207@lnx2.w8mch.ampr.org>
References: <20030328131832.A249@lnx2.w8mch.ampr.org> <3E84B89E.B782EB8F@gelm.net> <20030330131416.C206@lnx2.w8mch.ampr.org> <3E874A75.B953FBD6@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3E874A75.B953FBD6@gelm.net>; from nc8q@gelm.net on Sun, Mar 30, 2003 at 02:50:13PM -0500
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <nc8q@gelm.net>
Cc: linux-newbie@vger.kernel.org

On 03-30, Chuck Gelm wrote:
> Hi, Hal:
> 
>  If you are going to receive suggestions from me,
> we need to keep this discussion 'on the list'.
> I prefer to respond here, on the linux-newbie list,
> where others can spot my mistakes and correct them
> before they harm others.  :-|

		Sorry.. I didn't think the subject was of much
interest to many due to the obsolete drive involved.. You have a good
point however. I shall remember it. I believe Ray reminded me of this
once before..

>  There seems to me to be several separate topics
> that you mention.  At this time I am willing to
> assist you in attempting to solve your installation
> difficulties.  So, let us concentrate on installing
> linux on this system.  I suggest that you start
> separate messages for your other problems.
> 
>  So, you mention attempting a NFS install and
> "I ran into problems".
> 
>  Please be more specific.
> 
		I didn't document the exact problem - probably most
of it "cockpit trouble," - me.... Making small talk back-fired..



> You mention attempting to install with the files
> on "the Dos C: drive" and that this also
> "ran into problems".
> 
>  Please be more specific.
> 
> 'something like "fd2"' is not descriptive enough.
> 
		Again - Sorry: I wasn't, actually, looking for an
"answer" to these.. Just - small talk again - probably thinking out
loud with my foot in my mouth..

>  Comments on other items follow...
> 
> Hal MacArgle wrote:
> > 
> > Greetings OM and thanks for your input..
> > 
> > The problem has escalated into more than the CD drive it seems.. More
> > or less giving up on the drive I did an install using NFS and also
> > from the copied files to the Dos C: drive.. I ran into problems with
> > both - something I've never had happen before, especially NFS which
> > always works fine..
> > 
> > One thing that really bugs me is that the screen report says
> > something like "fd2", where I think it should report the correct
> > partition: /dev/hda2.. Maybe that's something that ramdisk does and
> > I've never noticed it before..
> > 
> > During the many tries I even found a distribution of Slack3.5 that
> > has the CD selection of the Sanyo Drive and ISPSound card driver..
> > Even that didn't fly.. Setup couldn't find the drive.. It's confusing
> > because that drive can't make up it's mind whether it's /dev/sjcd or
> > /dev/isp16.. The bootdisk 'isp16.i' finds the drive and port OK but
> > after that everything goes down hill.. The bootdisk 'sanyo.i' doesn't
> > find the drive at all. Very confusing.
> > 
> > I found some excellent Docs pertaining to this exclusively but they
> > may be out of date for the newer versions.. No joy in any case.. I
> > find most of my Linux books including 'Running Linux' have mis-
> > information - unless the bottom line is only ME... HI..
> > 
> > BTW - to digress, about NFS.. Have you ever experienced _not_ being
> > able to umount a device after using it with NFS? 
> 
>  Yes. When I have a console whose 'current working directory'
>  is on the mounted drive.
> 
> >                                                  Specifically, in my
> > case, a Zip drive.. 
> 
>  No, I have never used a 'zip' drive.
> 
> >                     Usually 'exportfs -a' should "un busy" the drive
> > so I can umount it - but, lately, I have to reboot the machine to
> > umount the drive.. (I'm presuming you use the /etc/exports file to
> > set up NFS..) No big deal but I'm sure curious, and I seem to
> > remember it working "last week," whatever.. Maybe I need a brain
> > transplant..
> 
>  From the man page of exportfs on my firewall 
> exportfs -a
>  seems to either update the export table (/var/lib/nfs/xtab)
>  or toggle the existence of available file systems.
>  :-|
>  Neither of these statements found in my man pages seem to suggest
>  that 'export -a' will 'umount' anything.  :-|
> 
		Snipped from man exportfs:

		OPTIONS
			-a Export or unexport all directories
                                  ^^

		I read this as a toggle and it did work before -
necessary to "unbusy" the mount so the Zip disk could be removed,
but no longer for some reason.. It's no biggie, really. Just
curious.. It may or may not be peculiar to Zip drives because,
possibly, of their scsi/ide emulation.. Don't know..

		Boris, on a separate message listed to the group,
said the magic phrase in that I may have needed both isp16.o and
sjcd.o modules.. Trying BasicLinux2.02, this proved to be the case,
but BL2.02 is installed from floppies.. The Catch22 situation still
remains trying to install from the CD... At any rate, I have enough
information to take it from here... Appreciate!! And I'll remember
the proper returns in the future...

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
