From: "Haines Brown" <lists@tcob1.net>
Subject: can't open lp0 device file
Date: Wednesday, 14 Aug 2002 15:18:38 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020814_151838__30919c00@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All


I'm no longer able to print to my USB printer because jobs get stuck
in queue. I run printtool and print a test page, and nothing happens.

Then run lpc status:

     Printer               Printing Spooling Jobs  Server Subserver 
     Lexmark@hartford-hwp  enabled  enabled    1    none   19758


I try:

  # lpq
  Printer: Lexmark@hartford-hwp
  Queue: no printable jobs in queue
  Server: no server active
  Status: keeping error job 'root@hartford-hwp+215' at 13:59:33.318
  Rank   Owner/ID                  Class Job Files                 
  error  brownh@hartford-hwp+378      A   378 ERROR: aborting operations
  error  root@hartford-hwp+215        A   215 ERROR: job removal requested

It seems I'm unable to access the device interface:

     # test.doc > /dev/usb/lp0
     bash: /dev/usb/lp0: No such device

or:

     [root@hartford-hwp brownh]# checkpc -f
     Warning - Lexmark: cannot open lp device '/dev/usb/lp0' - No such
       device

The file /dev/usb/lp0 does exist and user has rw permission. The lp
and usbcore modules are loaded.

In my /var/message I find (don't know how to interpret):

Aug 14 ... kernel: usb.c: USB disconnect on device 5
Aug 14 ... kernel: hub.c: USB new device connect on bus2/2/1, assigned
   device number 6 
Aug 14 ... kernel: usb.c: USB device 6 (vend/prod 0x43d/0x52) is not
   claimed by any active driver. 
Aug 14 ... /etc/hotplug/usb.agent: ... no modules for USB product
   43d/52/100


One difference may be that previosly I had this statement in
/etc/modules.conf:

	alias usb-controller usb-uhci 

but now it is in /etc/rc.d/rc.local:

	modprobe usb-uhci


Haines Brown

-

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
