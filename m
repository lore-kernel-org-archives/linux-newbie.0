From: Washington Ratso <jobhunts02@aol.com>
Subject: Re: Ethernet driver (MAC connected to switch instead of PHY)
Date: Sat, 8 Oct 2011 00:21:35 +0000 (UTC)
Message-ID: <loom.20111008T021009-11@post.gmane.org>
References: <C86899CCB10A6C4E93D5978DCB232D4B08BAD4D6@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> 
> As per the board documents, the first MAC is connected to an L2 switch
> (Vitesse VSC7385) which is a 5 port switch (and the board actually has 5
> RJ-45 ports on it). There are no phy addresses provided in the board
> document for this, and as per the diagram, there is no MDC / MDIO signal
> between the MAC & the Switch. So my questions:
> 




I am also looking for the phy addresses of the VSC7385.  Does anyone know where
they are documented?  I am waiting to hear from Vitesse but thought I'd ask in
case someone knows.




--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
