From: "Steven Ackerman" <steven@nvts.us>
Subject: RE: Configuring lilo to boot from sda after RH 9.0 install
Date: Tue, 15 Apr 2003 19:03:10 +0000 (UTC)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000e01c31b14$04bdcf70$1601a8c0@crypt>
References: <5.1.0.14.1.20030414173840.020022e8@celine>
Reply-To: <steven@nvts.us>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Date: Thu, 15 May 2003 11:58:48 -0700
In-Reply-To: <5.1.0.14.1.20030414173840.020022e8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org
Cc: babydr@baby-dragons.com

Thanks for the timely responses. Here's all the info that was requested.
Took me a little while to get to it and then to actually do it. I'm a little
slow with Linux. All details are inline.

Ray Olszewski [ray@comarre.com] in part, wrote the following:

OK. We probably need to see a bit more than James asked for. Please provide:

1. The complete /etc/lilo.conf

There is nothing in /etc/lilo.conf. When I go to the /etc directory and type
vi lilo.conf, it is a new file. There is an /etc/lilo.conf.anaconda. I can
send the contents of that if necessary. It looks like other lilo.conf that
I've seen.

2. The contents of /etc/fstab

The /etc/fstab file looks like this:
Label=/	/	ext3	defaults	11
Label=/boot	/boot	ext3	defaults	12
none	/dev/pts	devpts	gid=5,mode=62	00
none		/proc	proc	defaults	00
none	/dev/shm	tmpfs	defaults	00
/dev/sdd1	/swap	swap	defaults	00
/dev/cdrom	/mnt/cdrom	udf,iso9600 noauto,owner,kudzu,ro	00
/dev/fd0	/mnt/floppy	auto	noauto,owner,kudzu	00

3. A description of what does happen if you try to boot from sda.

If I leave the boot disk in it searches for DHCP and then gives the
following output to the screen:
DHCP MAC Address: <It lists my MAC address here>
PXE-E51: No DHCP or Bootp offers recieved
Invalid partition table

4. Do you know that the hardware is capable of booting from a SCSI drive?
Yes.
How?
I have loaded other OS's on this box and booted. It looks like some kind of
linux configuration to me.
5. If you boot from floppy, log in as root, and run the command "lilo",
what is the result?
/etc/lilo.conf: no such file or directory.

What gets printed to the screen?
The above line gets printed to the screen.

The root directory (almost) surely is NOT /dev/sda....---8<snip>8---

Thanks for the info. I like to know how things work. I need to learn all I
can about this thing.

Finally, is this by any chance a RAID server?

No it is a standard scsi card with no RAID enabled hardware or software. I
had a scsi RAID card in it but took it out and installed a regular scsi card
in it. I think it's a mylex. I don't remember.

I hope that helps. Let me know if there's anything else I can send. Thanks
for all the help.

-Steve

---snip---

>
>I installed RH 9.0 as a server and the machine only boots from floppy. In
>lilo.conf the boot= line in the first section says boot=/dev/sda. In the
>same section the install= line says install=/boot/boot.b. I don't even know
>what I should be posting to help anyone answer my question. This is a rack
>mount server with 4 SCSI drives. I don't know if that matters. If I
remember
>right, the root directory is /dev/sda. Whatever the default is. I can give
>you whatever info you need. I may have to figure out how to do it, but
>usually I can do that.
>
>I need help. I don't mind pointers to links, documentation, pointers to
some
>documentation I missed, ect. All the doc's I found refer to using ide
>devices and pointing to the root directory or wherever lilo is installed or
>the root directory is or something like that. Not knowing all the linux
>internals, I don't even know how to find that out.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
