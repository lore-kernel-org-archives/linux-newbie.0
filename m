From: "Weigand, Benjamin" <benjamin.weigand@intel.com>
Subject: RE: iptables & a dhcpd question
Date: Thu, 27 Feb 2003 14:22:48 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1B954E6DDFED0D41957388EB06FCB1D2010F0F40@fmsmsx402.fm.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


I'm not a bsd-ish kinda guy, but:
If "/etc/rc.d/rc.firewall start" doesn't work, check to see that there is an interpreter defined for the script. (first line should say "#!/xxx/xxx").

-bw
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
