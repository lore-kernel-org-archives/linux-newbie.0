From: Jesse Armand <matrix_rev2002@yahoo.com>
Subject: Nvidia graphics driver doesn't work
Date: Sun, 24 Aug 2003 06:30:13 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030824133013.51204.qmail@web10710.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I use Debian Woody 3.0
I have downloaded the nvidia graphics driver version
1.0-4496 from 
nvidia.com,
i have installed it succesfully, with sh
(filename).run 
--kernel-include-path (my kernel source path). 
 
Before it's working okay, the X-window starts
successfully.
but then the other time, I reformat my hard-disk,
reinstall my debian 
woody, recompile kernel 2.4.18 and reinstall my nvidia
driver, the 
problems happen.
 
the x-window starts with a scrambled nvidia logo, (not
just scrambled 
but it's wrecked), and the x-window won't start, and
keeps idle until i 
restart with ctrl+alt+del,
 
I check the XFree86.0.log, and after 
loading the nvidia glx extension 
there is a signal 11 error (i suppose it happens
because i press 
ctrl+alt+del)
besides that there is no problem 
 
i have configured XF86Config-4 according to readme
file, 
adding Option "NvAgp" "1" on the devices section line,
and i read the log files, the nvagp were loaded
successfully 
 
so what is the problem actually ??,
this is very weird, I don't do any system change, all
i'm doing is 
reinstalling debian, recompile kernel and reinstall
the driver, why is the 
situation could be differ ?
 
by the way i'm using GeForce4 Ti4200-8X and ASUS
A7N8X-X with nforce2 
chipset
 
so help me pls ?


__________________________________
Do you Yahoo!?
SBC Yahoo! DSL - Now only $29.95 per month!
http://sbc.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
