From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Skype wont't open
Date: Thu, 3 Mar 2005 17:37:43 +0100
Message-ID: <200503031737.43781.pa3gcu@zeelandnet.nl>
References: <20050303095620.CB9D11B503@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <20050303095620.CB9D11B503@heisspf>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On Thursday 03 March 2005 10:56, Peter wrote:
> pa3gcu@zeelandnet.nl said:
> > I presume you meant Richard Adams...
>
> Actually Richards
>
> pa3gcu@zeelandnet.nl said:
> > Ok but are you sure qt3.3.2 is deleted,??
>
> heisspf@~:$ locate qt-3.3.2
> heisspf@~:$
>
> Not a trace left. Updated daily.
>
> I put this now into ld.so.conf only with no change of the error messa=
ge
> after doing ldconfig. This is anyhow the sequence put-in by slackware=
 I
> think.
>
> /usr/local/lib
> /usr/X11R6/lib
> /usr/i486-slackware-linux/lib
> /opt/kde/lib
> /usr/lib
> /lib
>
> and leaving /usr/lib/qt out I get:
>
> error while loading shared libraries: libqt-mt.so.3: cannot open shar=
ed
> object file: No such file or directory

I was seemingly missleading on saying that /usr/lib should have been en=
ought,=20
i=E1=B8=BF sorry to say but i seem to be wrong.

It is defined here as

/usr/lib/qt/lib
Once again i have qt-3.3.2.
I have tryed skype on another box with a clean slack-10 install and i d=
o not=20
get that message.

Anyway like i mentioned slackware-10 and skype do not really like each =
other,=20
even if skype starts you need to tune things a lot to get it to even th=
ink of=20
working.


>
> I have the strong suspicion the problem is in those libs in
> /usr/X11R6/libs. Are they different from distro to distro?
>
> This is the end of strace dynamic skype:
>
> read(4, "&\0\0\0\1\1\22\t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\1\0\0\0\0"..., =
604) =3D
> 604 writev(2, [{"./skype", 7}, {": ", 2}, {"symbol lookup error", 19}=
, {":
> ", 2}, {"./skype", 7}, {": ", 2}, {"undefined symbol: XkbSetPerClien"=
=2E..,
> 41}, {"", 0}, {"", 0}, {"\n", 1}], 10./skype: symbol lookup error: ./=
skype:
> undefined symbol: XkbSetPerClientControls
> ) =3D 81
> exit_group(127)


I am quite sure someone on the skype site mailing list(s) would apprica=
te that=20
as a problem report Peter.
All it says to me is that an undefined symbol was discoverd-;)


>
> Regards
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
