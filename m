From: =?UTF-8?Q?Micha=C5=82_Nazarewicz?= <mina86@tlen.pl>
Subject: Re: Manipulating Environment Variables of an Already running process
Date: Wed, 13 Oct 2010 23:01:21 +0200
Message-ID: <AANLkTimVHxjNpPQmpeL5WmQ-kCq-+kS0Sg2q+31C1L92@mail.gmail.com>
References: <AANLkTikXvokjr9NGRRpPRQg0ci6wv+QCytR5_07x+Sag@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:sender:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type;
        bh=KzKBdwCfwp1vs5NSP2M5JqW3tPDtoeUATVzmc/nQAeQ=;
        b=p8GoJa85S+bANhyyH/1huZg2b3vs/gxhWh/utTE8WyFkzTtTJkLWELpWSbDVceQNI4
         yqScy+XG78YBiKsQ6Ys2EeOwviyJC7pYxhXqZUiFaPR1GplM1ZDMOdPxlz3oLXmomuw2
         IjrT/OySIRvJlyRFkIpKZYca5omlpzyT1oxnE=
In-Reply-To: <AANLkTikXvokjr9NGRRpPRQg0ci6wv+QCytR5_07x+Sag@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hatem Nassrat <hnassrat@gmail.com>
Cc: linux-newbie@vger.kernel.org

2010/10/12 Hatem Nassrat <hnassrat@gmail.com>:
> Is it possible to, manipulate an environment variables of an already
> running process (using a current linux distro, and not a self hacked
> kernel)?
>
> A usecase, changing the PS1 environement var of an already running
> bash process from another bash process.

No. And even if it were possible you have no guarantees that the other
process will reread the environment variables.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
