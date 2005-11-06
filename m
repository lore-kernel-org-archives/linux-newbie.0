From: Jeremy Abbott <jkbullfrog@verizon.net>
Subject: Re: Alsactl Boot Error
Date: Sun, 06 Nov 2005 09:39:07 -0800
Message-ID: <BF937FBB.3F%jkbullfrog@verizon.net>
References: <20051106111017.065d0108@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20051106111017.065d0108@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

On 11/5/05 7:10 PM, "Peter" <heisspf@skyinet.net> wrote:

> Hi,
> 
> After upgrading to slackware 10.2 I get the following error when booting:
> 
> Loading ALSA mixer settings:  /usr/sbin/alsactl restore
> /usr/sbin/alsactl: set_control:873: failed to obtain info for
> control #35 (No such file or directory)
> 
> What is the meaning and does it have any negative effect, how to correct?
> 
> Thanks & regards
> - 
> Peter
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

If you do a run "man alsactl" at the command line, it will tell you that
this file is used for advanced control of your sound card.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
