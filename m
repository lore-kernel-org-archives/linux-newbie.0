From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: 'nobody' is using my system !!!
Date: Thu, 26 Sep 2002 15:55:27 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D93662F.D81F567@gelm.net>
References: <000401c26496$bf7d7f20$64fea8c0@pkrausxp> <3D921A64.7DBA9BC6@gelm.net> <200209251722.26680.wfoo@linuxvoodoo.com> <3D92DBFD.5D95F544@gelm.net> <3D92F8D1.9010604@xts.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dragos LUNGU <rlug-list@xts.ro>
Cc: linux-newbie@vger.kernel.org

Howdy, Dragos LUNGU:

 Thanks.  You are right.  I did a 'cat'
and that was the only line!

 Geesh, I added 'updatedb' to rc.local thinking that I was
updating my database.  It would have happened at the next
04:40 anyway!  :-|

 I guess that I will remove that line from my rc.local from
all my linux boxes. 

Regards, Chuck

Dragos LUNGU wrote:
> 
> Hi,
> 
> Chuck Gelm wrote:
> > G'day, Y'all:
> [snip]
> >
> > Why was 'find' and 'sort' running at 4:40 AM ?
> 
> My guess is : updatedb
> 
> i did a grep on /var/spool/* and this is what came out :
> 
> /var/spool/cron/crontabs/nobody:40 04 * * *       cd / ; updatedb 1>
> /dev/null 2> /dev/null
> 
> -> updatedb at 4.40 AM as nobody
> 
> slackware 8.0 here as well, and I'm sure I didn't write that cron job
> myself.
> 
> hope it helps,
> 
> Dragos.
> 
> >
> > Regards, Chuck
> 
> --
> 
> | Dragos LUNGU
> |
> | http://www.xts.ro
> | dragos@xts.ro
> | mobile (+40)745 379 734
> | office (+40)251 190 561
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
