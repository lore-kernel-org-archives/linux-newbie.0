From: caszonyi@rdslink.ro
Subject: Re: mouse
Date: Sat, 10 Jan 2004 00:13:32 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401100009160.1193@grinch.ro>
References: <1073595430.2141.5.camel@shostakovitsj.larsemann> 
 <Pine.LNX.4.53.0401082327460.520@grinch.ro> <1073684101.2268.1.camel@shostakovitsj.larsemann>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1073684101.2268.1.camel@shostakovitsj.larsemann>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lars Bungum <lars@bungum.no>
Cc: linux-newbie@vger.kernel.org

On Fri, 9 Jan 2004, Lars Bungum wrote:

> On Thu, 2004-01-08 at 22:28, caszonyi@rdslink.ro wrote:
> > On Thu, 8 Jan 2004, Lars Bungum wrote:
> >
> > use the following option when booting 2.6
> > psmouse_noext
>
> Calin,
>
> this certainly seemed to help the acceleration (thanks!), but the
> wheel/middle button on the mouse stopped working, too.  Is this a
> trade-off or can I get it working again?
>

i cannot help you on this one.
I read on a mailing list that replacing
Option "Protocol" "PS/2"
with
Option "Protocol" "IMPS/2"
in XF86Config helped some people (but i might be wrong)

> --lars
>

Calin

--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
