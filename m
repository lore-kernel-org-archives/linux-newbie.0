From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: problems with ALSA
Date: Fri, 13 Dec 2002 07:00:39 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02121307003901.00388@unix.pa3gcu>
References: <200212110750.08044.r4mz3z@yahoo.es>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212110750.08044.r4mz3z@yahoo.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: r4mz3z <r4mz3z@yahoo.es>, linux-newbie@vger.kernel.org

On Wednesday 11 December 2002 07:49, r4mz3z wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> Hi friends...
>   I have a VIA sound card and I've supossed ALSA drivers can give sound...
> I follow the instructions but when (been root) run modprobe receive an
> error... just like this:

> - -------------------------------------------------------------
> [root@localhost root]# modprobe snd-via82xx
> /lib/modules/.../snd.o: unresolved symbol __get_free_pages_Rsmp_4784e424
> /lib/modules/.../snd.o: unresolved symbol try_inc_mod_count_Rsmp_e6105b23
> /lib/modules/2.4.18-3/kernel/drivers/sound/snd.o: insmod snd-via82xx failed
> [root@localhost root]#
> - -------------------------------------------------------------
>   The path complete is: /lib/modules/2.4.18-3/kernel/drivers/sound/
>   I'm using RedHat 7.3.
>

Nowhere do you mention which version of alsa you are using, you need at least 
0.9.0rc5 which can be obtained at;
http://www.alsa-project.org/

I had to use the above version to get my via8233 Southbridge working.


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
