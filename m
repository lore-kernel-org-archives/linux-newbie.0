From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Lilo and NT - repost because many did not READ!!!!
Date: Tue, 6 Aug 2002 20:18:14 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208062008090.8397-100000@Consulate.UFP.CX>
References: <3D501D19.456D382E@gmx.net>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D501D19.456D382E@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Oliver Ob <ob_ok@gmx.net>
Cc: Lx Newbie List <linux-newbie@vger.kernel.org>

Hi Oliver.

> There is some problem here. I had been using my machine dualbooting
> with Lilo for NT and Linux. Worked like a charme. Lilo resided in
> the mbr and it worked.
>
> But now the NT uses SAFEGUARD and that thing sits in the mbr for the
> pre-boot-password-authentication. So for all of you who do not know
> SG yet: It starts booting ONLY if you entered the correct pw.
>
> I have not done this before and ask for your advice:
>
> *** AGAIN, STOP WASTING MY AND YOU TIME WITH IDEAS TO MODIFY THE NT
> LOADER! I SAID A MILLION TIMES WHY I CANNOT CHANGE THAT !!! ****
> Thanks.

If you're not willing to read the replies you get, then stop wasting OUR
time asking for information you then ignore !!!

To quote your comment above, you said "Lilo resided in the mbr" and THAT
is the problem that stops SafeGuard from working. As I stated in my
previous reply, you need to move Lilo out of the mbr and into the boot
sector of the LINUX partition - NOT the NT partition as you claim in
your comments. When you've done so, you change the partition table
(which is NOT part of the MBR and is also NOT part of the NT loader)
to indicate that the active partition is the Linux one.

> How can I continue using LILO for NT/Linux dualboot *when I need to
> make NT believe the orignal ("safeguarded") NT-Bootsector in the
> mbr, but want to use lilo in the mbr ACTUALLY

Why do you want to put lilo in the MBR ??? Why not just give safeguard
what it wants in the first place?

> What to do?

Read what people tell you, for starters.

> I put it like this: I NEED lilo in the mbr...

Why? I've never put lilo in the MBR and have many systems happily dual
booting Linux and Windows, so it can't be for that. I even have one
system that is quad-booting Linux, Windows XP, OS2 Warp and MS-DOS and
did it precicely this way.

> ...but can only boot with SAFEGUARD. So how can I tell lilo to run
> the SAFEGUARD sector, which I have here in a file (512 bytes) ?

That's easy enough, but if you do it that way, it won't work as the
safeguard sector is sensitive to its position on the hard drive.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
