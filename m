From: Grant Coady <grant_nospam@dodo.com.au>
Subject: Re: root password
Date: Sun, 03 Apr 2005 15:14:11 +1000
Message-ID: <i4uu41tum0pp6mjahvh4nqlt04nn3k5dqg@4ax.com>
References: <20050403043940.90401.qmail@web52903.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050403043940.90401.qmail@web52903.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org, admin <linux-admin@vger.kernel.org>

On Sat, 2 Apr 2005 20:39:40 -0800 (PST), Ankit Jain <ankitjain1580@yahoo.com> wrote:

>i started the question not to hack any system but i
>was curious to know that in linux its easy to change
>the root passwd

>in this case the authenticity is a problem. still it
>can be changed by a boot CD even i think so u have
>apasswd for boot loader. so in this case what should
>be done?

Startup password for machine in BIOS, disable boot from 
removable media in BIOS.  The truly paranoid may have an 
encrypted filesystem with say a smart card hold the keys.

>         and also is there any other flaws which are
>openly known i am not intrested to destruct any system
>but want to know which is already known to ppl that if
>root passwd can be changed any other way also?

Not flaws as such -- if there is physical access to 
computer it is not secure.  That's why fileservers live 
in locked machine rooms.  

You see that past a certain point, software security 
cannot help?  But they come close in large systems where 
user data is held on network server -- start the machine 
but cannot access private data until login.

Cheers,
Grant.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
