From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Start Job as specific user at startup
Date: Tue, 5 Nov 2002 16:39:41 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02110516394105.00244@unix.pa3gcu>
References: <!~!UENERkVCMDkAAQACAAAAAAAAAAAAAAAAABgAAAAAAAAAXNaavq6Az0CyD0h0hCzYw8KAAAAQAAAA5SN3qsAnvEuvMPWsg6DZmgEAAAAA@yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <!~!UENERkVCMDkAAQACAAAAAAAAAAAAAAAAABgAAAAAAAAAXNaavq6Az0CyD0h0hCzYw8KAAAAQAAAA5SN3qsAnvEuvMPWsg6DZmgEAAAAA@yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chrisotpher Swope <SwopeCR@yahoo.com>, linux-newbie@vger.kernel.org

On Tuesday 05 November 2002 10:04, Chrisotpher Swope wrote:
> Dear All,
>
> I have two questions, both closely related.
>
> First, when a job started rc.local, under which user is the job called?
> (I might be asking which user owns the job, but I don't know if that's
> the same thing).

Most likely root, but AFAIK it could be deamon sys bin depends mostly on what 
it is or thats what i would think.

>
> Second, is there any way to specify under which user a job is started
> when it is called from within rc.local?

su <userrname> -c "programname" comes to mind.

Example;

/bin/su pa3gcu -c "cd /home/pa3gcu/net; ./startnet"

startnet is then a a script which inturn starts a program. Or simply;

/bin/su pipo -c "/sbin/network"

Note, the program being started would only start if pa3gcu or pipo had 
permission to start it, su as per above, in no way tampers with file 
permissions.

>
> If you are confused about what I am asking, here is what I am going for:
> I want to start the VNC server at startup.  I prefer to call it from
> rc.local, because I know how to do that.  I don't want the server
> started as root, though, because then when I log in remotely through
> VNC, I will be the root user.  That just doesn't sit right with me.
> What I would prefer to do is start the server as a less privileged user,
> again as the computer starts up.

I doubt if such a server program would run properly if it were not started by 
root, unless you set permissions on the executable file beforehand, note here 
that servers in gerneral should not be played with in permissions terms, you 
could comprimise your intire system by doing so, consult the documentation of 
such servers or programs you may find some info about "secutity" for example, 
or find some note saying, "This program must only be run by root".


>
> Thanks for the help,
> Christopher Swope

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
