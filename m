From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: LI -lilo booting problem
Date: Sun, 28 Jul 2002 21:21:51 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D4498AF.42DC0D8C@gelm.net>
References: <3D36DDA3.FA0F073C@gmx.net>
	 <02072506225706.04469@unix.pa3gcu>
	 <3D406BBB.E208E07B@gelm.net>
	 <02072606105100.00370@unix.pa3gcu>
	 <5.1.0.14.1.20020726164536.02296360@celine> <5.1.0.14.1.20020728140342.0228b3c0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hi, Ray:

Yes, I guess I clicked 'reply' rather than 'reply-all'.
Thanks for relying 'to the list'. :-|


Ray Olszewski wrote:
> 
> Chuck -- I assume your sending this to me personally was just a typo, so
> Iave added the list back into my reply.
> 
<snip>
> >part    boot    device  start   stop    size    mount
> >1       *       /hda1   1       64      528M    /
> >2               /hda2   65      96      257M    swap
> >3               /hda3   96      1048    7.9G    /usr
> 
> You may find it inconvenient to have this small a root (/) partition on
> your system. I know I would, This is why I suggested earlier making hda1
> even smaller and mounting it as /boot, then having a later hda* partition
> be your system root.

 I checked my last install partitioned as above;
'/' was less than 55 Megabytes and '/usr' was just under 1 gigabyte.

Now "dev/hda1 mounted as /" is 11% used and
    "dev/hda3 mounted as /usr" is 10% used.
I'm comfy for now, but I think all my log files will be filling
up my "/var" something or other under "/". :-|

I'll try to boot this evening.
Ray is probably asleep at this time. ;-)

G'night, G'morning, or G'day, depending on what part of the
world your in. ;-)
Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
