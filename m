From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: cannot find -lncurses?
Date: Tue, 21 Sep 2004 16:48:15 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0409211626250.15445-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I re-installed debian-woody on my machine (AMD K7 xp1500+) using the
network install from a minimal CD (http://www.debian.org/CD/netinst/). The
full installation (using tasksel to get everything I thought needed),
apparently, went fine - no glitches.

I then updated the kernel by `apt-get install kernel-image-2.4.18-1-k7`
and got the corresponding sources by `apt-get install
kernel-source-2.4.18`.  After untarring the source (and creating a symlink
/usr/src/linux to point to the newly created directory) I tried to
configure the kernel via `make menuconfig` -- heres the error(s) I got:

-----------------
rm -f include/asm
( cd include ; ln -sf asm-i386 asm)
make -C scripts/lxdialog all
make[1]: Entering directory `/usr/src/kernel-source-2.4.18/scripts/lxdialog'
/usr/bin/ld: cannot find -lncurses
collect2: ld returned 1 exit status

>> Unable to find the Ncurses libraries.
>>
>> You must have Ncurses installed in order
>> to use 'make menuconfig'

make[1]: *** [ncurses] Error 1
make[1]: Leaving directory `/usr/src/kernel-source-2.4.18/scripts/lxdialog'
make: *** [menuconfig] Error 2
-----------------

Now, I tried to apt-get install all the ncurses packages that matched
`apt-cache search ncurses | grep ncurses` and found that ncurses-base,
ncurses-bin, ncurses-term, libncurses5, libncurses5-dev, libncurses5-dbg
were all installed. I ran /sbin/ldconfig and tried again, with the same 
results. 

Was not quite sure what to try next. Please help! 

Thanks,

-K

---------------------
Biology is the only science in which multiplication means the same thing 
as division.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
