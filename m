From: "Dr.Edgar Alwers" <edgaralwers@gmx.de>
Subject: Re: How to I print to a TCP/IP Port.
Date: Fri, 14 Jan 2005 22:14:41 +0100
Message-ID: <200501142214.41988.edgaralwers@gmx.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wednesday 12 January 2005 21:23, you wrote:
> I recently migrated from WinXP to Linux (SuSE 9.2 Pro). I need some help
> setting up my new linux box to print.  My old WinXP box printed to a
> network printer.  If I open my printer properties dialog in WinXP I would
> see the printer listed with an IP address.   How do I set up my SuSE linux
> to print to this same printer.  I guess what I am asking is, how to I print
> to a TCP/IP Port.  Thanks,

In addition to Ray's answer:
linux SuSE works with Cups as printing system. You should be able - I asume
cups was installed by SuSE as the standard- to call http://localhost:631
through a browser ( if not, cups is not running ). This will give you a menu
which allows you to install a new printer as a remote one, just giving the ip
address of the network printer. Install it, as Ray suggest, as a row printer.
Hope this will help
Edgar
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
