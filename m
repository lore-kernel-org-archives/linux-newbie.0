From: cr <cr@orcon.net.nz>
Subject: ppp ain't talking
Date: Sat, 14 Jun 2003 08:47:48 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306130932.h5D9W3gb029065@dbmail-mx2.orcon.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I just installed Debian 3.0, (my second attempt), and after some effort got 
kppp to log on to my ISP without immediately dying with an exit status 2...

However, now, while kppp logs on and stays on,  Kmail, Konqueror and Galeon 
are not communicating with it.   I get 'SMTP error' from Kmail and 'Can't 
find URL' from Konq, and nothing's going out on the modem lights.    There 
are no more informative error messages.   

I assume pppd uses some sort of stack to communicate with its clients, I 
might even guess that maybe there are permissions that need setting.   Can 
someone tell me where to look or point me to a good HOWTO?

(I can't give detail diagnostics since I'm no longer 'in' Debian, I've 
refitted the drive that has RedHat 7.2 on it - a straightforward but 
non-trivial job - and when I think I know enough for another attempt, I'll 
stick the Debian drive back in.   One advantage of using a stack of old 2GB 
drives.... )

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
