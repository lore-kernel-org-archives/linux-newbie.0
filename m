From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: unmet dependencies
Date: Thu, 10 Apr 2003 10:10:05 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <16021.9949.471022.230213@ksys.rug.ac.be>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hello,

I am running Debian Woody and I have somewhere unmet dependencies (and
4 packages not fully installed). It has something to do with
xlibmesa3, and also with perlapi/perl-base. Can anyone help me out?

tnx,
Kurt.



I noticed the 'trouble' first when I tried to install mysql:

-----
# apt-get install mysql-client
Reading Package Lists... Done
Building Dependency Tree... Done
You might want to run `apt-get -f install' to correct these:
Sorry, but the following packages have unmet dependencies:
  mysql-client: Depends: libdbi-perl but it is not going to be
  installed
                Depends: libdbd-mysql-perl (>= 1.2202) but it is not
                going to be installed Depends: libmysqlclient10 but it
                is not going to be installed
  x-window-system-core: Depends: xlibmesa3 but it is not going to be
  installed xbase-clients: Depends: xlibmesa3 but it is not going to
  be installed or
                          libgl1
E: Unmet dependencies. Try 'apt-get -f install' with no packages (or
specify a solution).
# 
----- 

Then, I ran apt-get -f install, as suggested:

-----
# apt-get -f install
Reading Package Lists... Done
Building Dependency Tree... Done
Correcting dependencies... Done
The following extra packages will be installed:
  xlibmesa3
The following NEW packages will be installed:
  xlibmesa3
0 packages upgraded, 1 newly installed, 0 to remove and 8 not
upgraded.
4 packages not fully installed or removed.
Need to get 0B/3854kB of archives. After unpacking 11.9MB will be
used.
Do you want to continue? [Y/n] y
(Reading database ... 72241 files and directories currently
installed.)
Unpacking xlibmesa3 (from .../xlibmesa3_4.2.1-3_i386.deb) ...
dpkg: error processing
/var/cache/apt/archives/xlibmesa3_4.2.1-3_i386.deb (--unpack):
 trying to overwrite `/usr/X11R6/lib/libGLU.so.1.3', which is also in
 package xlibmesa3-glu
dpkg-deb: subprocess paste killed by signal (Broken pipe)
Errors were encountered while processing:
 /var/cache/apt/archives/xlibmesa3_4.2.1-3_i386.deb
E: Sub-process /usr/bin/dpkg returned an error code (1)
# 
-----


Just to try, I downloaded also the source of mysql and tried to
compile it, but... apparently I hadn't 'fakeroot' installed (I've had
some trouble before and reinstalled most software, but I guess I
'forgot' to install fakeroot):

-----
# apt-get install fakeroot
Reading Package Lists... Done
Building Dependency Tree... Done
You might want to run `apt-get -f install' to correct these:
Sorry, but the following packages have unmet dependencies:
  x-window-system-core: Depends: xlibmesa3 but it is not going to be
  installed xbase-clients: Depends: xlibmesa3 but it is not going to
  be installed or
                          libgl1
E: Unmet dependencies. Try 'apt-get -f install' with no packages (or
specify a solution).
# 
-----


So, I tried to reinstall xlibmesa3 (because I guess that's the
problem):

-----
# apt-get install --reinstall xlibmesa3
Reading Package Lists... Done
Building Dependency Tree... Done
The following NEW packages will be installed:
  xlibmesa3
0 packages upgraded, 1 newly installed, 0 to remove and 8 not
upgraded.
4 packages not fully installed or removed.
Need to get 0B/3854kB of archives. After unpacking 11.9MB will be
used.
(Reading database ... 72241 files and directories currently
installed.)
Unpacking xlibmesa3 (from .../xlibmesa3_4.2.1-3_i386.deb) ...
dpkg: error processing
/var/cache/apt/archives/xlibmesa3_4.2.1-3_i386.deb (--unpack):
 trying to overwrite `/usr/X11R6/lib/libGLU.so.1.3', which is also in
 package xlibmesa3-glu
dpkg-deb: subprocess paste killed by signal (Broken pipe)
Errors were encountered while processing:
 /var/cache/apt/archives/xlibmesa3_4.2.1-3_i386.deb
E: Sub-process /usr/bin/dpkg returned an error code (1)
# 
-----


-----
# apt-get install libdbi-perl
Reading Package Lists... Done
Building Dependency Tree... Done
You might want to run `apt-get -f install' to correct these:
Sorry, but the following packages have unmet dependencies:
  libdbi-perl: Depends: perlapi-5.6.1 x-window-system-core: Depends:
  xlibmesa3 but it is not going to be installed xbase-clients:
  Depends: xlibmesa3 but it is not going to be installed or
                          libgl1
E: Unmet dependencies. Try 'apt-get -f install' with no packages (or
specify a solution).
# 
-----

Some more trials that might be important:

-----
# apt-get install perlapi-5.6.1
Reading Package Lists... Done
Building Dependency Tree... Done
Package perlapi-5.6.1 is a virtual package provided by:
You should explicitly select one to install.
E: Package perlapi-5.6.1 has no installation candidate
# 
-----

But I have perl-base installed, which provides perlapi-5.8.0, I guess?

----
# apt-get install perlapi-5.8.0
Reading Package Lists... Done
Building Dependency Tree... Done
Note, selecting perl-base instead of perlapi-5.8.0
Sorry, perl-base is already the newest version.
You might want to run `apt-get -f install' to correct these:
Sorry, but the following packages have unmet dependencies:
  x-window-system-core: Depends: xlibmesa3 but it is not going to be
  installed xbase-clients: Depends: xlibmesa3 but it is not going to
  be installed or
                          libgl1
E: Unmet dependencies. Try 'apt-get -f install' with no packages (or
specify a solution).
# 
-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
