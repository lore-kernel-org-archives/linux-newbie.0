From: Terrence Martin <tmartin@physics.ucsd.edu>
Subject: Re: Heavy load of graphics
Date: Tue, 05 Oct 2004 09:25:37 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4162CB01.1040200@physics.ucsd.edu>
References: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>hi
>
>well i am using linux 9.0 kernel 2.4 ver. 128 Mb RAM
>
>i have seen not only on this sytem but the other one
>having 512 Mb RAM the most of the memory is lost or
>taken by graphics or xserver. on my system around 90%
>is occupied by the xsever and on the sys with 512 Mb
>RAM around 70% is occupied. how to reduce this load. i
>oculd not get any article or stuff relate to this . if
>we can do something in kernel or in some way reduce
>this load while working in GUI envt
>
>thanks
>
>Ankit
>
>________________________________________________________________________
>Yahoo! Messenger - Communicate instantly..."Ping" 
>your friends today! Download Messenger Now 
>http://uk.messenger.yahoo.com/download/index.html
>-
>To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at  http://www.tux.org/lkml/
>
>  
>
Can you post the following

The output of the free command

# free

As well as the top 10 or so processes copied from top?

Run top
# top

Then hit M (capital M) to sort by memory,

Then past the results to the email.. It is a lot easier to know what is 
going on if everyone can see the actual memory information.

For example

$ free
             total       used       free     shared    buffers     cached
Mem:       1550128    1515028      35100          0     160944     801932
-/+ buffers/cache:     552152     997976
Swap:      2449904      19928    2429976

Output of top, sorted by memory.

19725 tmartin   15   0  145M 145M 26196 S     2.7  9.5  20:17   0 
mozilla-bin
 9925 root      15   0  135M  66M  8472 S     3.5  4.3 270:54   0 X
17665 tmartin   15   0 20912  20M 16488 S     0.0  1.3   0:00   0 kdeinit
17632 tmartin   15   0 17260  16M 14352 S     0.1  1.1   2:40   0 kdeinit
17659 tmartin   15   0 15332  14M 12684 S     0.0  0.9   0:07   0 kdeinit
17657 tmartin   15   0 14916  14M 12564 S     0.0  0.9   0:00   0 kdeinit
23837 tmartin   15   0 14860  14M 12676 S     0.0  0.9   0:00   0 kdeinit
19561 tmartin   15   0 14792  14M 12584 S     0.0  0.9   0:00   0 kdeinit
19638 tmartin   15   0 14652  14M 12560 S     0.0  0.9   0:00   0 kdeinit
17630 tmartin   15   0 14568  14M 12748 S     0.0  0.9   0:02   0 kdeinit


In my case I am in good shape. I am not using much swap, X is using 
133MB of RAM but only 66MB are actually resident. That is there is only 
66MB in physical memory, even though the memory size is 135MB.  Mozilla 
on the other hand has asked for 145MB of RAM and it is using all of it.

One way to reduce the Xwindows RAM footprint a bit is to run a much 
smaller window manager. For example instead of the heavier Gnome or KDE 
run XFCE.

The current version of Fedora Redhat supports this I believe.

Terrence

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
