From: Ray Olszewski <ray@comarre.com>
Subject: Re: Printing
Date: Tue, 01 Apr 2003 09:08:15 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030401085644.01e9c520@celine>
References: <1049189061.3522.1.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1049189061.3522.1.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "S. Barret Dolph" <wheds8@ms66.hinet.net>, linux-newbie@vger.kernel.org

At 05:23 PM 4/1/2003 +0800, S. Barret Dolph wrote:
>Under Mandrake 9.0 my printing jobs just hang forever. After the
>installation I was able to print and then sometimes printouts would come
>through after turning on and off the computer. Now nothing....
>Printer works fine as I tested it with my girlfriends laptop.


1. How is your printer physically connected to the system? (parport, 
serial, USB, network?) If it is a parport printer, do you have all the 
right modules installed?

2. Which lpd daemon does Mandrake 9 use?

3. What printer is it? Does the Linux printer site (I've misplaced the URL, 
so you'll need to search for it) report anything special about it and Linux?

4. What does its entry in /etc/printcap look like?

5. How are you trying to print under Linux? (What apps are you printing from?)

6. What happens if you try to dump a file directly to the printer? (How you 
do this depends on the answer to Q1, but an example would be: "cat 
/etc/passwd >/dev/lp0").

7. Assuming you are using a typical lpd daemon, what do these result in?

         A. lpr -pdefault /etc/passwd
         B. lpq

(Change "default" if the printer use a different printcap entry.)

8. Did this printer work under any other version fo Linux, or is this your 
first try using it with a Linux system? If the first, please provide details.

9. Does your general description of the problem conceal any pattern you've 
seen? For example, after a boot/init, the first attempt to print works but 
not later ones? Or power-cycling the printer causes printing temporarily to 
resume? Or ... ???

(BTW, there is nothing special about /etc/passwd except that it is a file 
that I know must be present on your system. Feel free to substitute any 
plain-text file that you prefer.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
