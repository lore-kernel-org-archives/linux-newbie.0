From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Skype wont't open
Date: Wed, 2 Mar 2005 07:51:31 +0100
Message-ID: <200503020751.31499.pa3gcu@zeelandnet.nl>
References: <20050302020750.EF01617D14@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <20050302020750.EF01617D14@heisspf>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Peter <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

On Wednesday 02 March 2005 03:07, Peter wrote:
> Is it possible that the kernel has something to do that skype will no=
t open
> in slackware10 instead aborts with:
>
> skype: relocation error: /usr/lib/qt/lib/libqt-mt.so.3: undefined sym=
bol:
> XkbSetPerClientControls
>
> My kernel in slackware10 is 2.4.26 whereas in Fedora2 where skype wor=
ks
> flawlessly the kernel is 2.6....
>
> What is that anyhow XkbSetPerClientControls ?
>
> Besides having tried the static and dynamic version I tried as well t=
he rpm
> version which I have in Fedora, made a tgz file with rpm2tgz and tryi=
ng to
> run it I get the identical error message.

When i searched google for your error message some said it is a bug in =
qt,=20
others say its because one has installed another version of qt and now =
has=20
two versions installed.
I pointed you to an URL which menioned a spesific order of directory=B4=
s in the=20
file /etc/ld.so.conf. here is what i used on my slack-10 system when i =
tryed=20
skype.

/usr/local/lib
/usr/X11R6/lib
/usr/i486-slackware-linux/lib
/opt/kde/lib
/usr/lib/qt/lib
/usr/lib/xine
/usr/lib
/lib

I noticed in another message of your that what ls -al /usr/lib/qt retur=
ed, it=20
was different to my origanal slack-10 install, i get;
/usr/lib/qt -> qt-3.3.2

I belive if you installed an rpm from fedora 2 then that could well be =
your=20
problem.

> Regards
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
