From: Ray Olszewski <ray@comarre.com>
Subject: Re: Sype wont't open
Date: Mon, 28 Feb 2005 22:21:39 -0800
Message-ID: <5.1.0.14.1.20050228220147.01f4dec8@celine>
References: <20050301055006.4C53B4E6EC@heisspf>
Mime-Version: 1.0
In-Reply-To: <20050301055006.4C53B4E6EC@heisspf>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

At 01:50 PM 3/1/2005 +0800, Peter H. wrote:
>Hi,
>
>in slackware10 trying to open skype a program
>for Internet telephony I get the following error:
>
>relocation error: /usr/lib/qt/lib/libqt-mt.so.3: undefined symbol:
>XkbSetPerClientControls
>
>and the program aborts.
>
>How to resolve?
>
>Thanks & regards

Probably by getting a newer version of libqt-mt.so.3 . An undefined symbol 
usually means you have an older version of a library than the app was 
compiled against. (If you have the library's -dev package installed ... or 
whatever Slackware calls the packages with the headers files for various 
libraries ... you could check the headers for this function call, as a way 
of confirming my guess.)

In Debian-Sid, the current version of this package is 3.2.3-4 . The 
installed copy I have on a system here is timestamped last July, but I 
doubt my version is the current package. The Skype site says you need at 
least version 3.2 of this library.

I'm guessing that you got Skype from the Skype site, not as part of 
Slackware, probably the dynamic binary the site offers for download. The 
Skype site does also  list a version that has QT 3.2 compiled statically. I 
imagine that includes the libqt-mt part, so using that might be an 
effective workaround.

PS - Just to avoid misunderstanding ... libqt-mt.so.3 is normally a 
symlink, to something like this:

         /usr/lib/libqt-mt.so.3 -> libqt-mt.so.3.2.3

  You need to check the underlying library it is a symlink to to determine 
the version.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
