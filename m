From: whitnl73@juno.com
Subject: Re: devfs + PCI serial card = no extra serial ports
Date: Tue, 11 Mar 2003 18:12:14 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030311.181500.8.1.whitnl73@juno.com>
References: <3E692281.10906@jpl.nasa.gov>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E692281.10906@jpl.nasa.gov>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: driver@jpl.nasa.gov
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

On Fri, 7 Mar 2003, Bryan Whitehead wrote:

> It seems devfsd has an annoying "feature". I bought a PCI card to get a
> couple (2) more serial ports. The kernel doesn't seem to set up the
> serial ports at boot, so devfs never creates an entry. However, post
> boot, since there is no entries, I cannot configure the serial ports
> with setserial. So basically devfsd = no PCI based serial add on?
>
> 03:05.0 Serial controller: NetMos Technology 222N-2 I/O Card (2S+1P)
> (rev 01) (prog-if 02 [16550])
> 	Subsystem: LSI Logic / Symbios Logic (formerly NCR): Unknown device 0002
> 	Flags: medium devsel, IRQ 17
> 	I/O ports at ecf8 [size=8]
> 	I/O ports at ece8 [size=8]
> 	I/O ports at ecd8 [size=8]
> 	I/O ports at ecc8 [size=8]
> 	I/O ports at ecb8 [size=8]
> 	I/O ports at eca0 [size=16]
>
>
> mknod ttyS2 c 4 66
> mknod ttyS3 c 4 67
> setserial ttyS2 port 0xecf8 UART 16550A irq 17 Baud_base 9600
> setserial ttyS3 port 0xece8 UART 16550A irq 17 Baud_base 9600

Why are you messing with baud_base?  Don't, unless you really know what
you are doing.  A normal 16550a with baud_base set to 9600 will run at
115200 when an app tries to run it at 9600.  baud_base is just the
quotient the serial driver uses to calculate the divisor needed to
run the UART at a given speed.
>
> I hoped after "setting up" the serial ports with setserial some magic
> would happen and they would apear in /dev/tts... but I was wrong.
>
> gets me working serial ports... but it's not in /dev... :O
>
can you not make them?  As in:

#mknod /dev/tts/5 c 4 69
...

> Am I just screwed?
>
> If so, what would be a good add on PCI based solution for more serial
> ports that WORKS with devfsd? (I don't want to disable devfs as this
> opens up a different set of problems)
>
> Thanks for any replay!
>
>
Lawson
--
---oops---


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
