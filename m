From: "Jerry T" <linuxl1@hotmail.com>
Subject: Re: bad interpreter: Permission denied
Date: Sun, 14 Apr 2002 04:30:18 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <F185S9nYWG1iixgWFvB00006d8f@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org


"chmod" solved the problem. I hadn't checked to see if the permissions were=
=20
in place to execute the executable. Once I granted the permissions, the fil=
e=20
extracted fine. Thanks.

>From: Ray Olszewski <ray@comarre.com>
>To: "Jerry T" <linuxl1@hotmail.com>,linux-newbie@vger.kernel.org
>Subject: Re: bad interpreter: Permission denied
>Date: Sat, 13 Apr 2002 09:35:08 -0700
>
>"bin" isn't a magic word on Linux systems that makes a file executable. In
>fact, there are no magic-word extensions on Linux for this purpose. What
>governs executability is the file's mode. Check this with
>
>         ls -l complete.filename
>
>while in the directory that holds the file. The man page for "chmod" or=20
>"ls"
>will tell you how to interpret the results. If you need help with that=20
>part,
>post the results here.
>
>Your problem might be that the file is not executable -OR- that it is
>executable but not by the userid you are logged in under (but you did try
>root, which elminates this second possibility). -OR- the file might be
>running a script that has a shebang (#!) line pointing to an interpreter=20
>not
>on your system (or not in the path the script expects it to be in).
>
>The file may also be an archive file of some sort, not an executable. Linux
>archives rarely use the .bin extension (it's most commonly used on Macs, as
>I recall) ... but who knows in this particular case? Can you un'tar it?
>
>At 04:13 PM 4/13/02 +0000, Jerry T wrote:
> >
> >After downloading the Java SDK for Linux and trying to run the "bin"=20
>file, I
> >get the following error:
> >
> >bad interpreter: Permission denied
> >
> >I have tried downloading different versions of the bin file and have=20
>tried
> >running the bins as root and as a user. Always the same error.
> >
> >Have also tried different shells (sh & csh) but same error. I thought=20
>that I
> >had run bin files in the past to install software. What causes this=20
>error?
>
>
>--
>------------------------------------"Never tell me the odds!"---
>Ray Olszewski                                        -- Han Solo
>Palo Alto, CA           	 	         ray@comarre.com
>----------------------------------------------------------------
>




_________________________________________________________________
Join the world=92s largest e-mail service with MSN Hotmail.=20
http://www.hotmail.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
