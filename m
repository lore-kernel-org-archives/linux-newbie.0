From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Logging
Date: Wed, 10 Apr 2002 18:23:33 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02041018233304.00302@unix.pa3gcu>
References: <5.1.0.14.0.20020409234447.0352bf68@shawmail.ed.shawcable.net> <5.1.0.14.0.20020410003520.0352ef78@shawmail.ed.shawcable.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.0.20020410003520.0352ef78@shawmail.ed.shawcable.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chris Rose <offline@shaw.ca>, linux-newbie@vger.kernel.org

On Wednesday 10 April 2002 06:36, Chris Rose wrote:

> >Why would one want to ue a fancy program to read a simple text file, the
> >program less allows the use of a search engine, hit the '/' key and a
> > slash will appier at the bottom left of the screen, type a word to look
> > for, then hit enter, to repeat hit the slash again and press enter or
> > simply hit the space bar, the found word is highlighted.
>
> i think you're missing the point - what i'm looking for is not, per se, the
> mechanism used to read the log, so much as i'm looking for the means to
> make sense of what i'm seeing, and also which log files/settings of the
> daemon will provide me with stats on uploads/downloads from my ftp site.

I dont think i am, i meant what i said, what i can tell you futher is that 
proftp.log does not really reveal much infomation at all, its "xferlog" in 
/var/log that tells all, 'man xferlog' will explain all there is to be known.

Just in case you may read my mail as being prudent here is what profftp log 
shows.
Aug 05 15:16:02 unix.pa3gcu proftpd[3839]

Date and time i am sure we all now what that is, unix.pa3gcu = the server 
name, proftpd[389] is the process number as would be shown by 'ps ax' when 
the connection was presant. Further on the same line in the log one would see;

unix.pa3gcu.ampr.org (192.168.1.160[192.168.1.160]): USER pa3gcu: Login 
successful

unix.pa3gcu.ampr.org is the fullservername (192.168.1.160[192.168.1.160]): is 
the IP# of the remote computer who just opened the ftp connect,
USER: pa3gcu = the user who logged in, that could be ftp or guest when 
anoymous is used, Login succesful means a valid passwd was used.
Any discrepancy's would be logged as well as the last entry on the line.
No more info is given, you now would refer to xferlog to get details of what 
was done in that connection.
See 'man xferlog' to get all the details on those entries.

I trust i have not missed the point in your eyes this time...

>
>
> Chris Rose
> ==========
> 1952 - 2001 = 42

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
