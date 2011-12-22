From: Javier Martinez Canillas <martinez.javier@gmail.com>
Subject: Re: Fix files with checkpatch errors/warnings
Date: Thu, 22 Dec 2011 17:56:54 +0100
Message-ID: <CAAwP0s3cF3ydYx4FgUKOppk52yzQq-mPMXsKJxxP9OT=ZsE6EQ@mail.gmail.com>
References: <CAPbJ=B=KyJ4vM8iTT+K7xie3z13q5_7tj1mMqMAxXEh+XTQFXA@mail.gmail.com>
 <CAPbJ=BnAn6TfK9rFdVCSzcZizJOucUyJx0FfC03RYwH_zq-uJQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type:content-transfer-encoding;
        bh=6GmCDQ+G72AUR/eDUBfVfxCqO5EAi5sgevKrc4BPwfU=;
        b=wL0NkxU9muK+5vmnYDTUmFL7F68KrBcU3qnggboS1qNTcEyHFUmVfJNfd6T2ZsQGmc
         Nw6Vc7fz8hxka/nSMA7o/quKXAbDlHiupn3UejooxkgHxv+VhcyZvsUP143Lj0qGkZXZ
         hvhuyOVtNfvDpnUU7SPhpPNds2WTy4Khl7sGU=
In-Reply-To: <CAPbJ=BnAn6TfK9rFdVCSzcZizJOucUyJx0FfC03RYwH_zq-uJQ@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: Alejandro del Rio <scasbyte@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Thu, Dec 22, 2011 at 1:49 AM, Alejandro del Rio <scasbyte@gmail.com>=
 wrote:
> Hi all,
>
> I'm completely new to linux kernel development and I would like to
> make a very first contribution by "cleaning" some files. I noticed
> that the script checkpatch.pl (inside scripts/ folder) report lots of
> style errors on some drivers.
> For example try running ./scripts/checkpatch.pl --file
> drivers/video/*, you will notice that most of the files contain style
> issues.
>
> My questions are: Is people actively fixing this? Maybe they are not
> very interested on fixing this typos... Otherwise, could I contribute
> by submitting patches on this?

Hi Alejandro,

The best to figure out is sending the patches ;-)

> And finally, if I do so, to who should I show this fixes?
>

Once you have the patch. You can use ./scripts/get_maintainer.pl to
know who is expecting to receive your patch.

It is only a suggestion not something to follow strictly. Common sense
will tell you if you need to cc someone else or not.

Hope it helps,

--=20
Javier Mart=C3=ADnez Canillas
(+34) 682 39 81 69
Barcelona, Spain
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
