From: Ray Olszewski <ray@comarre.com>
Subject: RE: Retrieving deleted files
Date: Wed, 07 Apr 2004 13:42:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040407132750.01efa2b0@celine>
References: <5.1.0.14.1.20040407114459.01efa728@celine> <GNEPLLCIIBHICCOGIAKPAEGKCJAA.eatley@wow-corp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPAEGKCJAA.eatley@wow-corp.com>
References: <5.1.0.14.1.20040407114459.01efa728@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Eve Atley <eatley@wow-corp.com>
Cc: linux-newbie@vger.kernel.org

At 04:00 PM 4/7/2004 -0400, Eve Atley wrote:

>Hi Ray,
>
> >When you "tried" to install recover (I assume from an rpm), did the install
> >procedure indicate that it had succeeded or not? If not, what did it say?
>
>Yes, from an RPM. I get no error from the RPM install install; I do get what
>you indicate below when running recover from the command prompt:
>
>          ray@kuryakin:~$ recover
>          -bash: recover: command not found
>
>I can not find recover on the system. "which recover" does not find it; find
>/ -name recover either does nothing, or is taking so long I finally end up
>quitting the process.
>
>'which recover' gives me the following:
>[root@wow-rtr root]# which recover
>/usr/bin/which: no recover in
>(/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sb
>in:/usr/bin:/usr/X11R6/bin:/root/bin:/usr/local/mysql/bin)
>
> >Were you trying to run recover as root or as an ordinary user? Could there
> >be a PATH issue (what happens if you specify the path to the app
>explicitly)?
>
>I am definitely running as root.


Well, as it turns out, recover doesn't work with ext3 anyway ... at least 
not according to its entry in the Debian package directory, and the 
description at the upstream site 
(http://recover.sourceforge.net/linux/recover/).

This source -- http://batleth.sapienti-sat.org/projects/FAQs/ext3-faq.html 
-- says that true undeleting (of the sort that recover does) is not 
possible with ext3. But a cruder sort of recovery may be possible ... see 
http://recover.sourceforge.net/unix/ for instruction.

As to the install itself ... either there is a problem with the RPM or it 
places recover in some truly odd location (Debian installs it in /usr/sbin, 
BTW, the usual place for this sort of app). I'm cc'ing this back to the 
list in case someone more used to working with RPM-based distros can help 
you here.

Sorry I  do not have better news for you.






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
