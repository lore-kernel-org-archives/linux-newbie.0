From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Shutdown problem
Date: Sat, 18 Jan 2003 09:14:50 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03011809145002.29837@unix.pa3gcu>
References: <20030117181655.4776.qmail@webmail9.rediffmail.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030117181655.4776.qmail@webmail9.rediffmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Anant Aneja <anantaneja@rediffmail.com>, linux-newbie@vger.kernel.org

On Friday 17 January 2003 18:16, Anant Aneja wrote:
> well i guess i was 0 on details last time.
> but heres another problem whose complete details I CAN supply.
> only problem is writing the exact o/p would mean actually WRITING
> it down first.

Well you explain what happens, but you dont say;
1) What kernel is used.
2) The command used. Or how you shutdown the system and from where, in X via  
     KDM or some other manager. Or do you use ctrl-alt-delete.?
3) Has this always happend, or did it simply start recently.

>
> cos it comes when i shutdown the comp.
>
> my comp has a feature by which when the os shuts down it shuts
> down the comp completley. thus in windows i dont see a
> 'Its safe to shutdown ......."
>
> in linux(red hat 7.1 on a pentium 350 Mhz)i come down to the
> foll.
> (from what i rem.,may not be exact) :
> stopping md devices.
> stopped md devices.
> halting system.
> POWER DOWN
> <error>
>
> its after this that i get a complete listing of the cpu's
> registers and some more crap(i'll send this as soon as someone
> asks)

Sounds like an "oops" to me, fi that is so then you are the one who needs to 
study the oops, you have the tools on your system and the relavant system 
files holding the information.
To make an oops readable and to find out what caused the oops i suggest you 
read the following and do as the files say.

/usr/src/linux/README (part concerning)
IF SOMETHING GOES WRONG:
In the README it tells you what to do and which other files to read.

>
> so any help i can get ?

Possable causes of an oops are processes left open or processes using system 
resources left open, a system which uses "tainted modules" and they are not 
being removed before shutdown, many other things, too many to mention, the 
answer is in the oops.

>
> Anant Aneja
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
