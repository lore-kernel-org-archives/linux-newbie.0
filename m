From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: ?Copying 'difficult' CD-ROM discs
Date: Sat, 17 Aug 2002 14:37:33 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D5E97ED.CEC2B73D@gelm.net>
References: <200208100843.50199.natarajan_k@hotpop.com> <5.1.0.14.1.20020817104733.020ef510@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, Ray:

 Thanks.  
Windows hardware check:
My existing windows cd-burn software can burn the
Slackware8.0 'install.iso' to blank media and it boots & works fine.
 ;-)

 Using my Easy-cd-creator v4.02 generates an image file of
        112 bytes and fails with an error about creating file
000000001.TMP                  :-(
^^^^^^^^^^^^^ something like that

 Using 'dd if=/dev/cdrom of=./filename.iso' generates a file of 
  1,699,840 bytes.  :-|

 Yet, 'tar -czvf filename.tar.gz /cdrom/*', generates a filesize of 
561,982,106 bytes.    ;-)

 The 'dd' command seems to work with other, friendlier, CD-ROMs.
(filesize seems appropriate,
 but I haven't burned a CD from them, yet>)

:-) So, it is that easy to create .iso images!  :-)

 So, it seems that 'dd' is not creating the expected output.
What does this indicate.

Many thanks, Chuck

Ray Olszewski wrote:
> 
> At 01:22 PM 8/17/02 -0400, Chuck Gelm wrote:
> >Howdy, Y'all:
> >
> >  I have a commercial CD-ROM disc that resists being copied.
> >(using Eazy-CD-Creator v4.02 & Windows98se & CD-ROM R/W drive)
> >
> >  It is used very frequently and I'd like to create a backup
> >and store the original in a safe place.
> >
> >  I have a linux 'file server' system with a CD-ROM read-only drive.
> >
> >Can I create an '.iso' image of the original CD-ROM disc
> >using linux utilities/applications that can be 'burned'
> >with my Windows CD-ROM-writer software?
> >If 'yes', how or where to go for more information? ;-)
> 
> Resistance is futile? Prepare to be assimilated?
> 
> Ok, seriously. Without knowing what makes this particular CD "difficult" in
> a Windows setting, it is difficult to say for sure.
> 
> Can you mount the CD under Linux? (This will check if it is a standard iso CD.)

 Yes.

> With the CD in the drive but NOT mounted, does this command work:
> 
>          dd if=/dev/cdrom of=./cdrom_image.iso
> 
> (you may need to replace /dev/cdrom with something else, if your system
> does not use that symlink)?
> 
> If you can create an iso image with the suggested command, then you can
> burn it onto a CD using Linux tools like cdrecord. Though I've used Windows
> CD burning software (I think the "Eazy-CD-Creator" package you refer to) at
> client sites, I'm not sufficiently familiar with it to know what sorts of
> source files it can burn from.
> 
> --
> -------------------------------------------"Never tell me the odds!"--------
> Ray Olszewski                                   -- Han Solo
> Palo Alto, California, USA                        ray@comarre.com
> -------------------------------------------------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
