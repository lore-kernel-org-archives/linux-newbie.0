From: Jim Reimer <wa5rrh@arrl.net>
Subject: problem installing rpm
Date: Tue, 10 Sep 2002 12:37:36 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209101737.g8AHbMEl000827@franklin.icok.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Can't get the fonttastic rpm included with Corel Photo-Paint to
install:

[root@pyro2 i386]# rpm -iv fonttastic-glibc-2.1*
Preparing packages for installation...
package fonttastic-glibc-2.1-2000.06.22.14.00-1 is already installed
file /etc/init.d from install of fonttastic-glibc-2.1-2000.06.22.14.00-1 
conflicts with file from package chkconfig-1.2.24-1
file /etc/init.d/fonttastic from install of 
fonttastic-glibc-2.1-2000.06.22.14.00-1 conflicts with
file from package fonttastic-glibc-2.1-2000.06.22.14.00-1
file /etc/rc.d/init.d/fonttastic from install of 
fonttastic-glibc-2.1-2000.06.22.14.00-1 conflicts
with file from package fonttastic-glibc-2.1-2000.06.22.14.00-1

(it says it's already installed, but it was not installed
successfully - files are missing)

Trying to force it doesn't work:

[root@pyro2 i386]# rpm -iv --force fonttastic-glibc-2.1*
Preparing packages for installation...
Stopping the font server (if any)
fonttastic-glibc-2.1-2000.06.22.14.00-1
Configuring for SysV-style init
rmdir: `/etc/init.d': Not a directory
Starting the font server
/var/tmp/rpm-tmp.93989: /etc/rc.d/init.d/fonttastic: No such file or directory

Package dump shows it trying to put files in /etc/init.d and
/etc/rc.d/init.d (if I'm reading it correctly).  On this system,
/etc/init.d is a link to /etc/rc.d/init.d if that makes any
difference.

[jdr@pyro2 i386]$ rpm -qp --dump fonttastic-glibc-2.1*
/etc 1024 961700361  040755 root root 0 0 0 X
/etc/init.d 1024 961700361  040755 root root 0 0 0 X
/etc/init.d/fonttastic 592 961700361
    ec5ab30ce453d2d99e3b44e083a271c0 0100555 root root 1 0 0 X
/etc/rc.d/init.d/fonttastic 2309 961700361
    fde59f08e770bf1c6ec73e0adaf7bd5b 0100555 root root 0 0 0 X

(I wrapped the last two lines above, and the rest of the dump
is not included here.)

How do I go about getting this package to install?

Thanks,
-jdr-



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
