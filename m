From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Mozilla update - EZ question
Date: Thu, 23 May 2002 06:13:13 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0205230613131S.27213@unix.pa3gcu>
References: <5.1.0.14.1.20020521231413.027ca8c0@celine> <1022097748.11803.7.camel@ltsp1> <1022109312.11952.22.camel@ltsp1>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1022109312.11952.22.camel@ltsp1>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dan Bentson-Royal <dbentson@lcsd.k12.wa.us>, 
Cc: linux-newbie@vger.kernel.org

On Wednesday 22 May 2002 23:15, Dan Bentson-Royal wrote:
> I just re-read my earlier post and saw it was less than clear. I will
> repost again to try and clean it up a bit...
>
> I have just installed RH7.2 and when I ran Mozilla for the first time, it
> suggested that, for security reasons, Mozilla needed to be upgraded. I
> fumbled around between the GUI and terminal windows and finally got the
> latest release of Mozilla downloaded and installed. For me, this was a big
> step and quite a coup. However...
>
> As root running Gnome, I have the Gnome icon for Mozilla properly pointing
> to the location of the new version of Mozilla - which is:
> /usr/local/mozilla/mozilla
>
> But my non-root user's Gnome-Mozilla icon (the lizard head) does not
> point to that new install of Mozilla - it invokes the old installation.
> I could manually change it, but I know there must be some way to have
> this updated for all users. Is that correct? So that when I create
> accounts on this machine, they will all use this newest version of
> Mozilla. Should I delete the old version and move the new one into the
> same location (/usr/bin/mozilla)?

I can think of several ways, however i think the easiest would be to simply 
delete the old version or rename it, then create a symlink in /usr/bin called 
mozilla.
ln -s /usr/local/mozilla/mozilla mozilla
AFAIK that should work.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
