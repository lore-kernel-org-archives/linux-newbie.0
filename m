From: Ray Olszewski <ray@comarre.com>
Subject: Re: ntp - how?
Date: Fri, 02 Aug 2002 09:36:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020802092710.021c8d50@celine>
References: <3D36DDA3.FA0F073C@gmx.net>
 <02072506225706.04469@unix.pa3gcu>
 <3D406BBB.E208E07B@gelm.net>
 <02072606105100.00370@unix.pa3gcu>
 <5.1.0.14.1.20020726164536.02296360@celine>
 <5.1.0.14.1.20020728140342.0228b3c0@celine>
 <3D4498AF.42DC0D8C@gelm.net>
 <3D45AD28.7623B094@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D4A59E1.DAFE9F79@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

At 06:07 AM 8/2/02 -0400, Chuck Gelm wrote:
>Howdy, Y'all:
>
>  I stuck trying to run ntpd.  I don't see any updates
>when I run 'ntpq -p'.  When I run 'ntpdate host',
>all of the hosts I've tried return
>"[date] : no server suitable for synchronization found"
>What is wrong?

Well .. the obvious possibilities are

         1. your system cannot reach the hosts you try
         2. the hosts you try are not ntp servers
         3. your system is behind a firewall that interfeerse with access 
to the ntp port

Post the details of what you have been trying and we'll try to help you 
figure out the exact problem.

BTW, ntpdate is a different program from ntpd (on Debian systems, it is a 
completely separate install from ntpd), so you might want to be a bit more 
exact about what ntp package you are trying to run. Also what Linux distro.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
