From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: keeping static ip address alive between restarts
Date: Fri, 20 Feb 2004 13:24:21 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040220182421.GA865@lnx2.w8mch.ampr.org>
References: <fc.004c4e000050d4a1004c4e000050d4a1.50d523@palmertrinity.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <fc.004c4e000050d4a1004c4e000050d4a1.50d523@palmertrinity.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: As Ray says; RH may be different but Slackware, all
versions, have a file: rc.local, that's found -> /etc/rc.d/rc.local,
where you merely enter whatever command you want for each and every
future boot...

Disregard if RH doesn't have such an animal.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam


On 02-20, William Stanard wrote:
> Running Red Hat 8.0 (2.4.18-14) on an old Acer I have keyed
>  ifconfig eth0 192.168.0.1
> to set my box's ip address for my small LAN. What additional command
> should I use to write that address permanently, so that I do not have to
> ifconfig each time I restart? I have read and reread O'Reilly's Running
> Linux and Learning Red Hat Linux; is there no process whereby the settings
> are written to the correct files for startup, or must I (using vi, for
> example) edit certain files myself? 
> 
> Bill Stanard
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
