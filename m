From: Robin Doer <robin@robind.de>
Subject: Re: iptables or ip6tables firewall
Date: Thu, 21 Nov 2002 18:17:00 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021121171655.4317E6D43D@basicbox3.server-home.net>
References: <200211202045.59886.r4mz3z@yahoo.es>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211202045.59886.r4mz3z@yahoo.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Am Donnerstag, 21. November 2002 02:45 schrieb r4mz3z:
> Hi friends...
>   I was going to make a firewall (just learning) when I see that in
> RedHat7.3 not only there are iptables daemon, ip6tables daemon too.
>
>   Which is the diference between iptables and ip6tables and which is =
better
> to make a firewall?

man ip6tables tells me:

NAME
       ip6tables - IPv6 packet filter administration

DESCRIPTION
       ip6tables  is  the  IPv6  enabled  version of the iptables
       packet filter management program. "ip6tables --help"  will
       list  the available commands and options. They're a subset
       of the iptables' commands and  options,  which  are  docu=AD
       mented in iptables(8).

SEE ALSO
       iptables(8)

IMHO, the functionalities of iptables and ip6tables are identical, ip6t=
ables=20
is the IPV6-version of iptables.

Robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
