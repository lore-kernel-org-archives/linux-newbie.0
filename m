From: Ray Olszewski <ray@comarre.com>
Subject: Re: commport settings
Date: Mon, 30 Dec 2002 22:16:58 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021230220854.020d1cb0@celine>
References: <200212310509.gBV58waw016418@pegasus.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212310509.gBV58waw016418@pegasus.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

This followup is a bit too sketchy for real diagnosis.

pppd doesn't use an interrupt as such; it uses a device, usually 
/dev/modem, which is in turn a symlink to /dev/ttyS* . You want to check 
that either is links to /dev/ttyS3 -OR- that pppd is set up to use 
/dev/ttyS3 directly. If it continues to use irq 3, pppd may be (either 
directly or indirectly) using /dev/ttyS1 instead of ttyS3.

If you really tried "all thinkable variations", then your position is, of 
course, hopeless. But the value of a list like this one is that it incolces 
people who may be able to think of things you haven't thought of. It's hard 
to do that without seeing the details. (I know you posted *some* details a 
while back, but I don't keep old messages for very long, so I can't review 
what you've said previously.) At least reporting the log entries generated 
by one of these "stubbornly continue with the build-in wrong irq 3" 
attempts might help.

At , Heimo Claasen wrote:
>In the meantime I have coombed one (Mdk) system installed really from
>first to last byte - for even vaguely PPP-/Modem-relevant config files -
>and tried all thinkable variations: _no_way_ to have it work, in
>console mode, with the setting of /dev/ttyS3  (COM4) with IRQ 7.
>
>Running "setserial /dev/ttyS3 irq 7" duely results in a correct
>indication using "setserial /dev/ttyS3 -G" but this provenly does not
>bring about the dialler, and pppd to actually use the correct interrupt
>number - they stubbornly continue with the build-in wrong irq 3 and
>promptly fail.
>
>_Only_ work-around is running kppp (from running X, and having the
>"setserial" command run before) - then, a mere modem query succeeds
>even in setting the right values, and up to a next reboot, for using
>the modem from the console !




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
