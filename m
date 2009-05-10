From: "Ciprian Dorin, Craciun" <ciprian.craciun@gmail.com>
Subject: Transforming stdin and stdout pair into a socket
Date: Sun, 10 May 2009 21:19:36 +0300
Message-ID: <8e04b5820905101119u39ae84bfp1bae24be6e057086@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=KoIoq5jtnf2X+aSFRAtpTdW7v/TQV+yE8Y5jxRonNyU=;
        b=oyHAjgdcaQDo4EfV34Odom8yMJAcs+ebkwCDzoLqH3uN7Ft1QBqkSN1Ly26euiW5qf
         lmI/rc/nXzK55J9hE/ThfNwUm+LN4QaFl6dXqsfON09jZSjryKT0Ywiq8SbBcYRIHDes
         Qpmxr3DXy8i0fqZa9IxflBqP7kqraw58UJd0M=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: qemu-devel@nongnu.org, nbd-general@lists.sourceforge.net

    Hello all!

    Today I've played around with NBD (Network Block Disk), and
qemu-nbd (a NBD client that exports QEMU disks as NBD's).

    My problem is the following: both NBD kernel module and qemu-nbd
implementation expect to use a socket in order to communicate.
    This means that in order to securely tunnel the connection over
SSH (OpenSSH), I need an intermediary process that creates a socket
and forwards all input / output between this socket and stdin / stdout
(which are in fact pipes received from OpenSSH).

    My question is: can I somehow make the pair of stdin / stdout seem
as a socket to the Linux syscalls (read and write)? (I would have to
make stdin / stdout pair look like a single file descriptor.) (This
would eliminate the intermediate process that just pipes data, and
thus reduce the overhead.)

    Just to be clear: I know how to trick an application to have it's
stdin and stdout be an opened socket (by using dup syscall). But in
this case I need to trick the Linux kernel into thinking that stdin /
stdout pair is a socket (or a single file descriptor).

    Thank you,
    Ciprian Craciun.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
