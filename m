From: cr <cr@orcon.net.nz>
Subject: Re: Can't see my drives
Date: Sat, 24 Aug 2002 20:46:56 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020824072230.44DD95154C@smtp.orcon.net.nz>
References: <Pine.LNX.4.21.0208232340290.8397-100000@Consulate.UFP.CX>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0208232340290.8397-100000@Consulate.UFP.CX>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Riley Williams <rhw@infradead.org>, Ray Olszewski <ray@comarre.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

On Saturday 24 August 2002 10:47, Riley Williams wrote:

>
> Possibly of relevance here, although I'm not certain of this: Somewhere
> in the 2.4 kernel timeframe, a recommendation was made that the nodename
> for SCSI CD's change from /dev/scdN to /dev/srN if my memory is correct,
> and I think Red Hat made the change between 7.1 and 7.2 so it could
> simply be that the nodename /dev/scd0 should now be /dev/sr0 instead.

My RH 7.2 still has, in /dev, files named scd0 to scd7, also srnd0 to srnd7, 
but no sr0 etc.     It may be that they changed between 7.2 and 7.3, which I 
don't have.

cr

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
