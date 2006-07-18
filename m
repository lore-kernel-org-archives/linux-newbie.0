From: Peter <heisspf@skyinet.net>
Subject: Re: Modem Inaccessible
Date: Tue, 18 Jul 2006 15:11:01 +0800
Message-ID: <200607180711.k6I7B1sn003807@skyinet.net>
References: <44BBB2D3.7060604@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Mon, 17 Jul 2006 08:54:59 MST."
             <44BBB2D3.7060604@comarre.com> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks Ray!

ray@comarre.com said:
> I'm assuming the modem is attached to a serial port

Yes, has been for years.

ls -l /dev/modem
lrwxrwxrwx  1 root root 10 2006-07-18 20:29 /dev/modem -> /dev/tts/1

sudo /sbin/setserial /dev/ttyS1 -a

/dev/ttyS1, Line 1, UART: unknown, Port: 0x02f8, IRQ: 3
        Baud_base: 115200, close_delay: 50, divisor: 0
        closing_wait: 3000
        Flags: spd_normal skip_test auto_irq

ttyS1 used to be the place from which to run the modem I know for sure when I 
had kppp installed.

 sudo /sbin/setserial /dev/ttyS2 -a

/dev/ttyS2, Line 2, UART: unknown, Port: 0x03e8, IRQ: 4
        Baud_base: 115200, close_delay: 50, divisor: 0
        closing_wait: 3000
        Flags: spd_normal skip_test auto_irq

Now this is the output in Fed4 at ttyS0:

/dev/ttyS0, Line 0, UART: 16550A, Port: 0x03f8, IRQ: 4
        Baud_base: 115200, close_delay: 50, divisor: 0
        closing_wait: 3000
        Flags: spd_normal skip_test

To which modem etc. connects properly.

Doing
sudo /sbin/setserial /dev/ttyS1 uart 16550A
I get
heisspf@~:$ sudo /sbin/setserial /dev/ttyS1 -a         
/dev/ttyS1, Line 1, UART: 16550A, Port: 0x02f8, IRQ: 3
        Baud_base: 115200, close_delay: 50, divisor: 0
        closing_wait: 3000
        Flags: spd_normal skip_test auto_irq

With microcom which I snatched from my DSL box where again the modem is 
working properly:
sudo  /usr/local/Microcom/microcom
Try /dev/ttyS0
/dev/ttyS0 not found
Try /dev/ttyS1
/dev/ttyS1 not responding (after I set the uart 16550A)

Try /dev/ttyS2
/dev/ttyS2 not responding

Try /dev/ttyS3
/dev/ttyS3 not responding

In this kernel 2.6.16 there is no more ttyS0 instead /dev/tts/1 to 3. I know 
it was working with kernel 2.6.14 but now it does not even work with 2.4.31.

Something broke somewhere.

Fedora4 does not run setserial neither does DSL.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
