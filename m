From: Chuck Gelm <nc8q@gelm.net>
Subject: pcmcia-cs quit working
Date: Sat, 04 Jan 2003 12:50:17 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E171ED9.F3BC59C4@gelm.net>
References: <200212081837.LAA15273@cu.imt.net> <3DF44FE9.69FB5E4D@ihug.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Howdy, Y'all:

  Now when I plug in any of four cards there are no
beeps and no modules are loaded.  Under Windows98se
these cards are still recognized, so it seems to be
a linux problem rather than a hardware problem.

 The last thing I edited before things quit working was
/etc/pcmcia/ as I was trying to get my system to recognize a
Belkin 11Mbps-Wireless-Notebook-Network-Adapter model F5D6020.

 I've:

/usr/src/linux# make oldconfig && make install && make modules
 && make modules_install

/usr/src/pcmcia-3.2.3# make config && make all && make install
 
/usr/src/linux-wlan-ng-0.1.16pre7# make config && make all
 && make install

 I had pcmcia-cs v3.2.3 working.  My system was recognizing and
auto-configuring the other three pc cards,  Now, if I try to
'modprobe ds' I get these error messages:
/lib/modules/2.2.19/pcmcia/ds.o: init_module: Device or resource busy
/lib/modules/2.2.19/pcmcia/ds.o: Hint: insmod errors can be caused by
incorrect module parameters, including invalid IO or IRQ parameters
/lib/modules/2.2.19/pcmcia/ds.o: insmod /lib/modules/2.2.19/pcmcia/ds.o
failed
/lib/modules/2.2.19/pcmcia/ds.o.gz: init_module: Device or resource busy
/lib/modules/2.2.19/pcmcia/ds.o.gz: Hint: insmod errors can be caused by
incorrect module parameters, including invalid IO or IRQ parameters
/lib/modules/2.2.19/pcmcia/ds.o.gz: insmod
/lib/modules/2.2.19/pcmcia/ds.o.gz failed
/lib/modules/2.2.19/pcmcia/ds.o.gz: insmod ds failed

 Also 'depmod -a' now returns:
depmod: *** Unresolved symbols in /lib/modules/2.2.19/block/linear.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/block/raid0.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/block/raid1.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/block/raid5.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_autofw.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_cuseeme.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_ftp.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_irc.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_mfw.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_portfw.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_quake.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_raudio.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_user.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/ipv4/ip_masq_vdolive.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/ipv6/ipv6.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/misc/appletalk.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/ax25.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/econet.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/gamma.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/i2o_pci.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/i2o_scsi.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/i810.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/ipx.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/mga.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/netrom.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/r128.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/rose.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/tdfx.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/misc/x25.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/net/cops.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/net/ibmtr.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/net/irda.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/net/lanstreamer.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/net/ltpc.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/net/olympic.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/net/sktr.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/pcmcia/aha152x_cs.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/pcmcia/apa1480_cb.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/pcmcia/fdomain_cs.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/pcmcia/ibmtr_cs.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/pcmcia/qlogic_cs.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/3w-xxxx.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/53c7,8xx.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/AM53C974.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/BusLogic.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/scsi/NCR53c406a.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/a100u2w.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/advansys.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/aha152x.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/aha1542.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/aha1740.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/aic7xxx.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/atp870u.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/cpqfc.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/dtc.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/eata.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/eata_dma.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/eata_pio.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/fdomain.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/scsi/g_NCR5380.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/gdth.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/ide-scsi.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/imm.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/in2000.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/initio.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/ips.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/megaraid.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/scsi/ncr53c8xx.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/osst.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/pas16.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/pci2000.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/pci2220i.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/ppa.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/psi240i.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/scsi/qlogicfas.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/qlogicfc.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/scsi/qlogicisp.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/scsi/scsi_debug.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/seagate.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/sim710.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/scsi/sym53c416.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/scsi/sym53c8xx.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/t128.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/tmscsim.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/u14-34f.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/scsi/ultrastor.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/scsi/wd7000.o.gz
depmod: *** Unresolved symbols in /lib/modules/2.2.19/usb/microtek.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/usb/usb-storage.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/video/aty128fb.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.2.19/video/matroxfb.o.gz

 What is wrong?  How do I fix it?  What list do I go to for help?

Thanks,
Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
