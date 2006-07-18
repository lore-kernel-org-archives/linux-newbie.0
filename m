From: Ray Olszewski <ray@comarre.com>
Subject: Re: Modem Inaccessible
Date: Tue, 18 Jul 2006 07:50:51 -0700
Message-ID: <44BCF54B.2000302@comarre.com>
References: <200607180711.k6I7B1sn003807@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200607180711.k6I7B1sn003807@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

See comments below.

Peter wrote:
> Thanks Ray!
> 
> ray@comarre.com said:
> 
>>I'm assuming the modem is attached to a serial port
> 
> 
> Yes, has been for years.
> 

It would help, Peter, if you were more thorough about indicating which 
configuration each report is from, I'm assuming the next few entries are 
from the Slackware version that does NOT work.

> ls -l /dev/modem
> lrwxrwxrwx  1 root root 10 2006-07-18 20:29 /dev/modem -> /dev/tts/1
> 
> sudo /sbin/setserial /dev/ttyS1 -a
> 
> /dev/ttyS1, Line 1, UART: unknown, Port: 0x02f8, IRQ: 3
>         Baud_base: 115200, close_delay: 50, divisor: 0
>         closing_wait: 3000
>         Flags: spd_normal skip_test auto_irq
> 
> ttyS1 used to be the place from which to run the modem I know for sure when I 
> had kppp installed.
> 
>  sudo /sbin/setserial /dev/ttyS2 -a
> 
> /dev/ttyS2, Line 2, UART: unknown, Port: 0x03e8, IRQ: 4
>         Baud_base: 115200, close_delay: 50, divisor: 0
>         closing_wait: 3000
>         Flags: spd_normal skip_test auto_irq

If the above is Slackware, then ...

1. What does "sudo /sbin/setserial /dev/ttyS0 -a" report for it?

2. What does "sudo /sbin/setserial /dev/tts/1 -a" report for it?

3. What does "sudo /sbin/setserial /dev/tts/0 -a" (assuming there is a 0 
there) report for it?

4. During init, does anything about serial ports appear in dmesg output? 
If so, quote it in your reply.

As a general matter, the "UART: unknown" is usually (in my actual 
experience, always) an indicator that the device entry is not pointing 
to an actual serial port.

> Now this is the output in Fed4 at ttyS0:
> 
> /dev/ttyS0, Line 0, UART: 16550A, Port: 0x03f8, IRQ: 4
>         Baud_base: 115200, close_delay: 50, divisor: 0
>         closing_wait: 3000
>         Flags: spd_normal skip_test
> 
> To which modem etc. connects properly.

I don't know what "modem etc." means. Do you mean that in Fedora, 
/dev/modem is a symlink to this device?

> Doing
> sudo /sbin/setserial /dev/ttyS1 uart 16550A
> I get
> heisspf@~:$ sudo /sbin/setserial /dev/ttyS1 -a         
> /dev/ttyS1, Line 1, UART: 16550A, Port: 0x02f8, IRQ: 3
>         Baud_base: 115200, close_delay: 50, divisor: 0
>         closing_wait: 3000
>         Flags: spd_normal skip_test auto_irq

Are you back to talking about the Slackware setup again? If so, setting 
the UART by hand doesn't help if the device is not actually pointing to 
physical hardware.

> With microcom which I snatched from my DSL box where again the modem is 
> working properly:

Is the "DSL box" a physically different computer, or the same one booted 
differently? And are we once again back to Slackware again?

> sudo  /usr/local/Microcom/microcom
> Try /dev/ttyS0
> /dev/ttyS0 not found

This is odd. What does "ls -l /dev/ttyS*" report?

> Try /dev/ttyS1
> /dev/ttyS1 not responding (after I set the uart 16550A)
> 
> Try /dev/ttyS2
> /dev/ttyS2 not responding
> 
> Try /dev/ttyS3
> /dev/ttyS3 not responding
> 
> In this kernel 2.6.16 there is no more ttyS0 instead /dev/tts/1 to 3. I know 
> it was working with kernel 2.6.14 but now it does not even work with 2.4.31.

Did it used to work with 2.4.31? Or is what you are describing in fact 
te result of kernel updates? If you go back to a Slackware kernel that 
the modem presiously worked with, does it once again work?

Peter, there is a real and important difference between these two 
descriptions:

	"The modem suddenly stopped working"
	"I changed to a new kernel and the modem doesn't work"

Which of them is the correct summary of your Slackware observations?

> Something broke somewhere.
> 
> Fedora4 does not run setserial neither does DSL.

How do you know? Did you grep for "setserial" in the appropriate 
directory (probably /etc/init.d)? If not, how did you check this?

> Regards

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
