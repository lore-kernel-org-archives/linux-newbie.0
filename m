From: Ray Olszewski <ray@comarre.com>
Subject: Re: Printer error
Date: Mon, 16 Dec 2002 09:05:51 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021216085528.02134570@celine>
References: <3DFD4529.1040700@pghmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DFD4529.1040700@pghmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

You don't give us much to go on, but since the problems seem to be with 
name resolution, I'd suggest you tell us the details of your system as they 
relate to that.

First is your networking setup. Are you connected to a LAN or directly to 
the internet? (I guess you must be if you are using MapQuest.) If so, how?

More immediately, how does your system do name-to-address resolution? Does 
it rely on /etc/hosts? If so, what are the contents of that file? Or does 
it use a nameserver? If so, is it accessable? And what are the contents of 
the /etc/resolv.conf file?

Does the message really say "local host" rather than "localhost"? What 
result do you get if (from the command line) you try "ping localhost"?

How is the printer connected to the PC? Parallel port? Something else?

Although your questions involve generic Linux applications, the form of 
your report is specific to RH 8.0. My questions ask for more generic Linux 
information, which will permit non-RH users to try to assess your problem. 
If you prefer to stick with the RH tools, that's fine ... in that case, I 
hope someone else here, someone who does use RH 8.0, pops in with 
translations of these suggestions to Red Hat-ese.

Finally, as to your immediate problem ... if the third page of a epecific 
document continues to fail to print, while other docs print fine (do they? 
you haven't said), i'd suspect something odd about the specific document. 
Generically, you need to investigate how general the printing problem is 
before we can tackle it systematically.

At 10:14 PM 12/15/02 -0500, Bill Pleasants wrote:
>Hello,
>After installing RH 8.0 in my HP Pentium II, my first successful installation,
>I installed a Brother HL-720 printer. I set it up local.  The Printer 
>Administration window shows:
>Command:    lpr
>
>Driver:          Generic Printer (SGENPRT)
>
>Location:
>
>After printing 2 of 3 pages from
>Mapquest, the printer indicated toner out.  I replaced the cartridge and
>there was an error light which can be cleared by unplugging the printer
>cable and cycling the printer off.  I reset the print queue and the same
>2 pages printed and the error light flashed.  Rebooted - same error light.
>Attempts to print additional items failed.  Later I entered "lprm" to 
>cancel anything pending and got
>"local host IP not available."  When I entered
>"/etc/init.d/lpd stop" I got "[FAILED]"
>I repeated it and got
>"[FAILED]"
>"local host IP not available"
>In the panel is a ? which when clicked gives
>"Temporary error in name resolution."
>So far I haven't learned what this IP is about. I would appreciate help.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
