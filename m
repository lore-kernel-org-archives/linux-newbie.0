From: "=?ISO-8859-1?Q?Ren=EA?=" <rene@grad.icmc.usp.br>
Subject: Re: download file
Date: Tue, 16 Sep 2008 15:52:02 -0300
Message-ID: <5f9618380809161152x334e7282g5fde3ac2b4f2f789@mail.gmail.com>
References: <2e35683f0809161118q3153143kcc6221dc7dd27949@mail.gmail.com>
	 <200809161132.05015.ben.kevan@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:sender
         :to:subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references
         :x-google-sender-auth;
        bh=JY6srCHyYogmSAZqsMwMjz3N8Z22zhU33Bbc6pQkbF0=;
        b=H/lREg0ldwtOZ9Xc9M1Sqm0E6L+2nQ99vHRp+c+0vpa7NQE6HeWAhDGmx3qUjGbf+X
         6Bhy8Qjj0mCVlGNlrj4H0Algii6vXr7lS42NXaycPi1i8ZRTzSHC9FL0ALrTdB0EQQef
         9NPlbzUcsgBk88PYBKkLLxLMB4goSHFXhVvmc=
In-Reply-To: <200809161132.05015.ben.kevan@gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ben Kevan <ben.kevan@gmail.com>, Linux Kernel Newbie <linux-newbie@vger.kernel.org>

Are you getting this error because address contains the & character,
that it's used by shell to start proccess in background,
you can easily download file with wget by putting double quotes in addr=
ess:

wget "http://switch3.castup.net/cunet/gm.asp?ai=3D214&ar=3D1050wmv&ak=3D=
TY"

or use \& instead &, like this:

wget http://switch3.castup.net/cunet/gm.asp?ai=3D214\&ar=3D1050wmv\&ak=3D=
TY

Cheers;

Ren=EA

On Tue, Sep 16, 2008 at 3:32 PM, Ben Kevan <ben.kevan@gmail.com> wrote:
>
> On Tuesday 16 September 2008 11:18:36 am you wrote:
> > hi,
> >
> > I am on linux
> >
> > How do I download a file from this site ?
> >
> > http://switch3.castup.net/cunet/gm.asp?ai=3D214&ar=3D1050wmv&ak=3DT=
Y
> >
> > when I do
> > $wget  http://switch3.castup.net/cunet/gm.asp?ai=3D214&ar=3D1050wmv=
&ak=3DTY
> > then I get a small file by the name of  "gm.asp?ai=3D214" with cont=
ent like
> > this.
> >
> > <asx version=3D"3.0">
> >                                 <!-- GMX -->
> >                                 <title>CastUP: Unknown Error</title=
>
> >                                 <entry>
> >                                         <title>Error: Unknown Error=
</title>
> >                                     <author></author>
> >                                         <ref href=3D"http://" />
> >                                 </entry>
> >                         </asx>
> >
> >
> > Regards
> > Mettavihari
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-new=
bie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
>
> The reason you are getting that is because that's the file you're tel=
ling it
> to download.
>
> wget is working perfectly.
>
> Are you trying to have wget figure out where the asp file is pointing=
 you to
> download?
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
