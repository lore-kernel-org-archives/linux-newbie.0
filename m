From: Natarajan K <natarajan_k@hotpop.com>
Subject: Re: Lilo and NT
Date: Tue, 6 Aug 2002 06:31:51 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208052126.33345.natarajan_k@hotpop.com>
References: <3D4E3BD6.3D9C3FBE@gmx.net>
Reply-To: natarajan_k@hotpop.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D4E3BD6.3D9C3FBE@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Oliver Ob <ob_ok@gmx.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Monday 05 Aug 2002 4:48 am, Oliver Ob wrote:
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

Let LILO save the boot record in the /boot or / partition which ever is 
approriate i.e. where ever the kernel image resides. Do a dd of the first 512 
bytes of the partition to which LILO has written to and save it in a file on 
the windoze partition. Add this to your NT boot loader option i.e. probably 
the boot.ini file specifying the path to the file you just created.
	I have no idea of SAFEGUARD. This is enough to get Linux on to NT's boot 
loader(if that is what is going to be called by SAFEGUARD).
-- 
Natarajan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
