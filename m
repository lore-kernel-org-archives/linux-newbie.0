From: Danielle <aneternalstudent@gmail.com>
Subject: Powernow-k8 (ACPI?) trouble
Date: Sat, 21 Oct 2006 10:18:51 -0800
Message-ID: <c41f42d0610211118o52eccddcyd5c760d9418f98a1@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi, all.  I'm new to the list.

Vital stats:
* Ubuntu Dapper (6.06)
* Kernel 2.6.15-27-amd64-generic
* Laptop
* Used the update-rc.d command to remove GNOME from startup, so my
system boots to the shell prompt.

If the computer is plugged in while I boot, I don't have any problems.
 If it's on battery, I get the following text on my screen after the
system has booted:

.....
Ubuntu 6.06.1 LTS [ComputerName] tty1

[ComputerName] login: [  100.725531] powernow-k8: ignoring illegal
change in low freq table-2 to 0x2
[  100.726009] powernow-k8: transition frequency failed
[  101.728383] powernow-k8: ignoring illegal change in lo freq table-2 to 0x2
[  101.728736] powernow-k8: transition frequency failed
[  355.951446] powernow-k8: ignoring illegal change in lo freq table-2 to 0x2
[  355.951625] powernow-k8: transition frequency failed
.....

If I type Ctrl-d, it prompts for login, and all is well.

Following are boot messages regarding 'powernow-k8' when on battery:

.....
powernow-k8: Found 1 AMD Athlon 64 / Opteron processors (version 1.50.4)
powernow-k8:    0 : fid 0xc (2000 MHz), vid 0x2 (1500 mV)
powernow-k8:    1 : fid 0xa (1800 MHz), vid 0x6 (1400 mV)
powernow-k8:    2 : fid 0x2 (1000 MHz), vid 0x10 (1150 mV)
powernow-k8: ignoring illegal change in lo freq table-2 to 0x2
powernow-k8: transition frequency failed
.....

I found a possible solution at
http://ubuntuforums.org/archive/index.php/t-3585.html , though I don't
know if it applies, and I don't know how to use it if it does.  Can
someone help me make sense of this?

Thanks in advance,
Danielle
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
