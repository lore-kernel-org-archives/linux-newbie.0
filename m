From: "Jerry T" <linuxl1@hotmail.com>
Subject: Fwd: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 15:18:54 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <F18sUZjEGuaYve5T7HV00000a68@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

The /etc/ssh/sshd_config file already had the lines in it that you have 
listed.

I have been able to successfully ssh from my Linux box back to itself. sshd 
seems to be running fine. (sshd appears in the list of services that you see 
during bootup, sshd comes on just before xinetd)


>From: Ray Olszewski <ray@comarre.com>
>To: "Jerry T" <linuxl1@hotmail.com>,linux-newbie@vger.kernel.org
>Subject: Re: ssh - connection refused
>Date: Sat, 13 Apr 2002 08:04:59 -0700
>
From what you wrote, it is difficult to pinpoint the problem. sshd may not
>be running correctly, or you may have made a mistake with the key 
>generation
>and installation. (Richard - he's talking here about a replacement for
>userid/password authentication, not a session key.)
>
>The "connection refused" message *usually* indicates that no daemon is
>running on the port in question. So the first thing to do is to verify that
>sshd really is running on the Linux host and is set up to listen on port 
>22.
>After that ...
>
>... I'd suggest taking it one step at a time. Set your sshd up to accept
>userid/password logins (see below), then see if you can use putty or
>whatever to connect that way. If you cannot, you have a problem with the
>actual running of sshd that you need to troubleshoot. If you can, then we
>can take a closer look at the key problem.
>
>To use userid/password authentication, change /etc/ssh/sshd_config (or
>wherever Red Hat puts this file) to include this line:
>
>         PasswordAuthentication yes
>
>
>BTW, a quick check for your problem is to verify that the config file
>includes this line:
>
>         RSAAuthentication yes
>
>(I'm assuming in all of this that RH uses OpenSSH, the most common ssh/sshd
>package on Linux systems. But there are others, and if you use a different
>one, the configuration details may be different.)
>
>Also check if the Linux host can start an ssh session to itself (as
>localhost -OR- as its hostname). If it can, we might suspect some Windows
>weirdness. (For example, the RSA key still needs userids that match at both
>ends, and I'm a bit hazy about how putty and the CygWin stuff provide the
>userid portion of the authentication.)
>
>At 03:59 AM 4/13/02 +0000, Jerry T wrote:
> >
> >
> >
> >
> >I have sshd running on a Redhat 7.2 box. Am able to telnet & ftp the box
> >from a win2000 box. To try ssh I set up the following: On the win2000 box
> >under Cygwin I ran "ssh-keygen -t rsa" to generate my key and used ftp to
> >move the id_rsa.pub file to my Linux box. (I copied the file to
> >.ssh/authorized_keys). From Cygwin on win2000 I tried to use slogin to 
>get
> >to my Linux box but I get "Connection Refused."
> >
> >Also tried to rename authorized_keys to authorized_keys2.
> >
> >The sshd process starts up when I boot up.
> >
> >Also tried Putty instead of Cygwin. Same "connection refused" error.
> >
> >Any ideas on what I am missing?
>
>
>
>--
>------------------------------------"Never tell me the odds!"---
>Ray Olszewski                                        -- Han Solo
>Palo Alto, CA           	 	         ray@comarre.com
>----------------------------------------------------------------
>




_________________________________________________________________
Chat with friends online, try MSN Messenger: http://messenger.msn.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
