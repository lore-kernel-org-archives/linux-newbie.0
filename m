From: Jerry James Haumberger <jerryjh@imt.net>
Subject: how to swap ctrl/caps lock keys for joe?
Date: Sat, 14 Dec 2002 18:13:05 +0000 (UTC)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212141811.LAA21655@cu.imt.net>
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, Ray --

>I don't do this myself, but there is a standard set of tools for remapping 
>the keyboard with Linux consoles. For the details (I can't say it any 
>better than they do), check the Keyboard and Console HowTo, available at 
>(for example):

>         http://www.tldp.org/HOWTO/Keyboard-and-Console-HOWTO.html

Thank you for the reference, however, it was both a difficult and
simple task to find the solution.  The difficult part was the problem
with finding the problem documented on the Internet, and then sift
through all of that with a fine-toothed comb.

To make the long problem simple, here's the solution for swapping
the left Control key and Caps Lock keys for greater ease of use
with WordStar control key combinations while under BasicLinux:

1.  I got kbd.tgz from the Slackware 3.5 ftp site and extracted
us.map and loadkeys.

2.  Next, I put us.map in /usr/lib/kbd/keytables/ .

3.  Then I moved loadkeys to /usr/bin .

4.  After that, I modified us.map to make "keycode 58 = Control"
    (instead of 29) and "keycode 29 = Caps_Lock" (instead of 58).

5.  Finally, I added "loadkeys us.map" at the bottom of my rc.S
    file at /etc/rc.d/ and rebooted.
    
Done... and now, at last, I can easily have my WordStar Control key
functioning where it belongs -- and *anywhere* I use it! ;-)
__________________________________________________________
Jerry... on a 486 DX2-50MHz with 8MB RAM in BasicLinux 1.7


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
