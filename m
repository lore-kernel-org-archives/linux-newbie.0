From: Eduard =?iso-8859-1?q?Gim=E9nez?= <edu@badopi.org>
Subject: Re: Torrent and it's clients??
Date: Sun, 8 Oct 2006 17:22:55 +0200
Message-ID: <200610081722.55287.edu@badopi.org>
References: <20061008143918.GA974@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20061008143918.GA974@lnx2.kvinet.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

On Sunday 08 October 2006 16:39, Hal wrote:
 > Flushed with pride I tried two small files, 3mB and 9mB and the
> bottom dropped out of it.. The d/l started at a typical 3.0kBs then
> after half the first file it went to zero and stayed there for the
> next 8 hours... What happened??  Can I presume that one of the
> servers was down or extremely busy, if I'm reading how it works??

BitTorrent works in a decentralized way, there are no servers that shall fail. 
Probably what is happening to you is that the other peers don't have the 
complete file. It's something habitual (currently I've a file stopped at 95%, 
and no other peer have it complete...), and you can only do two things:
	- wait
	- cancel 

Greetings,

-- 
edu

firmitas, utilitas, venustas
- Vitruvius, De Architectura
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
