From: Ray Olszewski <ray@comarre.com>
Subject: Re: tar for "full" floppy backup?
Date: Fri, 06 Dec 2002 16:10:30 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021206160251.022617e0@celine>
References: <200212062144.OAA17052@cu.imt.net>
 <Pine.LNX.4.50.0212061725310.1504-100000@athame.gmpexpress.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DF1344D.C82F5DB9@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Chuck, you're right on target about how the agruments that get parameters 
get them. Skipping the problematic "k" part for the moment, a command like

         tar cvfb somefilename.tar 40 some_files_to_tar_up

would work just fine, putting whatever matched some_files_to_tar_up in 
somefilename.tar . Try it for yourself. No need to badmouth an old 
Slackware manual (or demand a refund from poor old Patrick) for saying to 
do it this way.

OTOH, old Slackware manuals are ... well, old, and tar has an unfortunate 
tendency to change its parameter meanings from time to time. I don't have a 
ready way to check what the k parameter did way back when Slackware 3 was 
current (October 1995, according to my genuine Slackware CD), but these 
days it has nothing to do with multi-volume settings. Check the man page to 
see this.

I don't tar to floppies here, so I've not tried it, but I'd suggest your 
seeing if the -M (multi-volume) parameter can be used to do what you want.

At 06:35 PM 12/6/02 -0500, Chuck Gelm wrote:
>Howdy, dashielljt:
>
>  I was thinking along the same lines.  I am only familiar
>with the last option being 'f'.  Yet I noticed that the 'b'
>command needs an operator too.  Perhaps the operators are
>appended in the same order they are requested by the options.
>'f' filename.ext or /dev/*
>'b' block size
>'k' ?
>  i.e.
>tar cvfbk /dev/fd0 1440 4 /
>       \\\
>        \\k = 4
>         \b = 1440
>          f = /dev/fd0
>?
>HTH, Chuck
>
>dashielljt wrote:
> >
> > maybe tar cvbkf /dev ... will work.
><snip>



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
