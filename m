From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Sanyo CDR-H94A (non-atapi) Booting???
Date: Sun, 30 Mar 2003 14:50:13 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E874A75.B953FBD6@gelm.net>
References: <20030328131832.A249@lnx2.w8mch.ampr.org> <3E84B89E.B782EB8F@gelm.net> <20030330131416.C206@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

Hi, Hal:

 If you are going to receive suggestions from me,
we need to keep this discussion 'on the list'.
I prefer to respond here, on the linux-newbie list,
where others can spot my mistakes and correct them
before they harm others.  :-|

 There seems to me to be several separate topics
that you mention.  At this time I am willing to
assist you in attempting to solve your installation
difficulties.  So, let us concentrate on installing
linux on this system.  I suggest that you start
separate messages for your other problems.

 So, you mention attempting a NFS install and
"I ran into problems".

 Please be more specific.

You mention attempting to install with the files
on "the Dos C: drive" and that this also
"ran into problems".

 Please be more specific.

'something like "fd2"' is not descriptive enough.

 Comments on other items follow...

Hal MacArgle wrote:
> 
> Greetings OM and thanks for your input..
> 
> The problem has escalated into more than the CD drive it seems.. More
> or less giving up on the drive I did an install using NFS and also
> from the copied files to the Dos C: drive.. I ran into problems with
> both - something I've never had happen before, especially NFS which
> always works fine..
> 
> One thing that really bugs me is that the screen report says
> something like "fd2", where I think it should report the correct
> partition: /dev/hda2.. Maybe that's something that ramdisk does and
> I've never noticed it before..
> 
> During the many tries I even found a distribution of Slack3.5 that
> has the CD selection of the Sanyo Drive and ISPSound card driver..
> Even that didn't fly.. Setup couldn't find the drive.. It's confusing
> because that drive can't make up it's mind whether it's /dev/sjcd or
> /dev/isp16.. The bootdisk 'isp16.i' finds the drive and port OK but
> after that everything goes down hill.. The bootdisk 'sanyo.i' doesn't
> find the drive at all. Very confusing.
> 
> I found some excellent Docs pertaining to this exclusively but they
> may be out of date for the newer versions.. No joy in any case.. I
> find most of my Linux books including 'Running Linux' have mis-
> information - unless the bottom line is only ME... HI..
> 
> BTW - to digress, about NFS.. Have you ever experienced _not_ being
> able to umount a device after using it with NFS? 

 Yes. When I have a console whose 'current working directory'
 is on the mounted drive.

>                                                  Specifically, in my
> case, a Zip drive.. 

 No, I have never used a 'zip' drive.

>                     Usually 'exportfs -a' should "un busy" the drive
> so I can umount it - but, lately, I have to reboot the machine to
> umount the drive.. (I'm presuming you use the /etc/exports file to
> set up NFS..) No big deal but I'm sure curious, and I seem to
> remember it working "last week," whatever.. Maybe I need a brain
> transplant..

 From the man page of exportfs on my firewall 
exportfs -a
 seems to either update the export table (/var/lib/nfs/xtab)
 or toggle the existence of available file systems.
 :-|
 Neither of these statements found in my man pages seem to suggest
 that 'export -a' will 'umount' anything.  :-|

HTH, Chuck

> 
> Thanks again and vy 73,
> 
> Hal - W8MCH.
> 
<snipped to end>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
