From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Fwd: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 15:28:00 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0204131528000T.00302@unix.pa3gcu>
References: <F81Vzajv1eXlMOHOpyk00001fe5@hotmail.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F81Vzajv1eXlMOHOpyk00001fe5@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jerry T <linuxl1@hotmail.com>, linux-newbie@vger.kernel.org

On Saturday 13 April 2002 15:07, Jerry T wrote:
> I used slogin while trying connect through Cygwin. When that didn't work I
> downloaded Putty and tried the steps that you have listed. I am getting
> Connection Refused.

Lets ask the question here, what do you do to get connection refused, can you 
enter a passwd,? do you need to enter a username.?
Please show us your commands and thier returned error messages.

>
> The OpenSSH daemon (sshd) is running because I can ssh to my own box.

I take that to mean you can do;
ssh localhost

An example from one of my boxes;

pa3gcu@unix:~$ ssh localhost
pa3gcu@localhost's password:
Last login: Sun Mar 17 20:01:23 2002 from 172.16.164.130
Linux 2.2.19-5.
pa3gcu@unix:~$

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
