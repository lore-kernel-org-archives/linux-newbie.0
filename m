From: Ray Olszewski <ray@comarre.com>
Subject: Re: RH7.3 keyborad lock-up
Date: Fri, 09 Aug 2002 23:59:11 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020809234007.0208bd20@celine>
References: <02081013393200.02846@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02081013393200.02846@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

Responding only to "my" portion of this message -- I'll leave the libraries 
part for Riley.

At 02:23 PM 8/10/02 +0800, Peter wrote:

>Thanks Riley and Ray!
[...]
>rhw@InfraDead.Org said:
> > You will find that the glibc library is common to every program on
> > your system
>
>There is no glibc or is it the same as libc.

Yes, it is the same.


>ray@comarre.com said:
> > A. If Peter sees the RH 7.3 failure with -ANY- command-line app.
> > (Including  the details if the answer is yes.)
>
> > B. What video card and X server are involved, and what versions are in
> > the  "before" and "after" serups.
>
> > C. When the keyboard locks, is the system still running or not? For
> > example, can you ssh or telnet to it? Can you ping it? I assume the
> > keyboard problem prevents your switching to a vt, but if you have
> > (say)  "top" running in an xterm, does it continue to run and show
> > sensible  process behavior? Any one of these tests should do; I list
> > several because  I can't remember is this system is on a LAN, or what
> > services it might be  running if it is.
>
>Answers:
>A. I found it only in xsceensaver, tuxracer and chromium which might not
>exclude others I have not tried. Gnucash, gnumeric, mozilla, opera,
>staroffice, Xephem all worked with no problem.

I did a quick check, and the only resources these three *seem* to have in 
common are glibc and xlibs. And pretty much everything that is an X app 
uses those libraries. tuxrecer and chromim are OpenGL apps, but apparently 
xscreensaver is not.

The one characteristic I see as common to the three problem apps, but 
absent in the OK apps, is speed and frequency of screen updating. They 
would be more likely to trip an infrequently occurring failure in the X 
server, simply because they make a lot more calls to it.

>B. My mainboard is P6STMT with a SiS630ET chipset which includes integrated
>built-in video, audio, networking and communication capabilities. X server
>??? I guess there was no change.

Bad guess. I'd bet that you are switching from XFree86-3.3.6 or so to 
XFree86-4.something, and this is a big change. I'm not sure where RH puts X 
config info, but look for a file named XF86Config (maybe 
/etc/X11/XF86Config-4 for the new version) to see which X server you are 
running.

>C. When the keybord locks the system seems still to be running. In chromium
>the mouse arrow can still be seen moving yet does not respond to clicking and
>the chromium background music continues playing. In xscreensaver blank
>screen,
>no mouse movement to be seen, time announcement still working. In tuxracer
>all blank, no music, nothing.
>I can't answer the other questions since I am scared to reinstall RH7.3.
>There is no LAN.

Yes, this sounds like the problem is limited to a console failure, and that 
it is specific to X. That makes the kernel an unlikely source for the 
problem. I'd lean toward an undiagnosed incompatibility between your 
onboard video and the X server that the RH installed is guessing is right 
for it.



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
