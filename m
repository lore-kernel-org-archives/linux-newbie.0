From: Anthony Liguori <anthony@codemonkey.ws>
Subject: Re: [Qemu-devel] Transforming stdin and stdout pair into a socket
Date: Mon, 11 May 2009 07:02:30 -0500
Message-ID: <4A0813D6.3050609@codemonkey.ws>
References: <8e04b5820905101119u39ae84bfp1bae24be6e057086@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <8e04b5820905101119u39ae84bfp1bae24be6e057086@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Ciprian Dorin, Craciun" <ciprian.craciun@gmail.com>
Cc: linux-newbie@vger.kernel.org, nbd-general@lists.sourceforge.net, qemu-devel@nongnu.org

Ciprian Dorin, Craciun wrote:
>     Hello all!
>
>     Today I've played around with NBD (Network Block Disk), and
> qemu-nbd (a NBD client that exports QEMU disks as NBD's).
>
>     My problem is the following: both NBD kernel module and qemu-nbd
> implementation expect to use a socket in order to communicate.
>     This means that in order to securely tunnel the connection over
> SSH (OpenSSH), I need an intermediary process that creates a socket
> and forwards all input / output between this socket and stdin / stdout
> (which are in fact pipes received from OpenSSH).
>
>     My question is: can I somehow make the pair of stdin / stdout seem
> as a socket to the Linux syscalls (read and write)? (I would have to
> make stdin / stdout pair look like a single file descriptor.) (This
> would eliminate the intermediate process that just pipes data, and
> thus reduce the overhead.)
>   

Something like socat should to do the trick.

For instance, if you have qemu-nbd on localhost:1025:

ssh -l user hostname.com socat stdio tcp:localhost:1025

Alternative, you could just do ssh based port forwarding.  For instance:

ssh -l user -L 1025:localhost:1025 hostname.com

And then connect locally with nbd-client

Regards,

Anthony Liguori
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
