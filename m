From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Networking issue
Date: Thu, 2 Jan 2003 19:06:13 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301021906.13536.Adam@Luchjenbroers.com>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


I installed Mandrake 9.0 on a server box I'm putting together, I installed the 
firewall shorewall. Couldn't connect to the ssh server or even ping the box 
(the inability to ping it, I assumed was the result of shorewall).

Reconnected monitor and keyboard to server, server couldn't ping any of the 
other computers (sendmsg not permitted)

So I turned off shorewall and even removed it from startup, can now ping from 
the server to other computers but it cannot be pinged (even ping 127.0.0.1 
doesn't work) or connected to using ssh (sshd is running)

Any idea whats wrong?

-- 
"I had a letter in the post today. It said 'Gas Bill'. It sounds a tempting 
offer" - Alan Cox

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
