From: Ray Olszewski <ray@comarre.com>
Subject: Re: Running X programs from bash w/ framebuffer
Date: Wed, 12 Jan 2005 08:21:24 -0800
Message-ID: <5.1.0.14.1.20050112080425.02a9f9c8@celine>
References: <5.1.0.14.1.20050111220955.02b21ba8@celine>
 <200501112319.42894.eric@cisu.net>
 <41E439F4.6030404@comcast.net>
 <200501112319.42894.eric@cisu.net>
 <5.1.0.14.1.20050111220955.02b21ba8@celine> <41E467D9.7040003@comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41E467D9.7040003@comcast.net>
References: <5.1.0.14.1.20050111220955.02b21ba8@celine>
 <200501112319.42894.eric@cisu.net>
 <41E439F4.6030404@comcast.net>
 <200501112319.42894.eric@cisu.net>
 <5.1.0.14.1.20050111220955.02b21ba8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-339B7E00"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:57 PM 1/11/2005 +0000, Jeremy Abbott wrote:
[...]
>I do have to ask you why using X is good advice (not to say your wrong), 
>my understanding, is that X is cobbled together adding code ontop of code, 
>to the point where it is barely readable.

Well ... your concern about not having enough time to configure fluxbox 
suggests you are not eager to take on a lot of configuration work, and X 
provides a standard that lets you (and the people who write software) avoid 
a lot of customizing. X itself could no doubt be better ... what software 
couldn't? ... but used in a lightweight configuration, it's not really that 
bad.

>Aside from the bloat (of which I was primarily writing of kde and gnome),

This is quite irrelevent to the discussion, since we've all been suggesting 
ways to avoid use of KDE and Gnome (though not necessarily the underlying 
gtk and qt libraries, since it's the apps you choose that dictate whether 
they are needed).

>I also have some minor display problems with X.  I have tried my monitor 
>manufacturers range of vertical and horizonatal syncs, but notice a 
>flicker.  I have also tried tried the exact values my monitor tells me I 
>have when I am in Windowz XP (which is still on the system as backup, even 
>though I have abandoned it), and it doesn't flicker, but I see some kindof 
>funky lines, almost like my display is being slightly folded in on the top 
>and bottom.  This could also have to do with the generic radeon driver I'm 
>running.  I suppose I shall try installing the Ati drivers for X.

Maybe. If you want help on this, you're going to need to discuss the 
details. This is your first mention of display problems, so naturally my, 
and others', prior reponses didn't consider it as an issue.

>[...]
>>And the basic response you already received is also right ... apps 
>>familiar to us as X-based use shared libraries specific to X. They cannot 
>>write to a "raw" framebuffer.
>To this I have to ask why?  I know for a fact that I am not the only 
>person who has expressed this concern.  Where is the next generation X 
>server?  Don't tell me Xorg, cause that is what I'm running, and it aint 
>that different (not to sound to condescending).

I don't understand your question. X apps cannot write to a raw framebuffer 
because they use shared libraries that assume the presence of an X server. 
Is there something about that design decision that you do not understand? 
If so, what? (I understand that you do not *like* the limitation.)

And I don't know what you mean by "next generation X server". Generally 
speaking, software for mainstream workstations is relatively heavyweight, 
simply because they have the power to cope with heavyweight. Any "next 
generation" X server we see from the traditional X sources will most likely 
be distinguished by added features, not by more compact size. Why? Because 
that's what interests that subset of developers, and Open Source projects 
tend to be motivated more by developer interest that consumer demand. And 
if you don't run KDE or Gnome, no current version of X is all *that* 
heavyweight anyway.

If you are looking for something *extremely* lightweight, you probably want 
to look at alternatives to X written for the embedded-systems world (PDAs 
and the like)... projects like microwindows and matchbox. These 
super-lightweight apps tend not to show up in mainstream distros, though, 
and since they use different shared libraries, they do not support 
mainstream X apps, only apps that have been written or adapted for them.




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.300 / Virus Database: 265.6.10 - Release Date: 1/10/2005


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
