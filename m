From: Hal MacArgle <haltec@kvinet.com>
Subject: cdrecord failure report??
Date: Mon, 3 May 2004 15:27:57 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040503192757.GA493@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Greetings: My faithful, for years, CDRW system just failed for no
_apparent_ reason with the following report:
-----------------------------------------------------------------------=
-------
Script started on Mon May  3 14:35:46 2004
root@lnx2:~# cdrecord -checkdrive
Cdrecord 2.00.3 (i686-pc-linux-gnu) Copyright (C) 1995-2002 J=F6rg Schi=
lling
scsidev: '0,3,0'
scsibus: 0 target: 3 lun: 0
Linux sg driver version: 3.1.24
Using libscg version 'schily-0.7'
Device type    : Removable CD-ROM
Version        : 2
Response Format: 2
Capabilities   : SYNC=20
Vendor_info    : 'YAMAHA  '
Identifikation : 'CRW8424S        '
Revision       : '1.0j'
Device seems to be: Generic mmc CD-RW.
cdrecord: Warning: controller returns zero sized CD write parameter pag=
e.
cdrecord: Warning: controller returns wrong page 0 for CD write paramet=
er page (5).
	< repeated exact report three more times>
Using generic SCSI-3/mmc CD-R driver (mmc_cdr).
Driver flags   : MMC SWABAUDIO=20
Supported modes:=20
root@lnx2:~# exit
Script done on Mon May  3 14:35:57 2004
-----------------------------------------------------------------------=
-------

	This from cdrecord 2.00.3 - same from cdrecord 1.1x, so it
must be either the Yamaha drive or the BusLogic controller but I
don't know which not having "spares" of either to swap.. Of course
the standard /proc/scsi/scsi and cdrecord -scanbus returns normally.
Cdrecord reporting "controller" can, possibly, mean the SCSI
controller or the controller on the drive. Just guessing..

	The BusLogic controller works fine with a SCSI scanner so I'm
inclined to think it must be the Yamaha drive but would like some
input from anyone who's had a similar event.. And yes, this was
discovered when I tried to blank and/or write to a CDR as I've done
so many times before...

	TIA and cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
          =20
	     Anyone can pile complexity upon complexity;
                  only a genius can truly simplify..
=2E
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
