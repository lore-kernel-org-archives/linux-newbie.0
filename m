From: Ray Olszewski <ray@comarre.com>
Subject: Re: Modem Inaccessible
Date: Mon, 17 Jul 2006 08:54:59 -0700
Message-ID: <44BBB2D3.7060604@comarre.com>
References: <200607170719.k6H7J96s007791@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200607170719.k6H7J96s007791@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I can't be sure, Peter, but my hunch is that you are looking in the 
wrong place. I'm assuming the modem is attached to a serial port and is 
not one of those pseudo-modems that requires a special module (If I'm 
wrong, then you really left out important info) in what follows.

Serial port support is all but always compiled into kernels, not added 
as modules. (And I don't see anything that looks like a serial-port 
module in either of the lists you sent us, in any case.) But setting up 
serial ports so they actually work requires running "setserial" with 
appropriate values.

I'd suggest you approach this by:

(a) Finding out what /dev/modem is a symlink to
(b) Running setserial on that device (e.g., "setserial /dev/ttyS0") to 
see what settings are present.

If they are different between Slackware and Fedora, that points to your 
problem. If you can't spot it yourself, post here the COMPLETE results 
of this testing and probably someone can help you spot it.

You might also check the init-script sructures of the two distros to see 
where and how (and even if) both run setserial.

Peter wrote:
> Slackware 10.2, kernel 2.6.16
> 
> Suddenly I cannot access my modem.
> 
> Minicom will just stay offline.
> 
> efax version 0.9
> minicom version 2.1
> 
> Giving command: fax receive
> I get:
> 
> efax: 12:25 opened /dev/modem
> efax: 12:25 Error: tcgetattr on fd=3 failed: Input/output error
> efax: 12:25 Error: fax device write: Input/output error
> efax: 12:29 Error: fax device write: Input/output error
> efax: 12:31 sync: dropping DTR
> efax: 12:31 Error: tcgetattr on fd=3 failed: Input/output error
> efax: 12:31 Error: tcgetattr on fd=3 failed: Input/output error
> efax: 37:31 Error: sync: modem not responding
> efax: 37:31 Error: tcgetattr on fd=3 failed: Input/output error
> efax: 37:31 done, returning 2 (unrecoverable error)
> There were errors (see 0717143714.log).
> 
> I tried it with kernel 2.4.31, it will not work either.
> 
> I moved over to Fedora4, same machine, same HD. Minicom is on-line and dials 
> and pppd dialing is working as well, meaning there is nothing wrong with the 
> hardware.
> 
> Here is the output of lsmod in Fed4 w/o the snd_ bits:
> 
> Module                  Size  Used by
> md5                     4033  1 
> ipv6                  268097  8 
> parport_pc             28933  1 
> lp                     13001  0 
> parport                40585  2 parport_pc,lp
> autofs4                29253  2 
> it87                   23521  0 
> eeprom                  7377  0 
> i2c_sensor              3521  2 it87,eeprom
> i2c_isa                 2241  0 
> rfcomm                 42333  0 
> l2cap                  30661  5 rfcomm
> bluetooth              56133  4 rfcomm,l2cap
> sunrpc                167813  1 
> ipt_REJECT              5569  1 
> ipt_state               1857  4 
> ip_conntrack           41497  1 ipt_state
> iptable_filter          2881  1 
> ip_tables              19521  3 ipt_REJECT,ipt_state,iptable_filter
> ide_scsi               18761  0 
> scsi_mod              148105  1 ide_scsi
> dm_mod                 58101  0 
> video                  15941  0 
> button                  6609  0 
> ac                      4805  0 
> uhci_hcd               35152  0 
> ehci_hcd               41037  0 
> shpchp                 94405  0 
> i2c_viapro              8017  0 
> i2c_core               21569  5 it87,eeprom,i2c_sensor,i2c_isa,i2c_viapro
> snd_via82xx            30081  1 
> gameport               18633  1 snd_via82xx
> soundcore              10913  2 snd
> via_rhine              28361  0 
> mii                     5441  1 via_rhine
> dmfe                   23525  0 
> floppy                 65269  0 
> ext3                  132553  3 
> jbd                    86233  1 ext3
> 
> And here lsmod of Slack:
> Module                  Size  Used by    Not tainted
> i2c-dev                 3620   0 (unused)
> i2c-core               12676   0 [i2c-dev]
> snd-pcm-oss            36736   0
> snd-mixer-oss          12376   2 [snd-pcm-oss]
> pci_hotplug            15236   0
> uhci                   24284   0 (unused)
> ehci-hcd               17516   0 (unused)
> usbcore                59148   1 [uhci ehci-hcd]
> snd-via82xx            13376   2
> gameport                1420   0 [snd-via82xx]
> Module                  Size  Used by    Not tainted
> i2c-dev                 3620   0 (unused)
> i2c-core               12676   0 [i2c-dev]
> snd-pcm-oss            36736   0
> snd-mixer-oss          12376   2 [snd-pcm-oss]
> pci_hotplug            15236   0
> uhci                   24284   0 (unused)
> ehci-hcd               17516   0 (unused)
> usbcore                59148   1 [uhci ehci-hcd]
> snd-via82xx            13376   2
> gameport                1420   0 [snd-via82xx]
> soundcore               3396   4 [snd]
> via-rhine              12336   0 (unused)
> mii                     2272   0 [via-rhine]
> pcmcia_core            39172   0
> ide-scsi                9392   0
> dmfe                   12577   1
> crc32                   2880   0 [via-rhine dmfe]
> agpgart                45508   0 (unused)
> lp                      6404   0
> parport_pc             15044   1
> parport                22824   1 [lp parport_pc]
> 
> Where could be the hitch that the modem is not responding in slackware?
> 
> Thanks for any help!

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
