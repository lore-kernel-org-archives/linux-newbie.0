From: "Paulo R. Dallan" <prdcomp@uol.com.br>
Subject: Re: MPG Video Format
Date: Wed, 16 Nov 2005 21:46:31 -0200
Message-ID: <437BC4D7.5020105@uol.com.br>
References: <20051115105214.25290e02@Peter.meridiantelekoms.com>	<43795637.90904@gelm.net> <20051115165702.24307506@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051115165702.24307506@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Peter wrote:

>Thanks Chuck et all!
>
>OK, I made mkisofs -o file.iso /path/to/directory/file.mpg and got an iso
>file. Then I used graveman to write the file to the CD. Well it succeeded to
>write the iso file to the CD, however, that is not what I need.
>
>I would like to copy the file.mpg to the CD in order that it can be played
>from that or copied back to a HD and played from there. The reason is, I want
>to give it to friends which have no broadband connection and cannot
>consequently download such a large file.
>
>Then I did cdrecord -v dev=ATAPI:0,1,0 fs=64M speed=2 driveropts=burnproof
>gracetime=2 file.mpg and all proceeded nicely apparently, however, now I
>cannot read or mount the CD anymore:
>
>dmesg tells: Unable to identify CD-ROM format.
>
>The dev=ATAPI:0,1,0 I got from the program xcdroast.
>
>My CDRom drive is [ATAPI:0,1,0] ASUS     CRW-5232AS 
>
>What will be the next step?
>
>Just did it using xcdroast in Write Mode: RAW writing (raw96r) gave me what I
>wanted, a playable CD with file.mpg from that file.iso
>
>Regards
>  
>
Well, the way you invoked cdrecord, it probably undertood file.mpg was 
an iso image! As others have already explained to you, if you do want a 
VCD/Video CD, you need to use other tools. Which , I  have no clue at 
the moment (someone talked about  vcdimager and  vcdtools), but google 
is your friend.

Good luck!

Paulo
 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
