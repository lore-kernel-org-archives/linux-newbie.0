From: "Jamie Risk" <jamie_risk@yahoo.ca>
Subject: Re: Linux/Win XP network connection problem
Date: Mon, 6 Jan 2003 12:52:33 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <avcfmu$1i7$1@main.gmane.org>
References: <MFELKLHOKICEIDOLMAGEMEFACBAA.jwmaki@att.net>
Reply-To: "Jamie Risk" <jamie_risk@yahoo.ca>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I got something very similar to this when I was trying SAMBA. One kind
person
on this or another newsgroup suggested disabling the firewall on the linux
box. RH seems
to configure firewalls automatically; I'm not that familiar with RH's setup
and I don't know
what ports particularly SAMBA uses particularly (136 or 137 or something
close), but, to
do a quick test, try this as root:
  "service IPCHAINS stop"
to see if it will help. This will completely disable your firewall. Next
time you reboot, the firewall
will be reset to the old values.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
