From: "Justin Morgan" <JMorgan@d2hawkeye.com>
Subject: RE: adsl, firewalls, etc.
Date: Mon, 19 Dec 2005 11:06:50 -0600
Message-ID: <27E6B53A6B1ADF49B715893D85F2303DBC833A@d2hawkeye-01-ex.atlarge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



> I know I'm pushing my luck a bit asking this here, but does anyone 
> actually have any experience shutting ports on this router? I've 
> followed the logical steps, which are the same steps described in the 
> manual, but after reinitiating the router I still find exactly the
same 
> ports open.


Andrew,

I can't say I've actually worked with that model, but I can say that I
suspect those are ports to manage the router itself.  Thus, you might
not find the settings in the ACLs/policies, but in the management
settings for the entire device.  I've seen similar hiding spots for
management ports on Juniper and Linksys devices.

Regards,

-Justin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
