From: "Benny Pedersen" <linux-net@tcob1.net>
Subject: bind conf
Date: Friday, 30 Aug 2002 02:22:16 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_110=3a300=2f15_3d6ed797@fidonet.org>
References: <Pine.LNX.4.44L.0208291647100.3358-100000@labmetro.ufsc.br>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44L.0208291647100.3358-100000@labmetro.ufsc.br>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: Daniel Provin

Hello Daniel!

29 Aug 02 16:49, Daniel Provin wrote to All:

 DP> Is there a better way than CNAME entries to include subdomains for 
 DP> a zone in the bind configuration?

nope

 DP> I am currently using CNAME entries for the www and the mail 
 DP> subdomains

the way it should be

CNAME is for subdomains on the same ip

A record is for subdomains on diffrent ip

basicly the hostnames can be the same :)

 DP> -+- Internet Rex 2.67 beta 1a

closed beta ?


Regards, Benny

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
