From: Lars Bungum <lars@bungum.no>
Subject: Re: mouse
Date: Fri, 09 Jan 2004 22:35:02 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1073684101.2268.1.camel@shostakovitsj.larsemann>
References: <1073595430.2141.5.camel@shostakovitsj.larsemann>
	 <Pine.LNX.4.53.0401082327460.520@grinch.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0401082327460.520@grinch.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Calin Szonyi <caszonyi@rdslink.ro>
Cc: linux-newbie@vger.kernel.org

On Thu, 2004-01-08 at 22:28, caszonyi@rdslink.ro wrote:
> On Thu, 8 Jan 2004, Lars Bungum wrote:
> 
> > When I boot 2.6.0 the mouse is extremely sensitive, and although I set
> > the driver to accelerate at the slowest available pace it still feels
> > too fast.
> >
> > As nothing is different in the setup of XFree86 itself, the only
> > difference is wheter I boot 2.4.18 or 2.6.0 I suspect this to be the
> > reason.  But I don't really know where to start looking, is there some
> > option I can give to the kernel at boot-time or something?
> >
> yes
> use the following option when booting 2.6
> psmouse_noext

Calin,

this certainly seemed to help the acceleration (thanks!), but the
wheel/middle button on the mouse stopped working, too.  Is this a
trade-off or can I get it working again?

--lars

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
