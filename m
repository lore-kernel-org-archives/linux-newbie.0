From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Can't see my drives
Date: Fri, 30 Aug 2002 13:08:20 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D6FA684.A309CC6@gelm.net>
References: <F665uAy0BYTxHwMQFLc00025135@hotmail.com> <20020830100130.8677B52897@smtp.orcon.net.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: cr@orcon.net.nz
Cc: grottoBoy rant <stylerzz@hotmail.com>, linux-newbie@vger.kernel.org

Howdy, Y'all:

 I noticed that the poster never mentioned, explicitly,
that they were mounting the filesystem as type iso9660.
i.e.
mount -t iso9660 /dev/sd0? /cdrom-rw
      ^^^^^^^^^^
Since I am a newbie, I didn't post, until now.

I recall, time after time, the helpful guru's
(What is plural of 'guru'?)
ask for the explicit 'command' and the
explicit 'error message'.
;-)
Chuck

cr wrote:
> 
> On Friday 30 August 2002 05:07, grottoBoy rant wrote:
> > Don't know if you've fixed this already, I don't know about configuring for
> > CDRW as scsi emulation or whatever, but were you specifying iso9660
> > filesystem type when attempting to mount, ie.
> > mount -t iso9660 /dev/(?) /mnt/cdrom
> > man mount for syntax
> >
> > later
> >
> 
> Yes, I was, exactly that.
> 
> I've shelved the problem for now as other things took up my time, however
> I've managed to find the original instructions I used to configure the thing,
> so I'll work through them (as soon as I have enough time) and see if that
> fixes it.
> 
> Thanks
> 
> cr
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
