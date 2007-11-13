From: "Rodrigo Rubira Branco (BSDaemon)" <rodrigo@kernelhacking.com>
Subject: Re: kernel module
Date: Tue, 13 Nov 2007 10:33:18 -0000
Message-ID: <20071113123318.7F5588BFD3@mail.fjaunet.com.br>
Reply-To: "Rodrigo Rubira Branco (BSDaemon)" <rodrigo@kernelhacking.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Export the symbol in the kernel and then hook it in your module ;)


cya,


Rodrigo (BSDaemon).

--
http://www.kernelhacking.com/rodrigo

Kernel Hacking: If i really know, i can hack

GPG KeyID: 1FCEDEA1


--------- Mensagem Original --------
De: Rajeh kuri <rajeshkuri@gmail.com>
Para: Kristof Provost <Kristof@provost-engineering.be>
C=F3pia: linux-newbie@vger.kernel.org
Assunto: Re: kernel module
Data: 13/11/07 09:13

>
> Well it means there is no way to achieve compiled kernel calling
> compiled kernel module. OR The direction of communication from kernel
> to kernel module can not be possible?
>
> I believe there must be a way around to get this work.
> If i find it will update here.
>
> --Regards,
> rajesh
> On Nov 13, 2007 3:10 PM, Kristof Provost
&lt;Kristof@provost-engineering.be&gt; wrote:
> &gt; Hi,
> &gt;
> &gt; On 2007-11-12 19:29:17 (+0530), Rajeh kuri
&lt;rajeshkuri@gmail.com&gt; wrote:
> &gt; &gt; Hi,
> &gt; &gt;
> &gt; &gt; Is there any ways to invoke/call the function (kernel modul=
e
> &gt; &gt; functions) from compiled base kernel. Well that statement s=
ounds
> &gt; &gt; strange.
> &gt; &gt;
> &gt; &gt; I will try to simplify that statement, with problem I faced=
=2E
> &gt; &gt; I have written a kernel module but it is of no use till I c=
all
one of
> &gt; &gt; its function from kernel, and hence i modified the kernel s=
ource
to
> &gt; &gt; call this function and then compiled the kernel. Now the pr=
oblem
is
> &gt; &gt; obliviously 'linker cannot resolve the symbol. Because I'm
trying to
> &gt; &gt; call the function which is available only after I insert th=
e
kernel
> &gt; &gt; module.
> &gt; The problem is that you're calling code compiled as a module fro=
m
code
> &gt; compiled into the kernel. That means you either compile both par=
ts as
a
> &gt; module, or compile both of them into the kernel.
> &gt; Kbuild/Kconfig has supports this type of dependency because it's
quite
> &gt; common.
> &gt;
> &gt; Kristof
> &gt;
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

________________________________________________
Message sent using UebiMiau 2.7.2

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
