From: "Michael French" <mfrench@ashevillemail.com>
Subject: Re: NT_STATUS_ACCESS_DENIED
Date: Tue, 23 Sep 2003 16:01:38 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001101c38226$a57b8690$0b9f0c0a@savvis.ad.savvis.net>
References: <3F69538E0000279A@mail-bcm01.alestra.net.mx>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ricardo Gomez <rgomez@bancomer.com>
Cc: linux-newbie@vger.kernel.org, linux-admin@vger.kernel.org

    Not knowing all the variables to your system, the best thing I can do is
point you at a couple of good tutorials that IBM put together.  The first
one is on configuring Samba.  It favors AIX, but the principles are the
same.  The second one is on setting up Samba as a PDC but it also has a
section on configuring the Windows clients to connect to the Linux box.
Hope they help you out some:

http://publib-b.boulder.ibm.com/Redbooks.nsf/RedbookAbstracts/sg246004.html?Open
http://www-1.ibm.com/servers/esdd/tutorials/samba.html

Michael
----- Original Message ----- 
From: "Ricardo Gomez" <rgomez@bancomer.com>
To: <unlisted-recipients:>; <no To-header on input>
Cc: <linux-newbie@vger.kernel.org>; <linux-admin@vger.kernel.org>
Sent: Tuesday, September 23, 2003 3:24 PM
Subject: NT_STATUS_ACCESS_DENIED


> I'm trying to conect my Linux into a Windows Network with SAMBA,
> but when I try to list shares fom  resource I recive this message
> "Error returning browse list: NT_STATUS_ACCESS_DENIED" any idea.
>
> My username an password in my linux are the same that I have in
> the Windows Domain, I used smbpasswd to add my user and password.
>
>
> Tks for your help and sorry about my English.
> Ricardo
>
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-admin" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
