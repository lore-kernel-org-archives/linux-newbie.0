From: ichi@aggies.org
Subject: Re: Intel 82595FX clone NIC problems
Date: Sat, 12 Apr 2003 09:13:56 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E97D8D4.694990B5@aggies.org>
References: <5.1.0.14.1.20030411110849.01ea73e8@celine>
	 <5.1.0.14.1.20030411094900.01ea5030@celine>
	 <5.1.0.14.1.20030411094900.01ea5030@celine>
	 <5.1.0.14.1.20030411110849.01ea73e8@celine> <5.1.0.14.1.20030411125405.01fbde78@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> 
> modules have to be compiled for a specific kernel. You 
> can't get a newer eepro.o module and expect it to work 
> (or even load) with 2.2.16. If you need a newer module, 
> you need a newer kernel. Maybe ichi can comment on this part?

I agree.  The bare.i kernel (2.2) from Slackware 8.0 should 
work (with the eepro module from Slackware 8.0).  Of course, 
if James boots BasicLinux with the Slackware 8.0 kernel then
he will need to replace the 2.2.16 modules he normally uses 
with the equivalent modules from Slackware 8.0.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
