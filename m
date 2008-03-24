From: "Rodrigo Rubira Branco (BSDaemon)" <rodrigo@kernelhacking.com>
Subject: Re: Detect Stack Overflows?
Date: Mon, 24 Mar 2008 5:43:46 -0000
Message-ID: <20080324084346.3FEC98BD9B@mail.fjaunet.com.br>
Reply-To: "Rodrigo Rubira Branco (BSDaemon)" <rodrigo@kernelhacking.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat.Jain@infogain.com, "kernelnewbies@nl.linux.org"@fjaunet.com.br, "linux-newbie@vger.kernel.org"@fjaunet.com.br

Rajat,

There are some approaches to do that, most of them try to prevent in some
way the use of stack overflows to get code execution.

pax and exec-shield are two examples...

Also, I saw some projects related to create forge the syscall interruption
to analyze the program flow.

If you want to know something more specific, will be easier to give a
consistent reply for your question.



cya,


Rodrigo (BSDaemon).

--
http://www.kernelhacking.com/rodrigo

Kernel Hacking: If i really know, i can hack

GPG KeyID: 1FCEDEA1


--------- Mensagem Original --------
De: Rajat Jain <Rajat.Jain@infogain.com>
Para: kernelnewbies@nl.linux.org <kernelnewbies@nl.linux.org>,
linux-newbie@vger.kernel.org <linux-newbie@vger.kernel.org>
Assunto: Detect Stack Overflows?
Data: 24/03/08 05:24

>
>
> Hi,
>
> Is there a way to detect stack overflows in the kernel?
>
> I mean, apart from &quot;You should use it sparingly&quot; suggestions
:-).
>
> Thanks,
>
> Rajat
>
> --
> To unsubscribe from this list: send the line &quot;unsubscribe
linux-newbie&quot; in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
>
>
>

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
