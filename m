From: Simon Valiquette <v.simon@ieee.org>
Subject: Re: 2 questions: 1. ssh permissions to 777 and 2. recursively  change
 all directories/files to 777
Date: Thu, 09 Dec 2004 17:35:08 -0500
Message-ID: <41B8D31C.3040305@ieee.org>
References: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06>
 <5.1.0.14.1.20041209133634.0208a928@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20041209133634.0208a928@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

Ray Olszewski a =E9crit :
 >
 > So you want an uploaded file to be mode 777, writable (and executabl=
e,
 > if you really mean 777, not 666) by any user on the system? OK. Chan=
ge
 > the account's umask, in ./.profile, or ./.bashrc, or whatever
 > user-specific file is appropriate to your setup.

   I would also had done something likes that.  Then, if you want those
users to be _forced_ to put all their files world readable, I don't kno=
w
how to do it.  The closest I know is with a cron that change back the
permissions with chmod every 5 minutes or a script runned at logout tim=
e
(maybe scp also execute .logout).

 >
 > Since the relevant command is "chmod", not "Chmod" (case counts in
 > Linux/Unix commands), I'm surprised you hit *anything* with the comm=
and
 > as written.

   It surelly really was chmod.  Typo, or Outlook that automatically
fixed the case (I remember seeing things likes that many years ago when
I was still using Windows).

 >         chmod -R 777 ./*
 >
 > (Even this will not chmod **all** files, because because by conventi=
on
 > almost all Linux/Unix commands treat files that begin with a dot
 > character as special, so standard wildcards (*) will not match them.=
 So
 > this command will chmod files with names like filename and filename.=
txt,
 > but not one with names like .filename . I don't know a general way t=
o
 > include such files.)
 >

          chmod -R 777 .

   Note the "." at the end.  That will do it for the current directory,
and all files/directories that start from the inode represented by "."

Simon Valiquette
http://gulus.USherbrooke.ca



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
