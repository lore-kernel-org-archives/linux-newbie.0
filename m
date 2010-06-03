From: Joel Fernandes <agnel.joel@gmail.com>
Subject: Re: /proc/${PID}/cmdline parsing
Date: Thu, 3 Jun 2010 14:49:35 +0530
Message-ID: <20100603091935.GA15493@joel-laptop>
References: <20100603092026.4807b1bb@pbmiha.malagasy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=Q89MLG7XzDXAwLnD61eKYskrN2PhyNjGgpurs0mhsNs=;
        b=ffSATRC7WlINmOArrFPaYuCi7YEt57j/i2YF8qaBDxmxXI7aNtHgqBMIEoEoIevvSA
         9KQYtUCndHr/EhhnBMkQ0PNFYa7iENpXkBfmOg8wtTR2BcSA45LQS1M72Zk3nrmN9GPs
         hNwiyfqSc0FibOBYAFDPRV5Y8TfVvyjh4DmKI=
Content-Disposition: inline
In-Reply-To: <20100603092026.4807b1bb@pbmiha.malagasy.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mihamina Rakotomandimby <mihamina@gulfsat.mg>
Cc: linux-newbie@vger.kernel.org

On Thu, Jun 03, 2010 at 09:20:25AM +0300, Mihamina Rakotomandimby wrote:
> Manao ahoana, Hello, Bonjour,
> 
> If I launch a 
>  $ watch find / -type f -name 'toto'
> (it's a useless command just for the example)
> and then I get the PID of this.

PID of what? watch or find?

> 
> When I 
>  $ cat /proc/${PID}/cmdline
>  watchfind/-typef-nametoto
> 
> Yes, it's the command line, but I would like to parse it, in order to
> display the launched executable + its arguments.
> 
> How to parse it?
> 

Could you be a bit more clear with your question?

take care,
Joel

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
