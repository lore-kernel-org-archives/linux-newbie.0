From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Netscape6.2/Slack8.1 Problem??
Date: Fri, 2 May 2003 11:35:39 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030502113539.A242@lnx2.w8mch.ampr.org>
References: <200305020941.53139.pfheiss@philonline.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200305020941.53139.pfheiss@philonline.com>; from pfheiss@philonline.com on Fri, May 02, 2003 at 09:41:53AM +0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings Peter and thanks for going to so much trouble as did Ray..

I did a clean new install in another partition only selecting the
bare essential packages, using the simple fvwm2 window manager..
Invoking netscape it needed two libraries I missed; libgtk and glib,
that had libgmodules included.. If a fella did the full KDE/Gnome
install as recommended by Patrick, the libraries would have been
default installed, I suspect.

Once I got rid of the new, to me, Activation Screen stuff, it's now
working fine as expected.. Don't know if it's really any better than
4.77 for my use but we'll give it a whirl.. What happened the first
time around I'll never know and wont ask. <grin> 'top' reports 91%
idle so we're not straining anything IMHO.. :^)

I went to the problem URL that started all this, ups.com, and it
didn't balk - so I'm in business.. These new fangled programs are
something. You not only don't have to type in 'http' but they don't
need 'www' anymore.. Boy we're getting lazy...

Thanks again,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable

On 05-02, Peter wrote:
> Greetings Hal,
> 
> In RH7.3 I just tried to simulate your setup just opening X with xterm only.
> startx /usr/X11R6/bin/xterm.
> 
> Opening Netscape 4.79 I have no problem entering a URL, however, opening 
> Mozilla 5.0 I have as you call it the dog bone cursor yet cannot enter 
> anything into the URL window, like you say as if the keyboard is not 
> responding.  Opera works fine as well as dillo.
> 
> I am using xfce as window manager and there is no such problem.
> 
> I just checked with Slackware 8.0 using xterm only. Results are the same as in 
> RH7.3. No problem with Netscape 4.77, Mozilla 5.0 URL window does not 
> respond.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
