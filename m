From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Telnet
Date: Thu, 23 May 2002 16:06:27 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0205231606271X.27213@unix.pa3gcu>
References: <200205231144.g4NBiMe31180@mail.orcon.net.nz>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205231144.g4NBiMe31180@mail.orcon.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: cr <cr@orcon.net.nz>, linux-newbie@vger.kernel.org

On Thursday 23 May 2002 13:02, cr wrote:
> This probably sounds ridiculous to you all, but what's Telnet (as in
> "Telnet to www.goodstuff.org")   and what application (in Gnome or KDE?)
> could I use to do it?    I've used browsers/ftp/mailreaders/newsgroups but
> so far as I know  never 'telnetted'.

See 'man telnet'
That will explain the details.
Advise, dont use it as it is insecure, use ssh instead.

Application is 'telnet' and 'ssh'
telnet remotehost 
ssh remotehost

One can define a port to telnet too if one knows that a remote host is 
listning on another port but the default wich is 23 for telnet and 22 for ssh.

>
> chris

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
