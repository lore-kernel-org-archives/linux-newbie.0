From: Bill Davidsen <davidsen@tmr.com>
Subject: Re: Problem booting 2.6.13 on RHEL 4
Date: Wed, 14 Sep 2005 12:20:32 -0400
Message-ID: <43284DD0.5080709@tmr.com>
References: <b115cb5f05091321082a3ffc24@mail.gmail.com> <4327DBBB.7090108@ccoss.com.cn>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4327DBBB.7090108@ccoss.com.cn>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "liyu@WAN" <liyu@ccoss.com.cn>
Cc: Linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

liyu@WAN wrote:
> 
> It seem that kernel have no time to probe your disk, and do not
> read parttion table.
> 
> I use kernel 2.6.12 and SATA disk on FC3, also failed to boot.
> but after some experiment, I found if we place 'sleep 5'
> statement between insmod commands in linuxrc or init, it will
> boot up!
> 
> However, this idea is too HACK.

It would have been nice, back in the 2.5.46 timeframe when modules were 
complete reinvented, to have provided a hook by which modprobe could 
have waited until insertion init was complete.

The sleep is a hack indeed, as is the slightly more reliable solution to 
tail the log and look for init messages to appear. Perhaps look for the 
devices in /proc/scsi/scsi or something?

There doesn't seem to be a "right way" for this, particularly if you 
have both warm and cold boots, which may differ by minutes depending on 
disk spin-up already being done.

-- 
    -bill davidsen (davidsen@tmr.com)
"The secret to procrastination is to put things off until the
  last possible moment - but no longer"  -me

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
