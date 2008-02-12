From: "Rodrigo Rubira Branco (BSDaemon)" <rodrigo@kernelhacking.com>
Subject: Re: sysctl_ip_default_ttl is not exported in 2.6
Date: Tue, 12 Feb 2008 10:05:44 -0000
Message-ID: <20080212120544.7CCBD8BD97@mail.fjaunet.com.br>
Reply-To: "Rodrigo Rubira Branco (BSDaemon)" <rodrigo@kernelhacking.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, "murtuja_bharmal@yahoo.com"@fjaunet.com.br

ip_options_compile is not static ;)

I think you can use:
dst_metric(nskb->dst, RTAX_HOPLIMIT);

To replace the sysctl_ip_default_ttl value...

Please, let me know if it works for you.


cya,


Rodrigo (BSDaemon).

--
http://www.kernelhacking.com/rodrigo

Kernel Hacking: If i really know, i can hack

GPG KeyID: 1FCEDEA1


--------- Mensagem Original --------
De: murtuja bharmal <murtuja_bharmal@yahoo.com>
Para: linux-newbie@vger.kernel.org <linux-newbie@vger.kernel.org>
Assunto: sysctl_ip_default_ttl is not exported in 2.6
Data: 12/02/08 08:41

>
> Hello,
>
> I m doing porting of kernel module from 2.4 to 2.6
> kernel, during the porting I came to know some of the
> Exported Symbol in 2.4, is now static in 2.6, which
> our kernel module is using.
>
> Like
> sysctl_ip_default_ttl
> ip_options_compile
>
> Following is the reference link
> http://lists.linuxcoding.com/kernel/2005-q2/msg17865.html
>
> Can anyone please suggest a possible solution for the
> same.
> Should I need to Export These kernel symbols again in
> linux 2.6 kernel code.
>
> Murtuja
>
>
>
>       Why delete messages? Unlimited storage is just a click away. Go to
http://help.yahoo.com/l/in/yahoo/mail/yahoomail/tools/tools-08.html
> -
> To unsubscribe from this list: send the line &quot;unsubscribe
linux-newbie&quot; in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
>
>
>
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
