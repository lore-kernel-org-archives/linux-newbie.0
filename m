From: Arthur Othieno <arthurothieno@gmx.net>
Subject: Re: ssh error message
Date: Thu, 12 Sep 2002 10:24:56 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D805D68.4090504@gmx.net>
References: <Your message of "Mon, 09 Sep 2002 22:25:45 -0400." <20020910.205536.134671024.0.lawson_whitney@juno.com> <5.1.0.14.1.20020911221017.02297390@celine>
Reply-To: arthurothieno@gmx.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org



Ray Olszewski wrote:

> Peter -- if ldd cannot find sshd at its normal install location, then 
> either you did not install it (no matter what you think you did) or you 
> installed it to a non-standard location.
> 
> To check the second possibility, see if (as root) "find / -name sshd" 
> returns anything. If it does, then you can probably just creater a 
> symlink in /usr/sbin/  to the real location.
> 
> As to the packages (what you call "programs") you say are installed ... 
> that version of OpenSSH is the current one. The Debian equivalent, 
> "ssh", installs both server (sshd) and client (ssh). From the assortment 
> of package names you list, I'd *guess* that RH has the server and client 
> separated.
> 
> So if "find" does not turn it up for you, I'd try re-installing the 
> openssh-3.1p1-3 package (it's likely to be the server, since another is 
> middle-named "clients")  and seeing if that helps.
> 
> At 10:42 AM 9/12/02 +0800, Peter wrote:
> 
>> lawson_whitney@juno.com said:
>>
>> > On Mon, 9 Sep 2002, Peter wrote: >
>> > Sep  8 09:52:46 philonline apmd: apmd startup succeeded
>> > Sep  8 09:52:46 philonline sshd: Starting sshd:
>> > Sep  8 09:52:46 philonline sshd: execvp: No such file or directory
>> > Aha! sshd.  I thought it was odd to try to run ssh as a daemon.
>>
>> > try "file /usr/sbin/sshd" "ldd /usr/sbin/sshd" for details on shared
>> > library problems; see if user 0 can run it from the command line: "/
>> > usr/sbin/sshd"
>>
>> ]# ldd /usr/sbin/sshd
>> ldd: /usr/sbin/sshd: No such file or directory.
>>
>> In none of the /bin /sbin directories is there any sshd file and I do 
>> not know
>> in which  program it is hidden in any of the install CDs of RH7.2.
>>
>> These programs are installed:
>> openssh-3.1p1-3
>> openssh-askpass-3.1p1-3
>> openssh-askpass-gnome-3.1p1-3
>> openssh-clients-3.1p1-3


As Ray pointed out above, you have not installed the ssh daemon. From the above list, one can fairly conclude 

that only the ssh clients are installed on your system. Therefore, you should install the daemon, which resides

in the openssh-server-3.1p1-3.XXXX.rpm package (where XXX may be i386, 
i486, etc). This rpm is probably on the 2nd installtion CD. Hope that helps.

Arthur


> 
> 
> 
> 
> -- 
> -------------------------------------------"Never tell me the 
> odds!"--------
> Ray Olszewski                    -- Han Solo
> Palo Alto, California, USA              ray@comarre.com
> ------------------------------------------------------------------------------- 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
