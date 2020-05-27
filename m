From: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Subject: Re: newbie: submitting a driver patch the first time
Date: Wed, 27 May 2020 10:39:06 +0200
Message-ID: <b49ce0ddc3cbdf4cb1074b00dc02e3ee@kolabnow.com>
References: <c5e6a0e0-3825-723e-e791-f24c9d66a419@duagon.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
        message-id:references:in-reply-to:subject:subject:from:from:date
        :date:content-transfer-encoding:content-type:content-type
        :mime-version:received:received:received; s=dkim20160331; t=
        1590568748; x=1592383149; bh=AmXVhhWQoqU2s24fzDWUiRDKsUT1PKhniGV
        /KE8EhTQ=; b=OqhYodEie3fR7SyiLyGqB5P6viY+co6TO6S3QKIB6T2ThCrfUGM
        0ZETUz6nhNevfgf3PtBr1yzImOxzRevSpKyDpzntMsu1OJM8hDYQvTrFBFwZtbHT
        B4Qs7IOfn93v3QOtdICj4KeZiqdvRIP/6ItrSR5bOPkALWw47x5CuT6cC/EPxaox
        Mgf/CopJPTIODWHbAiCkqPkJvrjZJYgMTpxPK9OFg/4dZJmzVE6TQwQDryH1Le9Z
        RgbzGzeaMjs8BJ14WRRdlEIXCu8yLva94t7Uab7LNZ3QrL+N2YZuRS/+JoGirEKQ
        z6pUYTIQoSS63PlRbwVcFiUETrtKwbnGU97ibcrPZ8NPvZPfCDrZKkN9HLVGYzK7
        gd5675qHmXNisoxAS9rERIlMwDXUxCSid4P8o6oCTDeklVJ6e8KLncfaCDajnhFg
        yHSm22C10VXy57m4TFplfrWTykV 
In-Reply-To: <c5e6a0e0-3825-723e-e791-f24c9d66a419@duagon.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: =?UTF-8?Q?Gei=C3=9Fler=2C_Andreas?= <andreas.geissler@duagon.com>
Cc: linux-newbie@vger.kernel.org

> First question: Does it make sense to publish the driver at
> linux-newbie for a review before doing it on the actual mailing lists?

Hi Andreas,

This list is usually used to help newbies on specific problems, I think 
you will get better results (and faster too) by directly sending your 
RFC to the concerned maintainers.

Regards,

Hubert
