From: "Michael H. Warfield" <mhw@wittsend.com>
Subject: Re: Open Office - printing
Date: Thu, 30 May 2002 13:42:55 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020530174255.GA3441@alcove.wittsend.com>
References: <p05100300b91b1168860d@[168.212.25.34]>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <p05100300b91b1168860d@[168.212.25.34]>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dan Bentson-Royal <dbentson@orion.lcsd.k12.wa.us>
Cc: linux-newbie@vger.kernel.org

On Wed, May 29, 2002 at 04:21:57PM -0700, Dan Bentson-Royal wrote:
> I feel foolish - I am trying to print from OpenOffice and started 
> reading the built-in help. The very Ffirst thing I am told to do is 
> "Click the New Printer button." and I absolutely cannot find that.

	Hmmm...  Hadn't seen that before...  Maybe it's a "going to
be" feature and invokes spadmin.

> There is a printer icon in a toolbar, but it is for printing directly 
> to the default printer (I assume). The File menu has "print" and 
> "printer settings" which I thought would be gold mines. But nowhere 
> does it allow me to select my printer.

> I ran printconf-gui& and successfully entered the IP number of my 
> JetDirect printer. I think all I need to do is tell my system to use 
> that printer. I hope.

	That's all you need for you system to know where the printer is
but it doesn't help with OpenOffice.  I assume that you DID tell
the printconf app to print a test page and it printed properly.

> Sorry to be so dense!

	You're not.  Here is the way I've set up printers in OpenOffice...

	cd OpenOffice.org1.0
	./spadmin

	There you will find what you need.  Once you have added your
printer, you will probably want to edit it's properties and set the
paper type (it defaults to A4 and I use US Letter).

	Don't know if this is how they intend it to work NOW, but it's
the way it was done in the past (just chose appropriate install directory).

	Mike
-- 
 Michael H. Warfield    |  (770) 985-6132   |  mhw@WittsEnd.com
  /\/\|=mhw=|\/\/       |  (678) 463-0932   |  http://www.wittsend.com/mhw/
  NIC whois:  MHW9      |  An optimist believes we live in the best of all
 PGP Key: 0xDF1DD471    |  possible worlds.  A pessimist is sure of it!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
