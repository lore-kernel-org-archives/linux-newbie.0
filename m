From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Lilo and NT
Date: Mon, 5 Aug 2002 18:26:52 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208051825270.8397-100000@Consulate.UFP.CX>
References: <3D4E3BD6.3D9C3FBE@gmx.net>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D4E3BD6.3D9C3FBE@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Oliver Ob <ob_ok@gmx.net>
Cc: Lx Newbie List <linux-newbie@vger.kernel.org>

Hi Oliver.

> There is some problem here. I had been using my machine dualbooting
> with Lilo for NT and Linux. Worked like a charme.
>
> But now my company uses SAFEGUARD and that thing needs the mbr for NT,
> I have not done this before and ask for your advice:
>
> How can I continue using LILO for NT/Linux dualboot 
> *when I need the orignal ("safeguarded") NT-Bootsector instead of Lilo
> in the mbr?
>
> What to do?

Drop LILO in the boot sector of whichever partition has the Linux /boot
directory in it, and set the partition table such that the said
partition is the active one. That should deal with this problem.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
