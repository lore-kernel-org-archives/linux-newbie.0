From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Re: Linux/Win XP network connection problem
Date: Mon, 6 Jan 2003 21:14:49 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301062114.49646.Adam@Luchjenbroers.com>
References: <MFELKLHOKICEIDOLMAGEMEFACBAA.jwmaki@att.net>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <MFELKLHOKICEIDOLMAGEMEFACBAA.jwmaki@att.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Maki <jwmaki@att.net>, linux-newbie@vger.kernel.org


> With the help of Red Hat Linux 8 Bible, I think I have SAMBA working on the
> Linux box. I can see MyGroup on the Win XP box in Network Places. If I
> select Mygroup, I get Samba Server (Localhost). If I double click, I get
> the following error message
>
> =======================
> \\Localhost in not accessible. You might not have permission to use this
> network resource. Contact the administrator of this server to find if you
> have access permissions.
>
> You were not connected because a duplicate name exists on the network. Go
> to System in Control Panel to change the computer name and try again.
> =======================

Just a quick pointer, try changing the network name from "localhost", 
localhost is usually a loopback hostname (IP 127.0.0.1) that is used by a 
machine to connect to itself.

-- 
"Security-wise, NT is a server with a "Kick me" sign taped to it." - Carl 
Jacobs

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
