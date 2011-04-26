From: Leo Prasath <leo.prasath@gmail.com>
Subject: Re: Viewing dmesg output after crash
Date: Tue, 26 Apr 2011 13:36:39 -0500
Message-ID: <BANLkTino6NQLP3Cn-UPaCUPNrEVeqdcdew@mail.gmail.com>
References: <4DB694E5.8000500@st.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type:content-transfer-encoding;
        bh=wEbm4FknFPsvjPo7TcUoXRRSrDbAAB0s/2K8NPv56pQ=;
        b=ppSvTG2wChv7EBtgPmiH/qZUzKm1azSe1u82CnZWSY+nGRmgOSWxdNZNr7dBmA1IKU
         ehkEcQSpbeEwAz3MoJ5wK+P+QhOmo1F1ckj4NufR4iGEsb31bHQ//me8BvMgAQv3jAdr
         ELeZm212ilq+gD7qP6+d3pVgX4lrZOnhzlwfQ=
In-Reply-To: <4DB694E5.8000500@st.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Amit Virdi <amit.virdi@st.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

I use netconsole which sends the kernel ring buffer updates to a
remote machine through UDP ..
And then you can use netcat command to dump the remote udp logs to a
file and view it.
I have never missed any log messages using this approach..

http://www.kernel.org/doc/Documentation/networking/netconsole.txt

My commands are :

in the client machine ( which crashes ):

modprobe netconsole netconsole=3D@/eth0,@128.105.102.217/

where the ip address "128.105.102.217" is the remote machine's ip
address. ( which captures logs )

in the remote machine I run the command :

netcat -u -l -p 6666 | tee crashlog

also, iptables --flush helped me remove the udp packet filters which
sometimes can filter out the netconsole udp messages.

thanks,
-Leo



On Tue, Apr 26, 2011 at 4:48 AM, Amit Virdi <amit.virdi@st.com> wrote:
> Hi
>
> I'm debugging a system crash. I got OOPS message and found the buggy =
piece
> of code. I wish I had the output of dmesg just before the crash. In o=
ther
> words, I want to view the last messages collected by the ring buffer =
used by
> dmesg.
>
> The log messages are certainly being appended to some logfile in the =
RAM.
> How can I find the address where the logfile is being created or how =
can I
> extract the logfile?
>
> Thanks n Regards
> Amit Virdi
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
