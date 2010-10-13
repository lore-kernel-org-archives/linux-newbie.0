From: =?UTF-8?Q?Micha=C5=82_Nazarewicz?= <mina86@tlen.pl>
Subject: Re: Manipulating Environment Variables of an Already running process
Date: Wed, 13 Oct 2010 23:29:05 +0200
Message-ID: <AANLkTinp9PaVmzbRf-EJvB8+EtNGK8JCib=t9G5b0G2O@mail.gmail.com>
References: <AANLkTikXvokjr9NGRRpPRQg0ci6wv+QCytR5_07x+Sag@mail.gmail.com>
	<AANLkTimVHxjNpPQmpeL5WmQ-kCq-+kS0Sg2q+31C1L92@mail.gmail.com>
	<AANLkTinWeMeMWKRG9OvfkaLTxSN1kmFZ3qFzRzMnjWuy@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:sender:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=X8VzwTyVdjc9rSOIwGWC/hSWGluE5pTkk1OjYOFcsTU=;
        b=qOJGlqHL5G1jY69fJ4fPpUXoBk/1Wz+Jgvpa+D+W2yA+34eJWntyZc9bPhqmIW41H6
         C9B0jCUsfNBP5knLREgizS3QFPT/LY/nuRPn+41NZotxq8wEFdxLMk+/ukNPrve7bNCT
         5kLiTFXxPyE/loszP5ORO4Gl67U+CJ1rD0/w4=
In-Reply-To: <AANLkTinWeMeMWKRG9OvfkaLTxSN1kmFZ3qFzRzMnjWuy@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Hatem Nassrat <hnassrat@gmail.com>
Cc: linux-newbie@vger.kernel.org

W dniu 13 pa=C5=BAdziernika 2010 23:23 u=C5=BCytkownik Hatem Nassrat
<hnassrat@gmail.com> napisa=C5=82:
> 2010/10/13 Micha=C5=82 Nazarewicz <mina86@tlen.pl>
>> 2010/10/12 Hatem Nassrat <hnassrat@gmail.com>:
>> > A usecase, changing the PS1 environement var of an already running
>> > bash process from another bash process.
>>
>> No. And even if it were possible you have no guarantees that the oth=
er
>> process will reread the environment variables.
>
> Well the use case I gave is one where the env var gets reread for eac=
h
> new prompt.

I wouldn't bet on it without looking at bash's code. Bash could just
copy PS1 to some
internal structures and read it rather than environment variable.

> Direct memory manipulation seems to be the only way I can think of,
> but I do not think this is possible in userland. I was thinking maybe
> there is a hidden sys call that might make this possible, like a very
> hacky and unstable IPC :), yeah there is no sane reason for such a
> feature but it would be cool to know if its at all possible.

No such thing. Process's memory is its own (unless process wants to sha=
re it).
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
