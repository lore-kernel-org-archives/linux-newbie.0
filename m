From: Ed Vance <EdV@macrolink.com>
Subject: RE: devfs + PCI serial card = no extra serial ports
Date: Fri, 7 Mar 2003 17:30:53 -0800
Sender: linux-kernel-owner@vger.kernel.org
Message-ID: <11E89240C407D311958800A0C9ACF7D1A33DD7@EXCHANGE>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+linux-kernel=40quimby.gnus.org@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: 'Bryan Whitehead' <driver@jpl.nasa.gov>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

On Fri, Mar 07, 2003 at 4:59 PM, Bryan Whitehead wrote:
> 
> Quick question: What PCI serial port add on card works with devfs in 
> kernel 2.4.19 out of the box? No pissing around?
> 
> While I'm messing around with the one I got (that doesn't 
> work) I need 
> one that does... any suggestions??
> 
> Thanks to all for the help!!
> 
 [ snip ]

Bryan,

Anything in the /usr/src/linux*/drivers/char/serial.c driver's
serial_pci_tbl list (~line 4537) will be recognized. Also, a card _without_
a parallel port would solve the port ordering problem. 

Cheers,
Ed

---------------------------------------------------------------- 
Ed Vance              edv (at) macrolink (dot) com
Macrolink, Inc.       1500 N. Kellogg Dr  Anaheim, CA  92807
----------------------------------------------------------------
