From: "Jerry T" <linuxl1@hotmail.com>
Subject: Fwd: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 15:07:48 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <F81Vzajv1eXlMOHOpyk00001fe5@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I used slogin while trying connect through Cygwin. When that didn't work I 
downloaded Putty and tried the steps that you have listed. I am getting 
Connection Refused.

The OpenSSH daemon (sshd) is running because I can ssh to my own box.

I have no firewall up at this time and can ftp with no problem.


>From: Richard Adams <pa3gcu@zeelandnet.nl>
>Reply-To: pa3gcu@zeelandnet.nl
>To: "Jerry T" <linuxl1@hotmail.com>, linux-newbie@vger.kernel.org
>Subject: Re: ssh - connection refused
>Date: Sat, 13 Apr 2002 08:36:27 +0000
>
>On Saturday 13 April 2002 03:59, Jerry T wrote:
> > I have sshd running on a Redhat 7.2 box. Am able to telnet & ftp the box
> > from a win2000 box. To try ssh I set up the following: On the win2000 
>box
> > under Cygwin I ran "ssh-keygen -t rsa" to generate my key and used ftp 
>to
> > move the id_rsa.pub file to my Linux box. (I copied the file to
> > .ssh/authorized_keys). From Cygwin on win2000 I tried to use slogin to 
>get
> > to my Linux box but I get "Connection Refused."
> >
> > Also tried to rename authorized_keys to authorized_keys2.
> >
> > The sshd process starts up when I boot up.
> >
> > Also tried Putty instead of Cygwin. Same "connection refused" error.
> >
> > Any ideas on what I am missing?
> >
>
>You say you use 'slogin' however with putty.exe you type in the approriate
>hostname or IP# choose SSH from the 4 options below the hostname box and
>click on open at the bottom of putty's window, it will then attempt to
>connect to the remote host on port 22 which is the port ssh uses.
>
>On another note you should not need to copy any key files from/to anywhere,
>new keys should begernated upon a new connection if no key is found.
>
>--
>Regards Richard
>pa3gcu@zeelandnet.nl
>http://people.zeelandnet.nl/pa3gcu/
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs




_________________________________________________________________
Chat with friends online, try MSN Messenger: http://messenger.msn.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
