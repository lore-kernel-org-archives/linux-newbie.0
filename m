From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Highly unusual crashes.
Date: Sun, 30 Jun 2002 08:42:32 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206300842.32416.pa3gcu@zeelandnet.nl>
References: <20020630075334Z314596-685+1086@vger.kernel.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020630075334Z314596-685+1086@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

On Sunday 30 June 2002 07:57, Adam Luchjenbroers wrote:
> Screen just goes black or locks up.
>
> Under X it locks up with a blue screen and a white line.
>
> No apparent cause, I did nothing that could've caused it. I'm surprised I
> can get in as it was doing it on boot (yes, even to failsafe). I have no
> idea what could've caused it or what the problem might be.
>
> Will try another reboot and see what happens. Perhaps this has gone as
> mysteriously as it came. Got me puzzled.

I can assure you it is "more" of a mystry to us readers than it is to you as 
you do not give us one little piece of information on your system.

All i can say is you can in this case "always" get into your system by booting 
into single user mode, either via lilo or via boot/resuce disks.
I would then edit my /etc/inittab file and make the default init level to 3.
That will allow you to trace the the problem with the command 'startx' and 
capture its output to a file like;
startx 2>&1 &> tracefile
If X locks up as you say you should be able to escape from it with the key 
combination, ctrl-alt-backspace.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
