From: "William Stanard" <wstanard@palmertrinity.org>
Subject: keeping static ip address alive between restarts
Date: Fri, 20 Feb 2004 10:30:50 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <fc.004c4e000050d4a1004c4e000050d4a1.50d523@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Running Red Hat 8.0 (2.4.18-14) on an old Acer I have keyed
 ifconfig eth0 192.168.0.1
to set my box's ip address for my small LAN. What additional command
should I use to write that address permanently, so that I do not have to
ifconfig each time I restart? I have read and reread O'Reilly's Running
Linux and Learning Red Hat Linux; is there no process whereby the settings
are written to the correct files for startup, or must I (using vi, for
example) edit certain files myself? 

Bill Stanard



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
