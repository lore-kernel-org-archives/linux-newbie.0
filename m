From: Theodore Ts'o <tytso@mit.edu>
Subject: Re: devfs + PCI serial card = no extra serial ports
Date: Tue, 11 Mar 2003 04:07:03 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030311090703.GA13389@think.thunk.org>
References: <11E89240C407D311958800A0C9ACF7D1A33DD5@EXCHANGE>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <11E89240C407D311958800A0C9ACF7D1A33DD5@EXCHANGE>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ed Vance <EdV@macrolink.com>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org, Bryan Whitehead <driver@jpl.nasa.gov>

On Fri, Mar 07, 2003 at 03:57:56PM -0800, Ed Vance wrote:
> 
> Will Bryan get the proper devfs entries if he patches serial.c to 
> recognize his card at kernel initialization, or is there more 
> weirdness expected? 

The point is that with devfs, it requires a kernel patch.  And if you
have an ISA card, where you can't do this kind of autoconfiguration,
and you're using devfs, you're *toast*.  Without devfs, you just use
setserial to configure the necessary ports, and you're done.

(Granted, these days, the last point may not matter since ISA is
getting killed off pretty effectively by Microsoft refusing the
certify systems against recent Windows OS's if they contain ISA buses
--- one of the good things Microsoft has done for the computer
industry.  :-)

						- Ted
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
