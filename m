From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Compiling sg.o only (2.4.20)
Date: Thu, 18 Sep 2003 09:47:02 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309180947.02439.pa3gcu@zeelandnet.nl>
References: <20030915173911.GA1802@lnx2.w8mch.ampr.org> <200309152113.48288.pa3gcu@zeelandnet.nl> <20030917190122.GA463@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030917190122.GA463@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Wednesday 17 September 2003 21:01, Hal MacArgle wrote:
> I've just tried a build of sane-backend-1.0.6, then 1.0.11 then the
> newest 1.0.12 and they are all the same with Slack9.0, 2.4.20.. sane-
> find-scanner; cdrecord -scanbus; cat /proc/scsi/scsi all find the
> scanner as sga; sg0 or scanner (with the symlink.)

I have read (somewhere) that when sg0 is compiled into the kernel starnge 
things can happen when one is expecting the same things to happen when he/she 
has it compiled as a module. That could explain the strange behviour.

> Invoking scanimage -L, returns "No scanners were identified," the
> proper report should be, in this case, "hp:/dev/sg0", if it was
> working correctly... I'm stumped.. I've read the FAQ's and RTFM's and
> Man's that all say the same thing - if sane-find-scanner, etc finds
> it there can only be one problem: The scanner is not supported by
> SANE, but all the above list it by model number and firmware version
> plus it does work beautifully with Slack8.0 and 2.4.18, as well as
> several kernels before '18'... Make version and gcc version OK...
> I've even tried running with 'ide-scsi' either running or not. One
> FAQ mentioned that as a possibility..
>
> There is supposed to be a bin version for Slackware8.1, but I
> couldn't find it with my browser..

No idea i dont have a scanner, IMHO scanners are out of date if one has a 
digital camers, i use my camera as a scanner, simply take a photo and print 
it out.

>
> I've just found an entry in '/boot/config' that may mean something:
> CONFIG_KMOD=y in 2.4.20 and not set in 2.4.18/Slack8.0... I don't
> know what KMOD is, but I note that dmesg booting 2.4.20 reports it
> "can't exec modprobe -s -k scsi_hostadapter err no 2".. It repeats this
> three times.. Can it be a re-compile with this unset might do the job?

KMOD is the kernel's automodprobe proceedure, meaning the kernel does modprobe 
for you when you do something like (for example) attach a device via 
hotpluging.

Read /usr/src/linux/Documentation/Configure.help 
Use the "/" node, type in KMOD and hit enter.

It would be interesting to know what happens if you compiled another kernel 
defineing sg as a module, you could use the /boot/config file to do this.
Copy /boot/config to /usr/src/linux and rename it .config, edit line 454 from;
CONFIG_CHR_DEV_SG=y
to
CONFIG_CHR_DEV_SG=m
save file,
edit the Makefile change line 4 from;
EXTRAVERSION =
to
EXTRAVERSION = -1
save file;
do;
make oldconfig
make dep clean bzImage modules modules_install
All finished do;
cp arch/i386/boot/bzImage /boot/vmlinuz-2.4.20-1
cp System.map /boot/System.map-2.4.20-1
edit lilo.conf and add the following somewhere in the file;

image=/boot/vmlinuz-2.4.20-1
        label=2.4.20-1
#        append="hdc=ide-scsi"
#       vga=791
        read-only
        root=/dev/hdXx
# Change /dev/hdXx to suit your system.
save file
run lilo -t
If all is ok then rerun lilo as is.
/sbin/lilo
reboot

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
