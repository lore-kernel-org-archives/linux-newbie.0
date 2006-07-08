From: Chris Largret <largret@gmail.com>
Subject: Re: How to make KDE default windows manager?
Date: Sat, 08 Jul 2006 00:37:09 -0700
Message-ID: <1152344229.15485.13.camel@localhost>
References: <000501c6a1f0$a79153a0$6900a8c0@ANCHORMAN>
	 <1152306806.7439.4.camel@localhost>
	 <000301c6a21b$7a4bea10$6900a8c0@ANCHORMAN>
Reply-To: largret@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000301c6a21b$7a4bea10$6900a8c0@ANCHORMAN>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse <jlc@msdlg.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 2006-07-07 at 19:17 -0400, Jesse wrote: 
> I found the file in the same place, and it has pretty much the same thing 
> you've got there.  However,  think this may be the configuration file once 
> you get KDE up and running.  I can't seem to get KDE running.

Hmmm, on my system that file puts 'KDE' in the list of desktop
environments available in [xgk]dm.

I'd recommend checking the file permissions
for /usr/share/xsessions/kde.desktop. It would also be nice to know
which desktop manager is being used for your run-level (xdm/gdm/kdm).
'ps -ef' will give you a list of programs currently running. One of them
should be your desktop manager.

I'm also CC'ing this to the list in hopes that someone will know
better. :)



> ----- Original Message ----- 
> From: "Chris Largret" <largret@gmail.com>
> To: "Jesse" <jlc@msdlg.com>
> Sent: Friday, July 07, 2006 5:13 PM
> Subject: Re: How to make KDE default windows manager?
> 
> 
> > On Fri, 2006-07-07 at 14:10 -0400, Jesse wrote:
> >> I installed kde using the apt-get utility, however, I want to run it as 
> >> my
> >> default windows manager.  How do I do that?  I'm using Debian Linux, and
> >> right now, it comes up to a log in screen where I can choose IceWM, 
> >> Gnome,
> >> and some others as my windows manager, but KDE is not one of those.  Any
> >> ideas?
> >
> > I'm not fully certain for Debian, but this should be close. On my
> > Slackware box you would look for /usr/share/xsessions/kde.desktop (If it
> > isn't /usr/share/xsessions/, maybe try running "slocate xsession" to
> > find the right directory).
> >
> > Inside of the kde.desktop file, here is what I have:
> >
> >
> > [Desktop Entry]
> > Encoding=UTF-8
> > Name=KDE
> > Comment=This session logs you into KDE
> > Exec=startkde
> > # no icon yet, only the top three are currently used
> > Icon=
> > Type=Application
> >
> >
> > hth

--
Chris Largret <http://www.largret.com>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
