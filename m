From: J S <webnews@comcast.net>
Subject: Re: what do chargen, echo, time, and daytime services do?
Date: Mon, 19 May 2003 20:06:46 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1053389206.6203.7.camel@jayhawk>
References: <057889C7F1E5D61193620002A537E8690B44DE@NCBDC>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <057889C7F1E5D61193620002A537E8690B44DE@NCBDC>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Stanley Yee <SYee@snapappliance.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Chargen simply puts characters onto the network.  It's most often used
for testing network connections.  Rarely does anyone need this service.

Echo simply echoes whatever it receives on the network.  Again, good for
testing netowkr connections but not very useful for most people.

I think that time will send the unix time (sec since 1970) to whatever
connections it receives.  I'm not really certain about this one.

Daytime will send a human readable string containing the current time,
such as "19 MAY 2003 20:02:05 EDT".

None of these services are going to cause you much grief if you disable
them (of course this is only my best guess).

Josh

On Mon, 2003-05-19 at 16:14, Stanley Yee wrote:
> I'm optimizing my xinetd and ran found chargen, echo, time, and daytime
> services.  Anyone know what these things do and the pros and cons of
> removing them? Thanks!
> 
> Only me,
> Stanley Yee
> 
> -----Original Message-----
> From: Charlotte Miller [mailto:cmiller@sdf.lonestar.org]
> Sent: Saturday, May 10, 2003 6:30 AM
> To: linux-newbie@vger.kernel.org
> Subject: Re: How do I stop GUI from autoloading?
> 
> 
> On Sat, 10 May 2003, Amin wrote:
> >
> > But you need to be able to access the file to be able to
> > edit it, and you can't do that when you're stuck in a messy
> > GUI.  You need to access it from a text-based command
> > prompt.  This is actually quite possible, and it gets easier
> > each time you do it:
> >
> These instructions sound rather convoluted.  Why would this individual
> need to boot from an installation CD just to edit a file?  I assume one
> needs root priviledges to edit /etc/innitab, but wouldn't it be alot
> easier to open a console, then su to root, then invoke a word processor
> and open the file with it?  Or invoke MC from that root console, navigate
> to the file using it, then use MC's editor to edit the runlevel argument?
> Please clarify on the need to do the editing from other bootable media.
> 
> Thanks, James
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
