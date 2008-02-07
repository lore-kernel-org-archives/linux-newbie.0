From: "Mulyadi Santosa" <mulyadi.santosa@gmail.com>
Subject: Re: MIssed interrupts
Date: Thu, 7 Feb 2008 22:50:16 +0700
Message-ID: <f284c33d0802070750n1bc438c1y85c974bbf53a8242@mail.gmail.com>
References: <7783925d0802062112r4637c674qf2d1dd356cc0923e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=LI+H2jO4OxdRcRj2Wrv9dNvoe8w991BHGrOmv/LdmcQ=;
        b=DYVMqZsFwqLJ6904u6ljbjmYyF8BNw1unuExpX2qS/FGWZsmpKhveH6k3/Xk2qDsyPnRCYXdZQjcKurwBa6KxpFc/ors9Y+9/nNyHq52F1M+tq68aOOBAod2OjCQkgW/UNUZSeqU72/Yps6R1nmEWNXDKsaNrPruaFfHd/jcNnM=
In-Reply-To: <7783925d0802062112r4637c674qf2d1dd356cc0923e@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi....

On Feb 7, 2008 12:12 PM, Rick Brown <rick.brown.3@gmail.com> wrote:
> Hi,
>
> If a particual IRQ line has been disabled (disable_irq()), what
> happens if the device on that IRQ line generates interrupt? Does it
> result in missed interrupt?

AFAIK at the time it's in disabled state...yes it will be missed. But
once you enabled it again.... missing interrupts will be received. It
is different when interrupt is masked...it will be simply ignored.

regards.

Mulyadi.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
