From: Kevin Curtis <kevin.curtis@farsite.co.uk>
Subject: Has anything changed in the /proc files system in kernel 2.2.22?
Date: Tue, 11 Feb 2003 17:11:50 -0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <7C078C66B7752B438B88E11E5E20E72E0EF6EB@GENERAL.farsite.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I posted this to the linux mail list yesterday but got no response.  I hope
it is not too technical for this forum.

****************************************************************************
******
Hi,
	I have a module (device driver) that creates an entry in the /proc
file system to record information about the hardware that was found when the
driver initialised.  Then later a startup script reads the /proc entry and
uses the information to load each card with firmware.  This has all worked
fine for 2.2.x Kernels up to 2.2.21 and still works fine with the latest
2.4.x Kernel, however things seem to have gone awry in 2.2.22 and 2.2.23.

This is what the /proc entry contains:

kevinc@doctor:~/tmp$ more /proc/fsx25 
4 cards installed

fsx0: FarSync T1U irq=11 mem=0xF4000000,0x1000,0xF4400000 reset
        NCB users 0
fsx1: FarSync T2U irq=3 mem=0xF4100000,0x1400,0xF4400800 reset
        NCB users 0
fsx2: FarSync T2P irq=10 mem=0xF4200000,0x1C00,0xF4401000 reset
        NCB users 0
fsx3: FarSync T4P irq=9 mem=0xF4300000,0x2800,0xF4401800 reset
        NCB users 0

This is a minimised script that reads the /proc entry

kevinc@doctor:~/tmp$ more test
        count=0

        # Read in the card status list and process each card in turn
        while read label series card irq mem state
        do
            echo "line $count $label $series $card $irq $mem $state"
            count=`expr $count + 1`
        done < /proc/fsx25

and this is the output I get

kevinc@doctor:~/tmp$ ./test
line 0 4 cards installed   
line 1 mem=0xF4100000,0x1400,0xF4400800 NCB access OK  
line 2 OK     

If I copy /proc/fsx25 to /tmp/fsx25 and modify the script to get input from
/tmp/fsx25 I get

kevinc@doctor:~/tmp$ ./test
line 0 4 cards installed   
line 1      
line 2 fsx0: FarSync T1U irq=11 mem=0xF4000000,0x1000,0xF4400000 reset
line 3 NCB users 0   
line 4 fsx1: FarSync T2U irq=3 mem=0xF4100000,0x1400,0xF4400800 reset
line 5 NCB users 0   
line 6 fsx2: FarSync T2P irq=10 mem=0xF4200000,0x1C00,0xF4401000 reset
line 7 NCB users 0   
line 8 fsx3: FarSync T4P irq=9 mem=0xF4300000,0x2800,0xF4401800 reset
line 9 NCB users 0   

Anybody got any idea what has changed here?


Kevin

-----Original Message-----
From: Ray Olszewski [mailto:ray@comarre.com]
Sent: 11 February 2003 16:20
To: linux-newbie@vger.kernel.org; Haines Brown
Subject: Re: gnome-search-tool database updating


At 10:05 AM 2/11/03 -0500, Haines Brown wrote:
>[Note: My question doubles as a test message. I had trouble with
>aliasing, and so please make sure your reply to this message does not
>go to an obviously invalid address. Thank you.]
>
>The gnome-search-tool (RedHat 8.0) returns the warning:
>
>"warning: locate: warning: database /var/lib/slocate.db' is more than
>8 days old."
>
>Is this database supposed to update itself automatically? If not, how
>is that done? (you would think there would be a utility for that built
>into the interface)

If "slocate" is similar to "locate" in its operation, updating the database 
(using its analog to "updatedb") should be scheduled as a cron job, to run 
daily at some opportune time (on my Debian systems, the installation 
default is around 6:30 AM, as part of the "cron.daily" directory of 
scripts). If your system is not running 24/7, you might need to replace 
cron with a variant (like anacron) that is designed for systems that are 
not always on.

PS - The message came through with the correct To; and From: identities.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
----------------------------------------------------------------------------
---

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
