From: Peter <heisspf@skyinet.net>
Subject: Re: Skype wont't open
Date: Wed, 2 Mar 2005 13:53:06 +0800
Message-ID: <20050302135306.613ed4ae@skyinet.net>
References: <Your message of "Tue, 01 Mar 2005 07:58:22 +0100." <200503010758.23060.pa3gcu@zeelandnet.nl>
	<5.1.0.14.1.20050301185220.01f7f118@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <5.1.0.14.1.20050301185220.01f7f118@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux <linux-newbie@vger.kernel.org>



> At 10:07 AM 3/2/2005 +0800, Peter wrote:
> >Is it possible that the kernel has something to do that skype will not 
> >open in
> >slackware10 instead aborts with:
> >
> >skype: relocation error: /usr/lib/qt/lib/libqt-mt.so.3: undefined symbol:
> >XkbSetPerClientControls
> >
> >My kernel in slackware10 is 2.4.26 whereas in Fedora2 where skype works
> >flawlessly the kernel is 2.6....
> >
> >What is that anyhow XkbSetPerClientControls ?
> >
> >Besides having tried the static and dynamic version I tried as well the rpm
> >version which I have in Fedora, made a tgz file with rpm2tgz and trying to 
> >run
> >it I get the identical error message.
> 
> This result is somewhat puzzling, especially coming from the static version.

> 
On Tue, 01 Mar 2005 19:00:42 -0800
Ray Olszewski <ray@comarre.com> wrote:

> So I did a bit of checking, though, and apparently this message means that 
> libqt-mt.so.3 is unable to find one of its symbols. In this case, the 
> symbol should resolve to a call to libX11.so, so the problem is likely a 
> version incompatibility between the libqt-mt.so.3 you are using and 
> Slackware's libX11.so.
> 
> Probably the best workaround is to stop using the libqt-mt.so.3 you copied 
> over from SuSE and find a version of libqt-mt.so.3 that is compiled for, 
> and works with, Slackware 10. Then use the dynamic version of Skype with it.
> 
> In any case, it is all but surely not a kernel issue. It is some sort of X 
> issue.

Thanks Ray!

I downloaded and installed the latest qt-3.3.3-i486-3.tgz from slackware.
There is no change, all installed skype won't open,  sames error message.
I checked the libX11 and the latest version is installed.

Regards

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
