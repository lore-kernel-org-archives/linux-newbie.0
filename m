From: Ray Olszewski <ray@comarre.com>
Subject: Re: PPP connection TO ISP with PAP authentication
Date: Sun, 07 Jul 2002 12:21:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020707121451.02105ec0@celine>
References: <000001c22531$4bdfab50$8f6a07d5@prester>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c22531$4bdfab50$8f6a07d5@prester>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Axel Siebenwirth <axel@hh59.org>, linux-newbie@vger.kernel.org

Yes, passwordfd.so is apparently a binary-only package that SuSE ships and 
uses in its configuration of wvdial. Pfui!

OTOH, wvdial does work with standard pap-secrets. The regular PPP HowTo 
should be able to get you going, or you may find the procedure described at 
this URL helpful --

http://www.icewalkers.com/doclib/howtos/Modem-Dialup-NT-HOWTO-2.html

I no longer use dialup here, so I can't help with specific questions if 
this info isn't sufficient. But I hope it is at least enough that you will 
be able to pose more specific questions next time qround, so someone who 
does use wvdial will be able to help. (You do need to understand that most 
of us don't care to write step-by-step instructions for things in e-mail 
responses; that's what FAQs, HowTos, and the like are for.)

The PPP HowTo should also tell you how to connect manually, if you really 
want to fall back to that option.

At 11:08 PM 7/6/02 +0200, Axel Siebenwirth wrote:
>Hi,
>
>I need to dial in to my ISP to get into the internet. ISP requires PAP
>authentication.
>Formerly I have used wvdial, but with Slackware I cannot use it anymore
>because it needs the passwordfd.so plugin for pppd for PAP
>authentication. And that plugin comes only with SuSE, binary only.
>So now I have asked myself what I would need to do to set up a PPP
>connection with PAP auth to my ISP "manually" i.e. without using any
>tools. I'd like to know what is involved in that. I know about
>pap-secrets file. I do not know how to dial, establish ppp connection,
>do PAP authentication.
>So I'd be really glad if someone could help in that direction. I also
>know C, so if I would need to write some program myself, I could do so.
>I just need to about the things that need to be done.
>In my case it's an analog modem.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
