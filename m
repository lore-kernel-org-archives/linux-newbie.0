From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: grep for ip address on boot
Date: 19 Nov 2002 14:11:07 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1037733067.3110.10.camel@brainpress.verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

I have an adsl connection that uses a dynamic IP from my ISP.  I use the
adsl-status script to find out what my IP is at any time.
What I want to do is parse the response I get from adsl-status to
isolate my IP.  Here is the output of the adsl-status script:

adsl-status: Link is up and running on interface ppp0
ppp0      Link encap:Point-to-Point Protocol  
          inet addr:151.196.10.63  P-t-P:10.4.25.1  Mask:255.255.255.255
          UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:1492  Metric:1
          RX packets:1962 errors:0 dropped:0 overruns:0 frame:0
          TX packets:1987 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:3 
          RX bytes:1600510 (1.5 Mb)  TX bytes:362634 (354.1 Kb)

I figured that by using this command:  adsl-status | grep -o
addr:['0'-'9']

Or some combination thereof, I would be able to get the full IP
isolated.  I realize that the problem is that an IP can have from 1-3
digits between each dot, and this screws up my regexp.  Can anyone
suggest a web site or some sort of regexp that better suits this
pursuit?  

The purpose of this is to parse out my IP address and write it into a
'header(Location:http://)' command in an index.php script that will be
automatically ftp'd to another web server to simulate a bound domain
name for my dynamic IP web site.  I got the site and the redirect
working, I just want the site to be able to remain up if there is an
unattended reboot.  Obviously I will put all necessary scripting in an
init file to handle the IP parsing and ftp to allow the site to remain
accessible to all.

Thanks guys!
-- 
Regards,

Bryan Simmons

=-=-=-=-==-=-=-=-==-=-=-=-==-=-=-=-=-=
 "More hay Trigger?", "No thanks Roy,
  I'm stuffed."
=-=-=-=-==-=-=-=-==-=-=-=-==-=-=-=-=-=
http://www.sarcastic-bastard.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
