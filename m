From: Alan Womack <arwbackup@worldnet.att.net>
Subject: lost in samba land
Date: Thu, 16 May 2002 22:23:11 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020517052311.MLDY25501.mtiwmhc23.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have a sucessfully runing samba on redhat linix 7.2 as long as I use:

security = share

when I start to work on going to :

security = user

I get prompted from my windows boxes

\\webby\ipc$ for a password, none ever make it happy.

I think my problem lies in initial setup of samba for authentication.  I hope to get to the point I can use openldap for authentication, but got lost in the ideax how to page.

when I try this on my linux box:

[Alan@Webby Alan]$ smbclient //webby/tmp
added interface ip=192.168.0.5 bcast=192.168.0.255 nmask=255.255.255.0
Password:
session setup failed: NT_STATUS_LOGON_FAILURE

I'm not sure of how to get debug turned on to help diagnose further.

Thanks for the hints, prods, assistance!

Alan


Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
