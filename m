From: "Eve Atley" <eatley@wowcorp.com>
Subject: Mouse going nuts in RH Linux Enterprise 3 (Taroon)
Date: Thu, 7 Apr 2005 15:57:51 -0400
Message-ID: <009301c53bac$15bb7e70$540aa8c0@lanadmin>
References: <5.1.0.14.1.20050407093705.03492e28@celine>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050407093705.03492e28@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Simply put...my mouse has started having a mind of its own in our Redhat
Enterprise Workstation 3 (Taroon) Linux box. It wants to focus on the bottom
left-hand corner of the screen, and clicks on whatever happens to be there
at the time (Languages at login, as an example). When I try to move the
cursor up towards my destination, it insists on refocusing down at the
bottom left-hand corner of the screen again. And though I press neither the
left nor right button, it functions as if I am. 

I don't know if any of these are related, but here are a few things which
lead up to this:
1. desktop crashed after a user killed a window through remote VNC - I
rebooted the machine
2. I have an entry in vncserver to start up "root:1" (conflict?) - when a
user remotely connects via VNC, they see a similar desktop but it's NOT the
same. I can tell, because windows will pop up in the server that never
appear in the VNC desktop. Icons layout is identical, however.
3. The mouse in question is a scroll-wheel optical (Microsoft) and is
connected to a KVM switch. It worked perfect fine previous to this.

Any ideas how I can exorcise my mouse? Any corrupted file to examine
perhaps?

Thanks,
Eve



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
