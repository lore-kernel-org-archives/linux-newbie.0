From: chuck gelm <chuck@gelm.net>
Subject: Re: Heavy load of graphics
Date: Wed, 06 Oct 2004 21:50:35 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4164A0EB.1090401@gelm.net>
References: <20041006045518.77044.qmail@web52908.mail.yahoo.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041006045518.77044.qmail@web52908.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: Terrence Martin <tmartin@physics.ucsd.edu>, newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>well i hope this will give u a idea about my sys
>current status
>
>thanks
>  
>
i had never got memory lost kinda messages but aftger

some hours of working my system gets damn slow and
even mozilla never opens on it. when i start mozilla
it shows in panel starting mozilla and after a min
nothing  opens.

thanks

ankit

It might be helpful if we saw the data of 'free' and 'top' 
after it gets "slow and mozilla never opens on it".

Leave 'top' running on a virtual console and switch to it
when the systems gets slow.  Try toggling the display with
the 'i' switch.  Press a lower case 'i' and top will toggle
between showing 'idle' processes and not showing them.

 In the data capture you shared, it is showing only 41 MB
of swap being (ever) used.  Perhaps viewing this data while
mozilla is running would be more meaningful.

HTH, Chuck



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
