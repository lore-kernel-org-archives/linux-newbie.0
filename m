From: tom arnall <kloro2006@gmail.com>
Subject: Re: another place where bootup messages are recorded?
Date: Tue, 29 Aug 2006 17:40:02 -0700
Message-ID: <200608291740.02390.kloro2006@gmail.com>
References: <20060817141403.10351.qmail@web81707.mail.mud.yahoo.com> <200608291131.43788.kloro2006@gmail.com> <20060829205333.GC1633@slug>
Reply-To: kloro2006@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060829205333.GC1633@slug>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Tuesday 29 August 2006 13:53, you wrote:
> On Tue, Aug 29, 2006 at 11:31:43AM -0700, tom arnall wrote:
> > Recently I have begun to get a great number of messages at boot-up which
> > are about 'querying' scsi drives. I need to get a better look at the
> > messages, but cannot find them in the logs in /var/log. Is there another
> > place where bootup messages are recorded?
>
> You'll have them printed by typing 'dmesg'
> Regards,
> Frederik
>


the messages aren't in there either  ;( .  the weird thing about them is they 
say that the boot process is checking a scsi device, of which i have none on 
my system. this phenomenon started btw after i installed the following:

	suspend2
	software to configure the touchpad
	laptop mode
	acpi-related stuff

also simultaneous to the appearance of the new messages was the appearance of 
a recurring 'mini-hang' in the system. the hang lasts about one second and 
occurs every 4 mins 2 secs exactly, except for a short period after booting, 
when the intervals are smaller though still in a precise pattern. whenever 
the hang occurs, the fan comes on for about 10 seconds.

	


	






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
