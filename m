From: James Miller <jamtat@mailsnare.net>
Subject: Re: need wdm help
Date: Fri, 3 Mar 2006 20:12:14 -0600 (CST)
Message-ID: <Pine.LNX.4.64.0603032008100.4459@localhost.localdomain>
References: <Pine.LNX.4.64.0603030845180.5615@localhost.localdomain> 
 <Pine.LNX.4.64.0603030908340.5615@localhost.localdomain> 
 <Pine.LNX.4.64.0603031137350.5615@localhost.localdomain>  <44088855.8010907@comarre.com>
 <4b0d6e0d0603031045n5cfe59c1r5e29fc562f478574@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4b0d6e0d0603031045n5cfe59c1r5e29fc562f478574@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

On Sat, 4 Mar 2006, joy merwin monteiro wrote:

> On 3/3/06, Ray Olszewski <ray@comarre.com> wrote:
>> Assuming both xdm and wdm are trying to run ... that's my best reading
>> of what you've posted here ... you probably just want to disable xdm
>> completely. One way to do it is to rm the symlink to it in /etc/rc2.d .
>> Or you could mv the symlink to a name that doesn't start with "S" ...
>> this is how I usually disable an init-script symlink here (e.g., "mv
>> S99xdm NO99xdm"). Then reboot (or maybe "/etc/init.d/xdm stop" will
>> suffice; try it).
>
> if it IS getting started in runlevel 2, and you remove the symlink,
> you might also
> want to get rid of the link in runlevel 6 and 0 that stops it (K**xdm),
> just to be thorough .....

Thanks to all for getting me past the final hurdle of stopping xdm from 
loading.  It does seem both were loading and somehow xdm was taking 
priority.  Renaming the symlinks Ray and joy pointed out seems to have 
done the trick: I've rebooted to test this, and wdm comes up as expected 
now.

Sincerely, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
