From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: configuring sendmail to cope with AOL
Date: Fri, 23 May 2003 08:06:37 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAGELBDBAA.Riley@Williams.Name>
References: <200305230143.h4N1hhRp019819@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305230143.h4N1hhRp019819@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: brownh@hartford-hwp.com, ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Hi Haines.

 > Yes. Each time I connect, I have a different address. I configure
 > my address to be 0.0.0.0.

Is that the address you tell sendmail to use? If so, that's probably
the real problem with AOL refusing to permit your emails.

Incidentally, the sendmail setting that is SUPPOSED to forward ALL
email through a particular system is the SmartRelay setting, which
would read as follows...

	DSmailrelay.isp.lan

...to forward all outgoing emails to mailrelay.isp.lan from your
system. Just find the line beginning DS and put the full domain name
of your ISP's SMTP host (aka mail relay aka mail forwarder) there.

It works for me, and as far as the recipient is concerned, all that
changes is that there's an extra Received: line in the header.

Also, there's no requirement that you are using an email address in
that ISP's domain, only that you are connecting to the Internet through
them.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.


 > -----Original Message-----
 > From: linux-newbie-owner@vger.kernel.org
 > [mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Haines Brown
 > Sent: Friday, May 23, 2003 2:44 AM
 > To: ray@comarre.com
 > Cc: linux-newbie@vger.kernel.org
 > Subject: Re: configuring sendmail to cope with AOL
 > 
 > 
 > > You have a dynamic address? I wouldn't guess it from your whois and
 > > DNS records.
 > 
 > 
 > > If you want to use the ISP's relay *only* for AOL and Netscape mail,
 > > that is harder, because the MTA now has to take different actions
 > > based on the destination. sendmail can do that too, but it requires
 > > more intricate configuration. You will need a real sendmail
 > > reference for this, or a real sendmail expert, since it is not a
 > > common setup.
 > 
 > That's what I was afraid of. Apparently much easier to do in other
 > MTAs. I've tangled with sendmail before and am now gun-shy. Since I'm
 > migrating from the distribution I've been using for many years to
 > another, it will offer an opportunity to jump from sendmail to another
 > MTA as well. Meanwhile I'll see if I can scrape up some specific
 > directions. 
 > 
 > Maybe something will come up in a google search.
 > 
 > > Some rule-of-thumb generalizations: Any ISP that sells service with
 > > dynamic addresses is likely to provide a forwarder.
 > 
 > Well, at least the thought is comforting.
 > 
 > Thanks.
 > 
 > Haines Brown
 > -
 > To unsubscribe from this list: send the line "unsubscribe 
 > linux-newbie" in
 > the body of a message to majordomo@vger.kernel.org
 > More majordomo info at  http://vger.kernel.org/majordomo-info.html
 > Please read the FAQ at http://www.linux-learn.org/faqs
 > 
 > ---
 > Incoming mail is certified Virus Free.
 > Checked by AVG anti-virus system (http://www.grisoft.com).
 > Version: 6.0.483 / Virus Database: 279 - Release Date: 19-May-2003
 > 
---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.483 / Virus Database: 279 - Release Date: 19-May-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
