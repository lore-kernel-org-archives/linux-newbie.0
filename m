From: "frans toruan" <frans@acbi.co.id>
Subject: RE: ADSL connection via RHL 90
Date: Wed, 16 Feb 2005 11:09:54 +0700
Message-ID: <000701c513dd$709106e0$6510ea0a@acbi.local>
References: <4211D80B.7070302@cwazy.co.uk>
Reply-To: <frans@acbi.co.id>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <4211D80B.7070302@cwazy.co.uk>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Jim Nelson' <james4765@cwazy.co.uk>
Cc: Linux newbie list <linux-newbie@vger.kernel.org>


Many thanks for your comments,

# fx > 
# fx > Does your ISP have its own DNS servers? If so, you might need to use
# fx > dhcpcd (some
# fx > ISPs require you to use their own DNS servers to reduce network
# fx > load.)

Yes, 202.134.0.155 and 202.134.2.5 are DNS servers of our ISP. I already
inputted those into the /etc/resolv.conf :

	resolv.conf :
search telkom.net
nameserver 10.234.16.10
nameserver 202.134.0.155
nameserver 202.134.2.5

( note : 10.234.16.10 is DNS server in my internal/LAN )

# fx > dhcpcd (some

If I still have to set dhcpcd, then, how should I do that ?

Yours, 


Frans T.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
