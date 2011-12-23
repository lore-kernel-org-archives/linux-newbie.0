From: Cyril Roelandt <tipecaml@gmail.com>
Subject: Re: Fix files with checkpatch errors/warnings
Date: Fri, 23 Dec 2011 02:33:04 +0100
Message-ID: <4EF3DA50.80709@gmail.com>
References: <CAPbJ=B=KyJ4vM8iTT+K7xie3z13q5_7tj1mMqMAxXEh+XTQFXA@mail.gmail.com> <CAPbJ=BnAn6TfK9rFdVCSzcZizJOucUyJx0FfC03RYwH_zq-uJQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=csKUyYobDCIq1S83Nzv72v7/i9K2OjB+bmFuk1RoBHc=;
        b=ESrgFysJ2lnH7vUW5NfOip0KTCb2pbDr0rQQbh4w1rcnZWUpXyK6ojfB1m4tQM/B7M
         rrpYfRPI7fYipCTEOFJO4iZHxHbXoId8vJ1T5Y5I6rmHJsDauOlFaa53Fr72Gl4Gs06Z
         +uNlnESGvCkigyb5HGFgIwilrGf02gAtuaGlc=
In-Reply-To: <CAPbJ=BnAn6TfK9rFdVCSzcZizJOucUyJx0FfC03RYwH_zq-uJQ@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Alejandro del Rio <scasbyte@gmail.com>
Cc: linux-newbie@vger.kernel.org

On 12/22/2011 01:49 AM, Alejandro del Rio wrote:
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
> And finally, if I do so, to who should I show this fixes?

Maybe you could help the Kernel Janitors :

http://kernelnewbies.org/KernelJanitors
http://vger.kernel.org/vger-lists.html#kernel-janitors

They "go through the linux kernel sources, doing code reviews, fixing up
unmaintained code and doing other cleanups and API conversion."

Cyril.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
