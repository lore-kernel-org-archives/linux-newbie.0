From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Authorising a Linux DHCP server in MS Active Directory
Date: Thu, 6 Feb 2003 14:19:59 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302061419.59717.Adam@Luchjenbroers.com>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: samba@lists.samba.org, linux-newbie@vger.kernel.org


Trying to setup RIS, the current network uses a Linux DHCP server/firewall. 
RIS requires that both the RIS server and the DHCP server are authorised in 
Active Directory (the MS documentation states that only a Win2k DHCP server 
can be authorised - but it's MS documentation, so it wouldn't suggest non MS 
alternatives).

Current planned solution is to have the firewall serve only as a firewall and 
have DHCP moved to the RIS server. I just want to investigate this 
alternative aswell.

-- 
"Never EVER mess with a jumper you don't know about, even if it's labeled 'sex 
and free beer'." - Dave Haynie, Amiga developer

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
