From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Fwd: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 15:43:35 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0204131543350U.00302@unix.pa3gcu>
References: <F18sUZjEGuaYve5T7HV00000a68@hotmail.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F18sUZjEGuaYve5T7HV00000a68@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jerry T <linuxl1@hotmail.com>, ray@comarre.com
Cc: linux-newbie@vger.kernel.org

On Saturday 13 April 2002 15:18, Jerry T wrote:
> The /etc/ssh/sshd_config file already had the lines in it that you have
> listed.
>
> I have been able to successfully ssh from my Linux box back to itself. sshd
> seems to be running fine. (sshd appears in the list of services that you
> see during bootup, sshd comes on just before xinetd)

I hope you dont mind me butting in on Ray's reply, however if what you say is 
correct, (to get it strait), your sshd is working as it should verified by 
using localhost, yes;
In that case then you must be using your windows loginname or something 
simalar to try to logon to your linux machine, ssh will only allow (in a 
normall standard install) a "valid" username and its valid user passwd 
defined in /etc/passwd, yes it needs to be the same, i see no reason why you 
cant login otherwise.
Futher more there is no need to do anthing on the windows machine in the way 
of copying or generating ssh files, it should be as easy as ftp'ing putty 
execuctuing it as i explained in my last mail.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
