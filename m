From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: Re: Printing Garbage
Date: Mon, 17 Nov 2003 16:10:19 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200311171610.19480.sotl155360@earthlink.net>
References: <5.1.0.14.1.20031117101709.01f7afb8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031117101709.01f7afb8@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux <linux-newbie@vger.kernel.org>

On Monday 17 November 2003 13:27, Ray Olszewski wrote:
> At 04:28 PM 11/17/2003 +0800, Peter wrote:
> >Hi,
> >
> >suddenly my printer Epson LQ 300 is only printing garbage characters. What
> >could be the reason.
> >
> >I am in RH 7.3. I went to DOS the same, only garbage printing.
> >
> >There are no error messages. Starting LPD says OK. Lprm, lpq etc function
> >normally.
> >
> >Running the printer self test performs flawlessly, meaning the printer
> > does work. I checked all the cables, can't find anything wrong.
> >
> >Any ideas, help?
>
> Well, if the problem occurs with DOS as well as Linux, that certainly
> suggests it is not a Linux problem. There are a couple of things to do
> before you buy a new printer, though.
>
> 1. Have you power-cycled the printer? If not, do so, just in case something
> caused a transient change in the settings. Leave it off for a minute or so.
>
> 2. You say "I checked all the cables, can't find anything wrong". Checked
> *how*? Visually? That wouldn't catch a single broken wire, which would be
> enough to turn good signals into jabberwocky ... and could easily happen if
> the cable is bent sharply at either end (I've never actually seen this with
> a parallel or serial cable, but I have seen it happen to VGA cables). The
> only real way to test for a cable problem, unless you are better with a VOM
> than I am, is to substitute another cable and still see the problem (or to
> use the cable in a different setup and see no problem there ... even that
> is not a *completely* certain test, though).
>
> 3. You probably want to ask for help on a support list for the printer, not
> a Linux list. There, the question to ask is if there is some persistent
> change to the configuration that can occur accidentally ... stay in NV RAM
> or whatever.
>
> 4. Any chance that you made a BIOS change to the port (you don't way if
> this is a parallel, serial, USB, or LAN/Ethernet setup, so I can't be more
> specific than that ... though I suppose you use of DOS implies either
> parallel or serial)?
>
> Were I to **guess**, it would be that you missed a bad cable. Only a guess,
> though.
>
Hi All

First I assume competence with my response. 

By that I mean that the person knows to do all the normal clean up things like 
check printer cable, check plugged in, turn off printer to clear buffer, 
clear files from cash et before a question like that is ask.

For mysself I have a printer HO 890 C connected to a dual boot Win XP / Md 9.1 
box that at times refuses to print correct.

I have seen the same file printed under the same program in the same operating 
system print and not print.

This printer may and often is connected to another dual boot Win 98 / RH 6.3 
box where it always works.

There is a third box RH 7.3 form which it also always works.

At the last SLUG meeting here in Tampa I mentioned the problem because I 
thought it has something to do with the fact that I had split the HD of the 
offending computer into 3 sectors. The Win XP can see two: WIN XP and Common; 
the Md 9.1 can see two: Common and Md 9.1. I was concerned with the partition  
format being used for Common. 

Oh I for got to mention the problem is independent of file format except for 
plain text which always works. All other formats work and/or fail seeming at 
random.

Turns out that regardless of the file format used any files brought up in Win 
XP Office become corrupt. If Win XP Office is not used then there is no 
problem. 

I found the problem by the simple means of using a second Canon portable 
printer I have.

Regards
Frank 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
