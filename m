From: "Ciprian Dorin, Craciun" <ciprian.craciun@gmail.com>
Subject: Re: [Qemu-devel] Transforming stdin and stdout pair into a socket
Date: Mon, 11 May 2009 16:32:26 +0300
Message-ID: <8e04b5820905110632q1a3b9ad4u49d4f3208d994755@mail.gmail.com>
References: <8e04b5820905101119u39ae84bfp1bae24be6e057086@mail.gmail.com>
	 <4A0813D6.3050609@codemonkey.ws>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=mdPuc5Hb0rMpsmz0+EqgLCGQgan6Y+2I0uQOxNHtZtI=;
        b=cM7MuE4KQ3hV7YVF6AdnEMhNENykThkhSomcoeIz+5Md5Pnlv4ncW3QLG7Y9RNylky
         BnThnn8P6kU3FWE8JdCstP9CEZ5yOHMvi/M0u6Fp0c4Q3OiLxaBXVzQzHv9rwEuFM9q2
         liO+mJO2VdUxRumihZZaClrxTOU0Zz34w0Vs0=
In-Reply-To: <4A0813D6.3050609@codemonkey.ws>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Anthony Liguori <anthony@codemonkey.ws>
Cc: linux-newbie@vger.kernel.org, nbd-general@lists.sourceforge.net, qemu-devel@nongnu.org

On Mon, May 11, 2009 at 3:02 PM, Anthony Liguori <anthony@codemonkey.ws=
> wrote:
> Ciprian Dorin, Craciun wrote:
>>
>> =C2=A0 =C2=A0Hello all!
>>
>> =C2=A0 =C2=A0Today I've played around with NBD (Network Block Disk),=
 and
>> qemu-nbd (a NBD client that exports QEMU disks as NBD's).
>>
>> =C2=A0 =C2=A0My problem is the following: both NBD kernel module and=
 qemu-nbd
>> implementation expect to use a socket in order to communicate.
>> =C2=A0 =C2=A0This means that in order to securely tunnel the connect=
ion over
>> SSH (OpenSSH), I need an intermediary process that creates a socket
>> and forwards all input / output between this socket and stdin / stdo=
ut
>> (which are in fact pipes received from OpenSSH).
>>
>> =C2=A0 =C2=A0My question is: can I somehow make the pair of stdin / =
stdout seem
>> as a socket to the Linux syscalls (read and write)? (I would have to
>> make stdin / stdout pair look like a single file descriptor.) (This
>> would eliminate the intermediate process that just pipes data, and
>> thus reduce the overhead.)
>>
>
> Something like socat should to do the trick.
>
> For instance, if you have qemu-nbd on localhost:1025:
>
> ssh -l user hostname.com socat stdio tcp:localhost:1025
>
> Alternative, you could just do ssh based port forwarding. =C2=A0For i=
nstance:
>
> ssh -l user -L 1025:localhost:1025 hostname.com
>
> And then connect locally with nbd-client
>
> Regards,
>
> Anthony Liguori

    I've seen socat, and I could use it as you described. My only
objection to this solution is that there is an unneeded process in the
middle that just pipes data around...

   (Instead of socat, I think it would be more efficient to just write
a simple application that uses the "new" Linux syscall "splice" that
I've just found by mistake yesterday...)

    About the other solution with SSH port forwarding, I don't really
like it, because it has some security implications: any process on the
local machine can access the block device... (I know I can use
iptables to actually restrict the process.) Still on the same topic I
would have liked something like UNIX domain socket forwarding for SSH.
(Which is available as a patch but on top of an older version...)

    Ciprian.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
