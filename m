From: Bryan Whitehead <driver@jpl.nasa.gov>
Subject: devfs + PCI serial card = no extra serial ports
Date: Fri, 07 Mar 2003 14:51:45 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E692281.10906@jpl.nasa.gov>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

It seems devfsd has an annoying "feature". I bought a PCI card to get a 
couple (2) more serial ports. The kernel doesn't seem to set up the 
serial ports at boot, so devfs never creates an entry. However, post 
boot, since there is no entries, I cannot configure the serial ports 
with setserial. So basically devfsd = no PCI based serial add on?

03:05.0 Serial controller: NetMos Technology 222N-2 I/O Card (2S+1P) 
(rev 01) (prog-if 02 [16550])
	Subsystem: LSI Logic / Symbios Logic (formerly NCR): Unknown device 0002
	Flags: medium devsel, IRQ 17
	I/O ports at ecf8 [size=8]
	I/O ports at ece8 [size=8]
	I/O ports at ecd8 [size=8]
	I/O ports at ecc8 [size=8]
	I/O ports at ecb8 [size=8]
	I/O ports at eca0 [size=16]


mknod ttyS2 c 4 66
mknod ttyS3 c 4 67
setserial ttyS2 port 0xecf8 UART 16550A irq 17 Baud_base 9600
setserial ttyS3 port 0xece8 UART 16550A irq 17 Baud_base 9600

I hoped after "setting up" the serial ports with setserial some magic 
would happen and they would apear in /dev/tts... but I was wrong.

gets me working serial ports... but it's not in /dev... :O

Am I just screwed?

If so, what would be a good add on PCI based solution for more serial 
ports that WORKS with devfsd? (I don't want to disable devfs as this 
opens up a different set of problems)

Thanks for any replay!

-- 
Bryan Whitehead
SysAdmin - JPL - Interferometry Systems and Technology
Phone: 818 354 2903
driver@jpl.nasa.gov

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
