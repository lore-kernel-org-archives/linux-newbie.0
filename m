From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Sype wont't open
Date: Tue, 1 Mar 2005 08:10:40 +0100
Message-ID: <200503010810.41032.pa3gcu@zeelandnet.nl>
References: <5.1.0.14.1.20050228220147.01f4dec8@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <5.1.0.14.1.20050228220147.01f4dec8@celine>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ray Olszewski <ray@comarre.com>
Cc: linux <linux-newbie@vger.kernel.org>

On Tuesday 01 March 2005 07:21, Ray Olszewski wrote:
> PS - Just to avoid misunderstanding ... libqt-mt.so.3 is normally a
> symlink, to something like this:
>
> =A0 =A0 =A0 =A0 =A0/usr/lib/libqt-mt.so.3 -> libqt-mt.so.3.2.3
>
> =A0 You need to check the underlying library it is a symlink to to de=
termine
> the version.

Standard slack-10 has 3.3.2 installed in/

/usr/lib/qt which should be linked to qt-3.3.2
My slack-10 /etc/ld.so.conf looks like;

/usr/local/lib
/usr/X11R6/lib
/usr/i486-slackware-linux/lib
/opt/kde/lib
/usr/lib/qt/lib
/usr/lib/xine
/usr/lib
/lib

I found many questions about this error on www.google.com/linux.
A few answers all saying the same as i pointed Peter to in my other rep=
ly.

Regards Richard.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
