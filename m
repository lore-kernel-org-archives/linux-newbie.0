From: Axel Siebenwirth <axel@hh59.org>
Subject: Re: very newbie
Date: Tue, 17 Sep 2002 00:14:34 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020916221434.GA6340@prester.freenet.de>
References: <0E253E40DC78F4499CEDDE9223099F43039CB6D6@xcgva040.northgrum.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <0E253E40DC78F4499CEDDE9223099F43039CB6D6@xcgva040.northgrum.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Yelland, Michael" <MYelland@northropgrumman.com>
Cc: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

Hi Michael!

On Mon, 16 Sep 2002, Yelland, Michael wrote:

> I installed RHS 7.1 but ifconfig has no idea where my 3Com eth III is...what
> to do ?  I'm learning unix quickly :)

Sorry, but it's quite late here in Germany right now. All I can help you
with, is give you some URLs to look at.

http://www.roestock.demon.co.uk/isapnptools/
http://www.roestock.demon.co.uk/isapnptools/isapnpfaq-1.html
http://hardware.redhat.com/hcl/html/howto/pnpdump.html

If I got you right, it'a 3COM Etherlink III card you have. All I needed to
do for myself with this card, is build a kernel with support for ISAPNP and
3COM Etherlink III card compiled in.


Best regards,
Axel Siebenwirth
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
