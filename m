From: Ray Olszewski <ray@comarre.com>
Subject: Re: Polaroid BurnMAX24 CD-RW
Date: Tue, 21 May 2002 17:13:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020521170358.020eb310@celine>
References: <3CE94665.8090104@adelphia.net>
 <5.1.0.14.1.20020521124101.020fcec0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3CEAD413.3070104@adelphia.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Mark Johnson <rmjohnson@adelphia.net>
Cc: linux-newbie@vger.kernel.org

Mark, let's keep this discussion on the list, please. I've added it back 
here in a Cc:.

If you run the command "ls -l /dev/cdrom", you will (almost certainly) find 
that it is not itself a pseudofile entry. Instead, it points to something 
else, probably /dev/hdc . That's what a symlink is, sort of (read "man ln" 
for the details).

Once you moved the drive to the IDE-SCSI driver, it was no longer 
accessible through /dev/hdc, so the /dev/cdrom symlink no longer works. You 
now have to access it at ... well, I don't really know, but /dev/scd1 is a 
good bet.

The mount points you are using are set in /etc/fstab . In there is 
(probably) a line that tells mount to mount /dev/hdc on mount point 
/mnt/cdrom, and to mount whatever the pseudoSCSI-CD-R/W device is (maybe 
/dev/scd0) on /mnt/cdrom1 . Or the mount points may use the symlinks 
/dev/cdrom and /dev/dvd instead.

In any case, once you know where (in /dev) the device pesudofile entries 
are, you can edit /etc/fstab so the mount points connect to the right 
devices (or to suitable symlinks).

As before, this includes a lot of guessing, based on teh way my Debian 
systems set themselves up out of the box. YMMV as to the dtails, but this 
should be enough to get you started in teh right direction.

At 04:11 PM 5/21/02 -0700, Mark Johnson wrote:


>Ray Olszewski wrote:
>
>>If I read this right, the CD-R/W on hdd works fine, but a separate DVD 
>>drive on hdc does not work (in SCSI-IDE emulation).
>>
>>If the DVD drive is an IDE drive, you can either access it as an IDE 
>>device -OR- add it to this "ignore" line and let the SCSI-IDE stuff pick 
>>it up. But you can't do both.
>>
>>But ... in the modules.conf file, you only have one IDE device in the 
>>ignore line:
>>
>> > options ide-cd ignore=hdd        # tell the ide-cd module to ignore hdd
>>
>>You need to tell the IDE stuff to ignore the DVD drive as well 
>>(apparently hdc from what you wrote below) if you want the SCSI-IDE 
>>modules to manage it. (Once again, I'm not sure of the exact syntax, 
>>since Debian handles modules a wee bit differently from the RH-descended 
>>distros.)
>
>
>oooops..  I don't know how I overlooked that, several times even.  It now 
>works fine, I just burned a cd with X-CD-ROAST.  But now I can't seem to 
>read my DVD?  I unmounted it and then accessed it again from my shortcut 
>icon on my desktop but it just comes up blank.
>
>>
>>This is all a guess, of course, since I'm interpolating a lot to fill in 
>>blanks. How, for example, do you now access the DVD for playback? I'm 
>>guessing /dev/dvd symlinks to /dev/hdc, not to /dev/scd1 . If so, that's 
>>a sure sign that you haven't moved it from IDE to SCSI-IDE.
>
>I don't have any symlinks that I know of.  I have never used symlinks 
>before.  I have been accessing my dvd as /mnt/cdrom and cd-rw as 
>/mnt/cdrom1. but neither work now to read my cds. can I use symlink to 
>give them a new name that I can access as ide to read them?  or is there a 
>way to access them as scsi devices?
>
>-=Mark=-
>
>

--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
