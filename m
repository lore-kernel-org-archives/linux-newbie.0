From: "Jerry T" <linuxl1@hotmail.com>
Subject: Fwd: Re: Fwd: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 16:06:11 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <F13pG1g86uudlYLDFut0001a3e0@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

What works:

(from Linux box logging to itself)

ssh <my IP address>

What does not work (from win2000):

Putty using <my IP address> as host and my Linux user name.
or
Cygwin - typing slogin <my ip address> -l <my linux userid>

***********

In all cases I only get a brief message saying "Connection Refused". (it 
does say that it is trying <my IP address> at Port 22. I am never prompted 
for a login or password.

I can FTP from win2000 to Linux with no problem.

Both ports 21 & 22 are open on my Linksys router and I have no firewall up 
on the Linux box. (ipchains and iptables are empty)

***********

I understand that I should be able to easily run putty without setting 
anything up. Something is keeping me from that "easy" task. Wouldn't be 
Linux if it was easy :)


>From: Richard Adams <pa3gcu@zeelandnet.nl>
>Reply-To: pa3gcu@zeelandnet.nl
>To: "Jerry T" <linuxl1@hotmail.com>, ray@comarre.com
>CC: linux-newbie@vger.kernel.org
>Subject: Re: Fwd: Re: ssh - connection refused
>Date: Sat, 13 Apr 2002 15:43:35 +0000
>
>On Saturday 13 April 2002 15:18, Jerry T wrote:
> > The /etc/ssh/sshd_config file already had the lines in it that you have
> > listed.
> >
> > I have been able to successfully ssh from my Linux box back to itself. 
>sshd
> > seems to be running fine. (sshd appears in the list of services that you
> > see during bootup, sshd comes on just before xinetd)
>
>I hope you dont mind me butting in on Ray's reply, however if what you say 
>is
>correct, (to get it strait), your sshd is working as it should verified by
>using localhost, yes;
>In that case then you must be using your windows loginname or something
>simalar to try to logon to your linux machine, ssh will only allow (in a
>normall standard install) a "valid" username and its valid user passwd
>defined in /etc/passwd, yes it needs to be the same, i see no reason why 
>you
>cant login otherwise.
>Futher more there is no need to do anthing on the windows machine in the 
>way
>of copying or generating ssh files, it should be as easy as ftp'ing putty
>execuctuing it as i explained in my last mail.
>
>--
>Regards Richard
>pa3gcu@zeelandnet.nl
>http://people.zeelandnet.nl/pa3gcu/
>




_________________________________________________________________
Chat with friends online, try MSN Messenger: http://messenger.msn.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
