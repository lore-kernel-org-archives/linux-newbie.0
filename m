From: Eric Curtin <ericcurtin17@gmail.com>
Subject: Re: How to find bugs to fix
Date: Thu, 1 Feb 2018 00:50:10 +0000
Message-ID: <CANpvso6T+SNqq1Aem0c05QZVoFHGNtmJ1sysxEBD-GRxnC-hBA@mail.gmail.com>
References: <20180201002258.GA6807@u.boisestate.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=3cEdFsqAcCCHB2CGlrDiSBaAn1kZTxTtazpGNMF0IL4=;
        b=akD8VduguAydlVwsUyBUUejEVbjTpDOSOpJRF3IfbuOaU159wWdXNwDSv99X041GnM
         xBpT54hlMyuVb60FYU8gWvHleBBNNLN+j6tt2Vdr/7jkxb52PJPKZbCdcP4c4i2PsIaG
         v+GaqQQsTXtr8tClY+82vLUT8Ij2L1ShuEbpXl9k8cMZQ+7Q+wpVZ1KG05dooqAqidTM
         dwuC5DtdHytYB3VnJWDkjqxAk3/in7dWVvFPpW9sYz8nhU1KSxaTLJF/sMSnu0joEym2
         p3yPjyG9eox+ekBaH++6OB5SlTuH8orjDD1lO0BboVMPRAhp6x8ywBNvVCHpNRe0+8gJ
         LCRQ==
In-Reply-To: <20180201002258.GA6807@u.boisestate.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Joshua Chamberlain <chamberlain.dev@gmail.com>
Cc: linux-newbie@vger.kernel.org

On 1 February 2018 at 00:23, Joshua Chamberlain
<chamberlain.dev@gmail.com> wrote:
>
> Howdy,
>
> I've been using Linux for years and I am interested in fixing bugs. I
> have been looking on https://bugzilla.kernel.org/ to try to find bugs,
> but it seems bugs are supposed to be reported in the mailing lists
> instead. This is making it difficult to find a simple bug I can fix.
>
> Do you guys have any advice on how to find bugs to work on?
>
> Thanks,
> -Josh
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

Hi Josh,

Sorry should have replied to your email in plaintext. Gmail Android client
defaulting to HTML. Anyway...

One way is to Install Linux on whatever hardware you have lying around at home
(not in a VM). Check that all your hardware works as expected, keyboard, mouse,
touchpad, brightness keys, USB devices, etc.

Check kernel logs for errors and other logging info. Or if any hardware doesn't
seem to behave right or is quirky, it's likely you may have found a bug or a
feature of your hardware that hasn't been implemented yet. That's one place to
start looking for bugs that you can test, reproduce and fix on your local setup.

Hope this helps!

Or you know, jump straight into the deep-end and write some mitigations for the
Spectre & Meltdown vunerabilities on all the various CPU architectures. The CPU
manufacturers would be greatful :)
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
