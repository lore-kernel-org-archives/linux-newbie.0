From: "Gosselin, Mark" <gosselinm@netscout.com>
Subject: RE: Help configuring Redhat for rsh
Date: Thu, 16 Oct 2003 16:18:33 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <6CE6A442029B3347890ED9FCA94FAE07148915@nsxmail.netscout.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org



-----Original Message-----
From: Ray Olszewski [mailto:ray@comarre.com]
Sent: Thursday, October 16, 2003 4:02 PM
To: linux-newbie@vger.kernel.org
Subject: Re: Help configuring Redhat for rsh


At 12:46 PM 10/16/2003 -0400, Gosselin, Mark wrote:
>Hi,
>
>As the list indicates, I'm a newbie to Linux, but do know other versions 
>of Unix.
>My problem is pretty simple (or at least it appears so). I'm required to 
>build a
>number of different platforms of our product. I do it with a cron job that 
>rsh'es into
>each type of system (Sun, HP, AIX, and Linux) and runs my builds...
>
>As this is done after hours, I'd like for it to require no input from me. 
>However, my
>attempts to rsh from a Sun box to my RedHat box always prompts for a 
>password.
>The hosts are set in .rhosts, I've even added them in hosts.equiv....
>
>How can I set up a user so that they can rsh to my RedHat???

Obligatory disclaimer: rsh is an insecure protocol. Implemented with 
.rhosts support, it is even more insecure. Mark, I assume you know your 
working and networking environments enough better than I that you can make 
intelligent decisions about these risks, but this is a "kids, don't try 
this at home" wave-off to any true beginners here... in most settings, what 
Mark wants to do simply *should not* be done.

See if this tells you what you need to know:

         http://www.linuxgazette.com/issue48/tag/43.html

If not, you re going to have to give us the details of how you have rshd 
(or maybe in.rshd -- naming practice varies a bit) set up ... generally, 
"What might I have done wrong?" is too demanding a question to get an 
answer (compared to "Here's what I did; what is actually wrong about it?).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
