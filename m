From: Ray Olszewski <ray@comarre.com>
Subject: Re: Polaroid BurnMAX24 CD-RW
Date: Thu, 16 May 2002 20:25:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020517032518.03d53ac0@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Mark Johnson <rmjohnson144@adelphia.net>, linux-newbie@vger.kernel.org

At 08:02 PM 5/16/02 -0700, Mark Johnson wrote:
>
>I am once again in need of some help.  I just got a new CD-RW . It is a 
>Polaroid BurnMAX24.  I was wondoering if anyonr knew if there are 
>drivers available for this or if there is a generic driver used?  I 
>tried rpmfind.org but I couldn't connect for some odd reason, and I 
>thought there was a linuxdrivers.org or something but couldn't seem to 
>find it either.  The docs for the drive say it is a CD-WRITER IDE2410. 
> I tried Polaroid but they don't even mention a cd of any type, and the 
>search program gave me nothing to.


I don't know the specific drive you mention, but typically IDE CD-R/W drives
are standard. They are a bit tricky to use, however, in that Linux
CD-writing software only knows about SCSI drives ... so you have to use
SCSI-IDE emulation in the kernel to access the device. This basically
requires loading a bunch of modules, plus passing a parameter to LILO that
causes the appropriate IDE device NOT to be mounted as an IDE device (so the
module can pick it up pater). Then software ike cdrecord can access the
drive via its pseudo-SCSI parameters, and more standard software can access
it via (usually) /dev/scd0 .

If you don't already know about doing this part, post again and I'll give
more details (or track down the URL of the pretty good HowTo I've seen) then
I ccan dash off from memory. If you alrady know this part and are asking
ONLY about the particulars of this drive ... then I apologize for wasting
your time.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
