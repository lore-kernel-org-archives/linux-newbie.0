From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re: SOLVED SAMBA unable to access the shares
Date: Wed, 4 Sep 2002 07:16:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU052Yf0scL000002af@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

I discovered a couple of things digging in the prolific log files:

user nobody is a really good idea
smbpasswd needed a user of the same name as the share
the valid users = I think negates the need for the second thing I found, but I'm not going to delete it since I have a user with the name of the share anyways
an mixed case username was causing samba to look for alan instead of Alan, so I changed all my entries of Alan across the security files to alan

I can now browse and open my shares on my windows box.  I also see a nifty deal for changing the volume name of the share from it's section title.  I will give that a try on my children's cd's I am going to copy to my linux server so they no longer can damage them.

 >>  I don't user "SHARE" type shares but here is where i would look.
 >>  I do get this error normally when there is a passwd mismatch or
 >>  i'm sending unencrypted instead of encrytped. I have also had problems
 >>  with long (over 14 characters i think) login names on the windows
 >>  machines.




Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
