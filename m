From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 08:36:27 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0204130836270Q.00302@unix.pa3gcu>
References: <F117ylW9wWDV81Ze8P300020b87@hotmail.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F117ylW9wWDV81Ze8P300020b87@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jerry T <linuxl1@hotmail.com>, linux-newbie@vger.kernel.org

On Saturday 13 April 2002 03:59, Jerry T wrote:
> I have sshd running on a Redhat 7.2 box. Am able to telnet & ftp the box
> from a win2000 box. To try ssh I set up the following: On the win2000 box
> under Cygwin I ran "ssh-keygen -t rsa" to generate my key and used ftp to
> move the id_rsa.pub file to my Linux box. (I copied the file to
> .ssh/authorized_keys). From Cygwin on win2000 I tried to use slogin to get
> to my Linux box but I get "Connection Refused."
>
> Also tried to rename authorized_keys to authorized_keys2.
>
> The sshd process starts up when I boot up.
>
> Also tried Putty instead of Cygwin. Same "connection refused" error.
>
> Any ideas on what I am missing?
>

You say you use 'slogin' however with putty.exe you type in the approriate 
hostname or IP# choose SSH from the 4 options below the hostname box and 
click on open at the bottom of putty's window, it will then attempt to 
connect to the remote host on port 22 which is the port ssh uses.

On another note you should not need to copy any key files from/to anywhere, 
new keys should begernated upon a new connection if no key is found.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
