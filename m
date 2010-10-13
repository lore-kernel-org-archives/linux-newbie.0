From: Hatem Nassrat <hnassrat@gmail.com>
Subject: Re: Manipulating Environment Variables of an Already running process
Date: Wed, 13 Oct 2010 18:23:30 -0300
Message-ID: <AANLkTinWeMeMWKRG9OvfkaLTxSN1kmFZ3qFzRzMnjWuy@mail.gmail.com>
References: <AANLkTikXvokjr9NGRRpPRQg0ci6wv+QCytR5_07x+Sag@mail.gmail.com> <AANLkTimVHxjNpPQmpeL5WmQ-kCq-+kS0Sg2q+31C1L92@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:in-reply-to
         :references:from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=3yTFk6OCkoEMat19SHA4AXdYzwTRpQ30gnjil7c1Aw8=;
        b=oyYDgPq3++fhVpTBqjH/YtNWzdehWy2AUOL/GrRzPxegB1wmJcBjeQNMw9PRkOKRDp
         NxM6dy1x1Rw176jz5SF/U0nJYSIBuXhustSMWFAX6+Eq34OjdD28IbYFe/HF5jWMK3Ef
         gFsq6napw0o+QU472nQKma6KceouKfXBgDpew=
In-Reply-To: <AANLkTimVHxjNpPQmpeL5WmQ-kCq-+kS0Sg2q+31C1L92@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: =?ISO-8859-2?Q?Micha=B3_Nazarewicz?= <mina86@tlen.pl>
Cc: linux-newbie@vger.kernel.org

2010/10/13 Micha=C5=82 Nazarewicz <mina86@tlen.pl>
> 2010/10/12 Hatem Nassrat <hnassrat@gmail.com>:
> > A usecase, changing the PS1 environement var of an already running
> > bash process from another bash process.
>
> No. And even if it were possible you have no guarantees that the othe=
r
> process will reread the environment variables.

Well the use case I gave is one where the env var gets reread for each
new prompt.

Direct memory manipulation seems to be the only way I can think of,
but I do not think this is possible in userland. I was thinking maybe
there is a hidden sys call that might make this possible, like a very
hacky and unstable IPC :), yeah there is no sane reason for such a
feature but it would be cool to know if its at all possible.

--
Hatem Nassrat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
