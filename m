From: chuck gelm net <chuck@gelm.net>
Subject: Re: setgid: Operation not permitted
Date: Mon, 29 Dec 2003 19:40:15 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FF0C96F.21A4DF7A@gelm.net>
References: <200312270820.hBR8Ked01366@skyinet.net>
	 <3FEE5A53.4010401@sancharnet.in> <5.1.0.14.1.20031229081228.01f1b6a8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

We found it.

Thanks, Ray & caszonyi.

 I think I accidentally issued this command

chmod -R 775 *

 while in the directory /bin instead of
in the directory /hde3, because 'ls -l su' returned
-rwxrwxr-x root root su  on the file server, while I get
-rws--x--x root root su  on the web server (kernel-2.2.19).

 I then cd'd to /bin and issued

chmod 4711 su

 Now 'ls -l su' returns

-rws--x--x root root su

 and I can now logon remotely and 'su root'.

:-)

 Now, I suppose that I have many files in /bin incorrectly set to 
-rwxrwxr-x instead of
-rws--x--x or whatever they should be.

:-|

Regards, Chuck

Ray Olszewski wrote:
> 
> At 07:51 AM 12/29/2003 -0500, chuck gelm net wrote:
> >Howdy:
> >
> >  I broke something on my file server and now I can no longer
> >'su' (root) remotely.  When I try I get this error:
> >
> >setgid: Operation not permitted
> >
> >  Often I logged on remotely and issued
> >
> >su
> >cd /hde3
> >chmod -R 775 *
> >chgrp -R users
<snip>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
