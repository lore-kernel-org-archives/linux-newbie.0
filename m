From: Ray Olszewski <ray@comarre.com>
Subject: Re: lilo questions.......
Date: Mon, 25 Nov 2002 15:50:36 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021125154119.020d4640@celine>
References: <36CC57E9.6206A156.0006BEFC@netscape.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <36CC57E9.6206A156.0006BEFC@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Replies below, in an edited version of your message.

At 06:29 PM 11/25/02 -0500, neil t wrote:
[...]
> >2. Make a separate filesystem (probably on /dev/hda) that all distros mount
> >as /boot, and put all the kernels in it. Their names need to be dsitinct,
> >of course ... if I did this, I'd use names like vmlinuz-2.4.19-deb and
> >vmlinuz-2.4.19-mandrake. Then use the appropriate names on the various
> >image= lines.
> >
> >3. Retain separate /boot diretories for each distro, and edit the lilo.conf
> >you install from appropriately. For example, if you were installing lilo
> >from Debian, your various entries might look like this --
> >
> >         image=/mnt/mandrake/boot/vmlinuz
> >                 label=*mandrake*
> >                 root=/dev/hda3
> >                 read-only
> >         image=/boot/vmlinuz
> >                 label=Debian
> >                 root=/dev/hdb2
> >                 read-only
>#2 and #3 look interesting.  If you were doing this, which would you use?

I'm not sure. Back when I actually did it, the 1024-cylinder limit still 
mattered to lilo, so I was pretty much forced to use option #2. Probably 
I'd do it that way again, if the need arose ... but I find no benefit (to 
me; I'm not commenting obliquely on your situation) in running multi-boot 
systems.

>  Are the Kernel numbers what you show in example 2 following vmlinuz?

Yes.
[...]


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
