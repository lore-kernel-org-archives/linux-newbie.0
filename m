From: Ray Olszewski <ray@comarre.com>
Subject: Re: mp3 play problem
Date: Wed, 29 Jan 2003 08:01:41 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030129075303.020b6400@celine>
References: <20030129142911.30708.qmail@webmail7.rediffmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030129142911.30708.qmail@webmail7.rediffmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Anant Aneja <anantaneja@rediffmail.com>, linux-newbie@vger.kernel.org

At 02:29 PM 1/29/03 +0000, Anant Aneja wrote:
>I've got a problem with running mp3 files on my red hat 7.1 system.
>When I use the XMMS player (in Gnome) I get a problem with sound config 
>message and when i try thr command line mpg123 I get a message telling me 
>that a temporary sound socket could not be created under the /tmp directory.

>However mp3's are playable (under XMMS) when I use the root account.
>
>MP3's are playble if I double click their icons under the file manager 
>though, even in a user account.
>
>Clearly the problem isint with the sound config which is fine.There must 
>be some permissions problem.Please help.

Yes, it sounds that way. Since the message reports a problem with /tmp, the 
natural first thing to ask about is the permissions on that directory. What 
does "ls -l / |grep tmp" report about them? (It should be mode 777.) Also 
let us see the output of "df" (since the problem might be too little space 
available on the relevant filesystem).

If all that looks OK, please post again, this time with the *exact* output 
of the mpg123 error message (and the command you enter that generates it).

Also tell use the nature of the "problem with sound config message" you get 
when running xmms under Gnome, and what application plays the files when 
you "double click their icons under the file manager".


>Kernel :default installed under rh 7.1
>Shell :/bin/bash
>processor : Pentium 2 350 Mhz
>RAM :32 Mb
>
>Anant Aneja
>
>PS : can anyone otherwise direct me to a proper help site/list




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
