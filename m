From: Peter <heisspf@skyinet.net>
Subject: Re: Modem Inaccessible
Date: Wed, 19 Jul 2006 14:47:16 +0800
Message-ID: <200607190647.k6J6lGVF006179@skyinet.net>
References: <44BCF54B.2000302@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Tue, 18 Jul 2006 07:50:51 MST."
             <44BCF54B.2000302@comarre.com> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

OK, I do not have anymore a /dev/ttyS0. Why, I have no idea. And that seems to 
be the reason that the modem does not respond.

Now I created the device node with mknod  /dev/ttyS0 c 4 64, with permissions 
set to root:tty.

Then I get
setserial /dev/ttyS0 -a
/dev/ttyS0, Line 0, UART: 16550A, Port: 0x03f8, IRQ: 4
        Baud_base: 115200, close_delay: 50, divisor: 0
        closing_wait: 3000
        Flags: spd_normal skip_test auto_irq

and the modem responds to minicom, microcom and fax receive/send.

ray@comarre.com said:
>> Fedora4 does not run setserial neither does DSL.
> How do you know? Did you grep for "setserial" in the appropriate  directory
> (probably /etc/init.d)? If not, how did you check this? 

That is exactly what I did, grep for setserial in the appropriate directories.

Yes with kernels 2.4.31, 2.6.14 I had a /dev/ttys0, however, not anymore with 
kernel 2.6.20. With kernel 2.17 modem responded to a setting of a symlink to 
/dev/tts/1.

This symlink I kept with kernel 2.6.20 and the trouble started.

Just now I resolved the issue. In /etc/udev/rules.d/modem.rules I changed the 
setting from NAME="/dev/tts/1" to NAME="ttyS0". Then running rc.udev and I 
have my
/dev/ttyS0 back.

ls -l /dev/modem
lrwxrwxrwx  1 root root 5 2006-07-19 14:26 /dev/modem -> ttyS0

Much appreciated your help.

Regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
