From: "Jerry T" <linuxl1@hotmail.com>
Subject: Fwd: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 15:08:40 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <F176loUGJDim26mYfDB00013371@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I have tried as a regular user and as root.


>From: eNTi <nt-@gmx.de>
>To: "Jerry T" <linuxl1@hotmail.com>
>Subject: Re: ssh - connection refused
>Date: Sat, 13 Apr 2002 11:01:37 +0200
>
>do you try to connect as root via ssh?
>
>At 03:59 AM 4/13/2002 +0000, you wrote:
>
>
>
>
>>I have sshd running on a Redhat 7.2 box. Am able to telnet & ftp the box
>>>from a win2000 box. To try ssh I set up the following: On the win2000 box
>>under Cygwin I ran "ssh-keygen -t rsa" to generate my key and used ftp to
>>move the id_rsa.pub file to my Linux box. (I copied the file to
>>.ssh/authorized_keys). From Cygwin on win2000 I tried to use slogin to get
>>to my Linux box but I get "Connection Refused."
>>
>>Also tried to rename authorized_keys to authorized_keys2.
>>
>>The sshd process starts up when I boot up.
>>
>>Also tried Putty instead of Cygwin. Same "connection refused" error.
>>
>>Any ideas on what I am missing?
>>
>>_________________________________________________________________
>>Get your FREE download of MSN Explorer at 
>>http://explorer.msn.com/intl.asp.
>>
>>-
>>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>>the body of a message to majordomo@vger.kernel.org
>>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>Please read the FAQ at http://www.linux-learn.org/faqs
>




_________________________________________________________________
Chat with friends online, try MSN Messenger: http://messenger.msn.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
