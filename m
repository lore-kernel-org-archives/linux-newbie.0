From: caszonyi@rdslink.ro
Subject: Re: setgid: Operation not permitted
Date: Mon, 29 Dec 2003 22:44:55 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0312292241001.619@grinch.ro>
References: <200312270820.hBR8Ked01366@skyinet.net> <3FEE5A53.4010401@sancharnet.in>
 <3FF02337.D6169DC9@gelm.net>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FF02337.D6169DC9@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: chuck gelm net <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 29 Dec 2003, chuck gelm net wrote:

> Howdy:
>
>  I broke something on my file server and now I can no longer
> 'su' (root) remotely.  When I try I get this error:
>
> setgid: Operation not permitted
>

su must be setuid root to operate
you must issue the following command as root:
chmod 4755 /bin/su

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
