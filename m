From: Bill Pleasants <Bill_Pleasants@pghmail.com>
Subject: Printer error
Date: Sun, 15 Dec 2002 22:14:49 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DFD4529.1040700@pghmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello,
After installing RH 8.0 in my HP Pentium II, my first successful installation,
I installed a Brother HL-720 printer. I set it up local.  The Printer 
Administration window shows:
 Command:    lpr

 Driver:          Generic Printer (SGENPRT)

 Location:  

After printing 2 of 3 pages from
Mapquest, the printer indicated toner out.  I replaced the cartridge and
there was an error light which can be cleared by unplugging the printer
cable and cycling the printer off.  I reset the print queue and the same
2 pages printed and the error light flashed.  Rebooted - same error light.
Attempts to print additional items failed.  Later I entered 
"lprm" to cancel anything pending and got
"local host IP not available."  When I entered
"/etc/init.d/lpd stop" I got 
"[FAILED]"
I repeated it and got
"[FAILED]"
"local host IP not available"
In the panel is a ? which when clicked gives
"Temporary error in name resolution."
So far I haven't learned what this IP is about. I would appreciate help.  
Yours truly,
Bill


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
