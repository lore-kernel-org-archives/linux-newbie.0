From: Ray Olszewski <ray@comarre.com>
Subject: Re: xwindows login
Date: Thu, 26 Sep 2002 09:22:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020926091345.02621ec0@celine>
References: <006501c26565$0bb74e60$08d9d6d2@heretic>
 <006501c26565$0bb74e60$08d9d6d2@heretic>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0209261603010A.09996@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Sagar N Chand <sagar@mihira.net>, linux-newbie <linux-newbie@vger.kernel.org>

At 04:03 PM 9/26/02 +0000, pa3gcu wrote:
>On Thursday 26 September 2002 13:56, Sagar N Chand wrote:
> > I've recently installed Mandrake on my system.
> > Everything is well and good. But by default it is going
> > into xwindows for the login. I changed the runlevel to 3 in the
> > etc\inittab file and now it is showing the login in the console
> > mode only. Is there any other way to do this???
>
>No that i know off, what is it you really want, you need to login one way or
>the other.
>
>You can use both tho' simply use runlevel 4 or 5 (dont know what mandrake
>uses for X) after startup you can go to console mode with ctrl-alt-F6 and
>login on the console.
>ctrl-alt-F2 to return to X.

I missed this one first time through. Richard's solution is a correct one, 
but there may be another, depending on what *exactly* you mean by "do this".

The other possible solution to running both consoles and X is to start in 
runlevel 3, then log into a console and start X manually. You usually do 
this with the command "startx", which is a shell script that sets up some 
stuff, then calls xinit, the binary that actually starts X. I don't know if 
a standard Mandrake install sets up startx or if you will need to do some 
setup manually.

If you do it this way, X will most likely be running on console 7, with tty 
consoles running on 1-6. As with Richard's approach, you use CTRL-ALT-F7 
(or just ALT-F7)  to get to X, and CTRL-ALT-F1 to -F6 to get back to the 
consoles from the X display. (That is, if X is on the displa,y you need 
CTRL-ALT-Fsomething to switch, but from a command-line tty you can use 
either CRTL-ALT-Fsomething or ALT-Fsomething to switch consoles).

This is what I catually do on my workstations, BTW ... but I happen not to 
like xdm as a login mechanism.
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
