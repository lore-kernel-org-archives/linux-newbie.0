From: Ray Olszewski <ray@comarre.com>
Subject: Re: Time problem
Date: Wed, 02 Oct 2002 08:59:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021002083354.02d04980@celine>
References: <20021002124859.54259.qmail@web13409.mail.yahoo.com>
 <20021002124859.54259.qmail@web13409.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02100214434101.02975@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Abhijit Vijay <abhijit_v@yahoo.com>, linux-newbie@vger.kernel.org

At 02:43 PM 10/2/02 +0000, pa3gcu wrote:
>On Wednesday 02 October 2002 12:48, Abhijit Vijay wrote:
> > Hi All,
> >
> > I have been having a peculiar problem with KDE.
> > Whenever I reboot, the time on the control panel goes
> > back by four hours. (I am in the EDT zone) Could
> > anyone tell me why this is happening and the fix
> > please?
>
>Could it be that you have set the clock to GMT.?
>
>You dont say which distro, in slacklware t change defaults use the command
>'timeconfig'.
>I dont have access to any other machines at the minute to give you more
>pointers.

Richard's guess is a good one, but it might be a bit off in the details. It 
depends a bit on what you mean by "back". I think he is right that the 
hardware and software clocks have a mismatch, but I can't tell from what 
you wrote which way the mismatch goes.

By convention, GMT (or UT) is 0, and EDT is -4 (4 hours earlier).  If (for 
example) you boot/init your machine at noon, and the time displayed is 8 AM 
(this is what I would describe as "back by four hours"), then

         your hardware clock is set to local time
         your software clock thinks the hardware clock is set to GMT

In contrast, if  (for example) you boot/init your machine at noon, and the 
time displayed is 4 PM, then

         your hardware clock is set to GMT
         your software clock thinks the hardware clock is set to local time

You can get them beck into sync by changing either half.

         To change the hardware clock, the usual tool is "hwclock".  The 
command "hwclock --systohc" will use the current system time (first reset 
this using "date", or maybe KDE has some thingie to do it) to reset the 
hardware clock.

         To change what the software clock expects to get from the hardware 
clock ... well, this part seems to be quite distro specific, so if you want 
to do it this way, tell us what distro you are using. In Debian, for 
example, all you would need to change is a line in /etc/defaults/rdS (a 
line which says either "UTC=yes" or "UTC=no", recording which way the 
hardware clock is set); "man tzsetup" for more details here (if you don't 
use Debian, you might see if "man tzconfig" rerurns a man-page listing). 
But I don't know how Debian-specific this approach is.


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
