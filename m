From: Ray Olszewski <ray@comarre.com>
Subject: Re: Modem fails to initialize
Date: Fri, 06 Jun 2003 08:15:25 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030606075801.01fbfb90@celine>
References: <3EE0A977.6090504@ms66.hinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EE0A977.6090504@ms66.hinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:47 PM 6/6/2003 +0800, S. Barret Dolph wrote:
>My modem now fails to initialize. It worked fine before but now hangs. The 
>modem is fine as I can use it with my old box. From the KPPP manual it 
>says I may have such problems if mgetty is using the same line. But in the 
>sysguard I don't find such a process running. I did see mingetty but I 
>don't know what that is.

This is hopeless without the details.

1. When it worked "fine before", was that on the system you are currently 
using or a different one? If the same one, what did you change recently? If 
a different one (the "old box" you refer to, say), what is different 
between the two? (BTW, is the "old box" also a Linux host?)

2. What are you trying to use the modem for? (A ppp connection to the 
Internet? A shell connection somewhere? An incoming connection of some 
sort?) In what app does it "hang"? I'm guessing KPPP, therefore a PPP 
connection, from what you wrote. When you "use it with my old box", are you 
employing the same application for the same purpose (e.g., kppp to connect 
to the same ISP)?

3. "Hang" is a vague term ... what are the symptoms? Is this use different 
from before when "it worked fine"? ("Initialize" is a fairly precise term, 
but are you using it correctly? Do you mean it does not send the "OK" that 
usually starts a dialing exchange? Or do you just mean that the connection 
attempt does not succeed?)

4. Do the system's logs report anything interesting? pppd usually logs a 
lot of helpful information, and I expect kppp doesn't change that.

5. The reference to mgetty in the KPPP manual is poorly written (at least 
as you paraphrase it). What you wan to check is to see if ANY *getty 
process is listening on the /dev/ttyS* device that connects to the modem. 
The fastest way to check this is by looking in /etc/inittab for lines that 
start *getty processes on ttyS* devices. mingetty is, as you seem to guess, 
a *getty process and so *might* be the source of your problem (depending on 
what devices it is accessing).

6. What does "setserial /dev/ttyS*" report back for whatever S* device you 
have the modem connected to?  Does whatever userid you are using to start 
kppp have the required permissions for this device?

7. Using minicom (or some other terminal emulator of your choosing), can 
you access the modem and send it AT commands? If not, what happens when you 
try (as root and as whatever userid you are using with kppp)?

8. The basics: what Linux distro and version? What modem?  If it is 
external, which serial port is it connected to? If internal, might there be 
an IRQ conflict (what does "cat /proc/irq" report about it)?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
