From: Pepo <pmancheno@gmail.com>
Subject: Virtual interfaces in IPv6 for routing.
Date: Mon, 15 Jan 2007 22:41:42 -0500
Message-ID: <200701152241.43910.pmancheno@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, debian-user@lists.debian.org

Hi friends.

I have PCs with just one nic each one, and these PCs are working like routers 
for my test-LAN (for my thesis); when have to route to different sub-nets I 
use tunnels in IPv4 with OpenVpn to virtual-connect directly each router.

Now, I have to do the same thing but in IPv6. how do I make tunnels from IPv6 
to other IPv6 address?

I try with modprobe ip6_tunnel and now I have one interface more:

# ip addr show
ip6tnl0: <NOARP> mtu 1460 qdisc noop
link/tunnel6 00:00.... brd 00:00....

Do you know how do I have to configure the tunnels?

Thanks

-- 

         Linux User Registered #232544
          Jabber : pepo@jabberes.org
	   Ekiga : pepo@ekiga.net
	     ICQ : 337889406
       GnuPG-key : www.keyserver.net
-----------------------------------------------
                   dum loquimur, fugerit invida
aetas: carpe diem, quam minimum credula postero.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
