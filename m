From: Ray Olszewski <ray@comarre.com>
Subject: Re: Make a phone call (repeat)
Date: Sat, 18 May 2002 09:59:39 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020518165939.03d27178@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: anna7sept@linuxmail.org, linux-newbie@vger.kernel.org

This version of the question is a bit more vague than the one you posed
before. Then, I believe you said you had a headset plugged directly into the
modem (not, for example, into your sound-card ports), and that you could
hear the party on the other end of a phone call but not be heard when you spoke.

It's likely that the modem uses some non-standard AT command to turn the
mike on and off (in contrast to the speaker, which turns on and off with a
long-established, standard AT command). If that's so, and you can find the
command in the docs, then it should be possible to control the mike from
minocom (or whatever Linux terminal software you use), or even to write a
small, custom app. Regrettably, the manufacturer's site isn't well orgainzed
for serious research, offering more glib marketing info about the modem than
substantive information about its operation (at least that I could find), so
you'll have to consult the docs that came with the modem to try to track
down the needed command.

The other option is to do the whole thing through Linux. The standard app
for this is vgetty (which also does answering-machine-type functions), but I
haven't used it, so beyond giving you this starting pointer, I fear I won't
be of much help with this approach.

At 10:16 PM 5/18/02 +0530, G Anna wrote:
>Dear All,
>
>I have asked this question before, but because of my problems with
>subscription to this list, I was not able to read any of your
>responses.  And since there are no official archives I am asking it
>again.  Kindly bear with me; and if necessary use the delete key
>judiciously.
>
>I have an Intex external modem (http://www.intextechnologies.com).  To
>go online, I dial my ISP using the phone line.
>
>What I want to do is to be able to make a phone call (and talk to the
>person at the other end) from my linux box, through the modem.  Kindly
>let me know if this is possible.
>
>Also pointers to other relevant information would be very useful.
>
>Thank you for your time.



--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
