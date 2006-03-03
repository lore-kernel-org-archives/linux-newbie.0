From: "joy merwin monteiro" <joy.merwin@gmail.com>
Subject: Re: need wdm help
Date: Sat, 4 Mar 2006 00:15:55 +0530
Message-ID: <4b0d6e0d0603031045n5cfe59c1r5e29fc562f478574@mail.gmail.com>
References: <Pine.LNX.4.64.0603030845180.5615@localhost.localdomain>
	 <Pine.LNX.4.64.0603030908340.5615@localhost.localdomain>
	 <Pine.LNX.4.64.0603031137350.5615@localhost.localdomain>
	 <44088855.8010907@comarre.com>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44088855.8010907@comarre.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux <linux-newbie@vger.kernel.org>

On 3/3/06, Ray Olszewski <ray@comarre.com> wrote:
<snip>
> Assuming both xdm and wdm are trying to run ... that's my best reading
> of what you've posted here ... you probably just want to disable xdm
> completely. One way to do it is to rm the symlink to it in /etc/rc2.d .
> Or you could mv the symlink to a name that doesn't start with "S" ...
> this is how I usually disable an init-script symlink here (e.g., "mv
> S99xdm NO99xdm"). Then reboot (or maybe "/etc/init.d/xdm stop" will
> suffice; try it).

if it IS getting started in runlevel 2, and you remove the symlink,
you might also
want to get rid of the link in runlevel 6 and 0 that stops it (K**xdm),
just to be thorough .....


--
The person who cannot reason is a fool, one who won't reason is a bigot,
one who dare not reason is a slave.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
