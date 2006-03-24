From: Ray Olszewski <ray@comarre.com>
Subject: Re: Printing with Kernel 2.6.14.4
Date: Fri, 24 Mar 2006 06:55:50 -0800
Message-ID: <44240876.3030306@comarre.com>
References: <380-22006352464414683@M2W061.mail2web.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <380-22006352464414683@M2W061.mail2web.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

heisspf@skyinet.net wrote:
> thanks Hal!
> 
> altec@kvinet.com said:
> 
>>Doesn't 'cat filename.txt > /dev/lp0' work
> 
> 
> no since /dev/lp0 is not an executable file.
> 
> I just had for 36 hours no Internet connection and therefore no printing
> and this
> late reply. When connection was restored I can't send mail any more with
> exmh or sylpheed????????
> 
> Luckily there is mail2web.com
> 

Peter -- Your response reflects a misunderstanding of the relevant 
permissions. When you redirect output to a file (or a pseudofile like 
the device link /dev/lp0), that destination file need not be executable. 
It just needs to be writable by the uid doing the redirection.

For example, these are the permissions from my stock Debian-Sid setup here:

autovcr@new-flagg:~$ ls -l /dev/lp*
crw-rw----  1 root lp 6, 0 Feb 25  2005 /dev/lp0
crw-rw----  1 root lp 6, 1 Feb 25  2005 /dev/lp1
crw-rw----  1 root lp 6, 2 Feb 25  2005 /dev/lp2

So root and members of group lp can write to these files, but other 
users cannot (they will get "Permission denied" because they lack write 
access, NOT because the file is not executable).

Since I use neither parallel printers nor the particular X application 
your earlier messages referred to, I haven't tried to figure out what 
your problem is. But no one will be able to help you if you don't report 
  accurately the failures (specifically, the associated error messages) 
of the tests that people ask you to run.

Here, for example, where I have no printer attached to lp0, I get 
different failure messages as an ordinary user and as root:

autovcr@new-flagg:~$ cat mencoder_notes.txt > /dev/lp0
-bash: /dev/lp0: Permission denied
autovcr@new-flagg:~$ su
Password:
new-flagg:/home/autovcr# cat mencoder_notes.txt > /dev/lp0
bash: /dev/lp0: No such device

The response I get as autovcr means I don't have write (not execute) 
permission for the file (device). The response I get as root means there 
is no printer attached to the port.

You should be equally specific in your reporting to us. Oh and also try

	cat filename.txt > /dev/lp1

as I have a hazy recollection that some versions of Slackware associated 
lp1, not lp0, with the first parallel port.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
