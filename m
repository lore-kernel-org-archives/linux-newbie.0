From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: tar for "full" floppy backup?
Date: Fri, 06 Dec 2002 18:35:41 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF1344D.C82F5DB9@gelm.net>
References: <200212062144.OAA17052@cu.imt.net> <Pine.LNX.4.50.0212061725310.1504-100000@athame.gmpexpress.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: dashielljt <dashielljt@gmpexpress.net>

Howdy, dashielljt:

 I was thinking along the same lines.  I am only familiar
with the last option being 'f'.  Yet I noticed that the 'b'
command needs an operator too.  Perhaps the operators are
appended in the same order they are requested by the options.
'f' filename.ext or /dev/*
'b' block size
'k' ?
 i.e.
tar cvfbk /dev/fd0 1440 4 /
      \\\
       \\k = 4
        \b = 1440
         f = /dev/fd0
?
HTH, Chuck

dashielljt wrote:
> 
> maybe tar cvbkf /dev ... will work.
<snip>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
