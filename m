From: Ray Olszewski <ray@comarre.com>
Subject: RE: Configuring lilo to boot from sda after RH 9.0 install
Date: Tue, 15 Apr 2003 12:39:55 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030415121527.01e96f68@celine>
References: <5.1.0.14.1.20030414173840.020022e8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000e01c31b14$04bdcf70$1601a8c0@crypt>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: steven@nvts.us, linux-newbie@vger.kernel.org
Cc: babydr@baby-dragons.com

Steven -- I am a bit confused by this response.

First, your initial message referred to a lilo.conf file several times. 
When I ask for the complete contents of that file, though, referencing its 
normal location (in /etc), you say there is no such file. You need to 
explain this inconsistency in reporting. If *you* were referring to this 
lilo.conf.anaconda file you mention, then of course we need to see it.

Second, in response to my asking "what does happen if you try to boot from 
sda", you reply "If I leave the boot disk in ...." I assume you mean a 
floppy here (otherwise, why "leave" it in?). This is not booting (or trying 
to boot) from sda.

Third, the message you quote about DHCP *seems* to be from the BIOS, 
attempting to do a network boot. I'm not sure what is going on here, but it 
is not a Linux "something", unless you've left out information I can't 
imagine well enough even to guess about. Prior to this message, does the 
BIOS ever indicate that it is attempting to boot from a hard disk? If yes, 
what is the message?

Fourth, going back to lilo ... it normally expects to find its config file 
as /etc/lilo.conf . If your setup, for some reason unknown to me (quite 
possible ... to a non-RH user like me, Red Hat seems to be diverging more 
and more from what I think of at Linux/Unix standards, so this anaconda 
stuff may be something specific to RH ... perhaps a Red Hat user can 
comment???) uses a non-standard name for this file, you'll need to pass it 
to lilo. You'd do this with "lilo -C /etc/lilo.conf.anaconda" ... but I do 
not suggest your doing this until we determine if this really is a sensible 
lilo.conf file.

Fifth, the format of fstab is a bit different from what I am used to. Those 
Label= lines cause it (I think ... I've never actually used this setting) 
to rely on lilo information about what partitions get mounted as / and 
/boot . This is (probably) OK, but it takes us back to needing to see what 
the lilo config-file settings are (as I said before, / being /dev/sda is 
almost surely wrong).

Bottom line: this all reads like lilo does not boot the system into Linux 
because lilo was never properly installed.  **Probably** all you need to do 
... at least from the Linux side of things ... is boot the system from a 
floppy, but with the correct root filesystem. Then run lilo with an 
appropriate config file to install it on the boot drive, probably  /dev/sda 
.  Then reboot. I say "from the Linux side" because the BIOS needs to be 
able to boot this system from sda, and that's really a hardware/BIOS issue, 
not a Linux issue, if it does not.

Oh, an incidental. If this system is intended to run with 4 SCSI drives, 
you'll need more partitions entered in /etc/fstab (unless you mount them in 
some other way). Assuming root and boot are on sda, you have no entries for 
sdb# and sdc# partitions (replacing # with actual partition numbers).

At 11:58 AM 5/15/2003 -0700, Steven Ackerman wrote:
>Thanks for the timely responses. Here's all the info that was requested.
>Took me a little while to get to it and then to actually do it. I'm a little
>slow with Linux. All details are inline.
>
>Ray Olszewski [ray@comarre.com] in part, wrote the following:
>
>OK. We probably need to see a bit more than James asked for. Please provide:
>
>1. The complete /etc/lilo.conf
>
>There is nothing in /etc/lilo.conf. When I go to the /etc directory and type
>vi lilo.conf, it is a new file. There is an /etc/lilo.conf.anaconda. I can
>send the contents of that if necessary. It looks like other lilo.conf that
>I've seen.
>
>2. The contents of /etc/fstab
>
>The /etc/fstab file looks like this:
>Label=/ /       ext3    defaults        11
>Label=/boot     /boot   ext3    defaults        12
>none    /dev/pts        devpts  gid=5,mode=62   00
>none            /proc   proc    defaults        00
>none    /dev/shm        tmpfs   defaults        00
>/dev/sdd1       /swap   swap    defaults        00
>/dev/cdrom      /mnt/cdrom      udf,iso9600 noauto,owner,kudzu,ro       00
>/dev/fd0        /mnt/floppy     auto    noauto,owner,kudzu      00
>
>3. A description of what does happen if you try to boot from sda.
>
>If I leave the boot disk in it searches for DHCP and then gives the
>following output to the screen:
>DHCP MAC Address: <It lists my MAC address here>
>PXE-E51: No DHCP or Bootp offers recieved
>Invalid partition table
>
>4. Do you know that the hardware is capable of booting from a SCSI drive?
>Yes.
>How?
>I have loaded other OS's on this box and booted. It looks like some kind of
>linux configuration to me.
>5. If you boot from floppy, log in as root, and run the command "lilo",
>what is the result?
>/etc/lilo.conf: no such file or directory.
>
>What gets printed to the screen?
>The above line gets printed to the screen.
>
>The root directory (almost) surely is NOT /dev/sda....---8<snip>8---
>
>Thanks for the info. I like to know how things work. I need to learn all I
>can about this thing.
>
>Finally, is this by any chance a RAID server?
>
>No it is a standard scsi card with no RAID enabled hardware or software. I
>had a scsi RAID card in it but took it out and installed a regular scsi card
>in it. I think it's a mylex. I don't remember.
>
>I hope that helps. Let me know if there's anything else I can send. Thanks
>for all the help.
>
>-Steve
>
>---snip---
>
> >
> >I installed RH 9.0 as a server and the machine only boots from floppy. In
> >lilo.conf the boot= line in the first section says boot=/dev/sda. In the
> >same section the install= line says install=/boot/boot.b. I don't even know
> >what I should be posting to help anyone answer my question. This is a rack
> >mount server with 4 SCSI drives. I don't know if that matters. If I
>remember
> >right, the root directory is /dev/sda. Whatever the default is. I can give
> >you whatever info you need. I may have to figure out how to do it, but
> >usually I can do that.
> >
> >I need help. I don't mind pointers to links, documentation, pointers to
>some
> >documentation I missed, ect. All the doc's I found refer to using ide
> >devices and pointing to the root directory or wherever lilo is installed or
> >the root directory is or something like that. Not knowing all the linux
> >internals, I don't even know how to find that out.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
