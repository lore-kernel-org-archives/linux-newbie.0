From: Ray Olszewski <ray@comarre.com>
Subject: Re: pppoe/adsl-modem loopback??
Date: Fri, 11 Nov 2005 16:01:03 -0800
Message-ID: <437530BF.6070602@comarre.com>
References: <20051111221155.GA973@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051111221155.GA973@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> Greetings: Trying to "help" a neighbour with her Westell ADSL modem
> on my bench too far from the CO to connect.. I know "help" is a
> mis-nomer because she knows more about ADSL than I... <grin> I've
> fetched all the docs etc from the Web and Westell that I can..
> 
> Does anyone know of a hardware "loopback" scheme, whatever, I can
> try? I know this info is sparce but I've found the modem using
> rp-pppoe but it fails because there is no carrier signal..
> 
> Does this make sense?? I'm almost positive there's nothing I can do
> except lug my desktop to town nearer the Central Office..
> 
> Any comments? TIA..

Let me ask a basic question: Do you have DSL service to the phone line 
you are trying to use for testing? From the part of your message that 
reads "on my bench too far from the CO to connect", I surmise you do not.

Generally speaking, you cannot do DSL troublshooting on your workbench. 
You need to do it onsite, using the phone line the DSL modem is intended 
to connect to (or at least *some* phone line with DSL service).

I apologize if I'm going over things here that you already know, Hal ... 
but if you do misunderstand the situation at this basic a level, you'll 
just be banging your head against the wall uselessly.

 From looking around the Web, I gather it is possible to connect two DSL 
modems together directly ... though I've never tried this myself. Even 
if that gave you a carrier signal, though, you'd then need something at 
the other end to act as a pppoe server, so you could test that part (not 
undoable; RP used to make a simple server available for testing router 
configurations, and they may still do so. It's probably less effort to 
troubleshoot onsite, though, as least for a one-time project.

If you post again on this, please include the make and model of the 
modem. Westell has a bunch of model numbers.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
