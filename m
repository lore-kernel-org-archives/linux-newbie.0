From: Adam Luchjenbroers <Adam@Luchjenbroers.com> (by way of Adam
	Luchjenbroers <Adam@Luchjenbroers.com>)
Subject: Re: Networking issue
Date: Fri, 3 Jan 2003 14:57:35 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301031457.35741.Adam@Luchjenbroers.com>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> 1. What system is gtelnet running on?

Workstation, running mandrake 9.0

> 3. From the Mandrake system, can you ssh to localhost (or to 127.0.0.1)? If
> not, EXACTLY what error does the ssh client report? (If you don't have an
> ssh client installed, see what "telnet localhost 22" does. It should
> display the banner from the sshd daemon.)

Its a very minimal install on the server, it has neither ssh or telnet
 clients

> 4. When gtelnet "then fails", does it display any sort of error message? If
> you are interpreting no response as a failure, how long are you waiting?

I wait until the status display goes from displaying "connected" until it
 goes to "not connected"

tried to connect using the ssh command, got this error

ssh_exchange_identification: Connection closed by remote host

> 5. In the ifconfig output you posted here, there are packet counts for RX
> and TX packets on each interface. After you try and fail to ssh from the
> wworkstation to the server, are the server's eth0 packet counts higher? If
> ssh'ing to localhost on the server also fails, the same question for its lo
> interface.

RX/TX values do increase.

> 6. I'm assuming you are running sshd as a daemon and not through inetd. But
> let's check the basics here. So ...
>
>          A. If you do a "ps ax | grep ssh", does sshd show up on the
> process list?

yes

>          B. If you do a "netstat -nl", does port 22 show up on the list? It
> will be a line something like this:
>          tcp        0      0 0.0.0.0:22              0.0.0.0:*   LISTEN

yes

> 7. After a failure, does sshd log anything? I'm not sure how Mandrake keeps
> its logs, but something like this should work (as root):
>
>          grep sshd /var/log/*

log files are stored there, but can't tell which one belongs to ssh

> 8. Finally, do you have anything in your configuration that blocks ssh
> connects from this workstation? Are there any relevant entries in
> /etc/hosts.deny?

no

> There are probably more things to check, but this set is a good start.

On another note, I corrected the system clock on tthe server (it thought it
was 1998) now one of my user accounts has expired, how do I reactiveate it.

--
"You can bring any calculator you like to the midterm, as long as it doesn't
dim the lights when you turn it on." - Hepler, Systems Design 182

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
