From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re: SU and root login don't have proper permissions
Date: Tue, 18 Jun 2002 19:02:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020619020257.PRFI19182.mtiwmhc21.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

After doing a shutdown -rF now and watching the fsck run, there were no complaints about the file system logged to the console.  Is there perhaps a log file that I need to look at to rule out the file system itself.

I ran the rpm -Va and the results is below.  As of yet I don't understand the first column for most of the packages.

 >>  > I suspect a file system error someplace, but I don't know how to have
 >>  redhat compare say the libraries and the permissions from the
 >>  installation/distro cd against what I have on the hard drive to find
 >>  differences.
 >>  I would suggggest 2 steps
 >>  1. fsck all partitions
 >>  2. rpm -Va
 >>  This checks for permissions, etc.

S.5....T   /usr/lib/perl5/5.6.0/CPAN.pm
S.5....T   /usr/lib/perl5/5.6.0/CPAN/FirstTime.pm
S.5....T   /usr/lib/perl5/5.6.0/CPAN/Nox.pm
..5....T   /usr/lib/perl5/5.6.0/File/Spec.pm
S.5....T   /usr/lib/perl5/5.6.0/File/Spec/Functions.pm
S.5....T   /usr/lib/perl5/5.6.0/File/Spec/Mac.pm
S.5....T   /usr/lib/perl5/5.6.0/File/Spec/OS2.pm
S.5....T   /usr/lib/perl5/5.6.0/File/Spec/Unix.pm
S.5....T   /usr/lib/perl5/5.6.0/File/Spec/VMS.pm
S.5....T   /usr/lib/perl5/5.6.0/File/Spec/Win32.pm
S.5....T   /usr/lib/perl5/5.6.0/Test/Harness.pm
S.5....T c /etc/crontab
S.5....T c /etc/syslog.conf
.M......   /dev/dri
missing    /dev/dri/card0
.M......   /dev/hdc
.M......   /dev/shm
......G.   /dev/tty0
.M....G.   /dev/tty2
.M....G.   /dev/tty3
.M....G.   /dev/tty4
.M....G.   /dev/tty5
.M....G.   /dev/tty6
......G.   /dev/tty7
......G.   /dev/tty8
......G.   /dev/tty9
S.5....T c /etc/openldap/ldap.conf
.......T c /etc/openldap/ldapfilter.conf
.......T c /etc/openldap/ldapsearchprefs.conf
.......T c /etc/openldap/ldaptemplates.conf
..5....T d /usr/share/man/man5/ldap.conf.5.gz
..5....T d /usr/share/man/man5/ldapfilter.conf.5.gz
S.5....T d /usr/share/man/man5/ldapfriendly.5.gz
S.5....T d /usr/share/man/man5/ldapsearchprefs.conf.5.gz
..5....T d /usr/share/man/man5/ldaptemplates.conf.5.gz
..5....T d /usr/share/man/man5/ldif.5.gz
S.5....T d /usr/share/man/man5/slapd.conf.5.gz
S.5....T d /usr/share/man/man5/slapd.replog.5.gz
S.5....T d /usr/share/man/man5/ud.conf.5.gz
.......T   /usr/share/openldap/ldapfriendly
.....UG. c /var/lib/rpm/__db.001
.....UG. c /var/lib/rpm/__db.002
S.5....T c /etc/krb.conf
S.5....T c /etc/identd.conf
S.5....T c /etc/xinetd.d/rexec
S.5....T c /etc/xinetd.d/rlogin
S.5....T c /etc/xinetd.d/rsh
S.5....T c /etc/xinetd.d/ntalk
S.5....T c /etc/xinetd.d/talk
.......T   /etc/xinetd.d/rsync
S.5....T c /etc/pam_smb.conf
.M......   /usr/local/mh/bin
.M......   /usr/local/mh/code
S.5....T   /usr/local/mh/code/test/mh.menu
.......T   /usr/local/mh/code/test/test_x10.mhp
.M......   /usr/local/mh/data
S.5....T   /usr/local/mh/data/photo_index.txt
.M......   /usr/local/mh/data/photos
S.5....T   /usr/local/mh/data/web/slashdot_news.titles
S.5....T   /usr/local/mh/data/web/slashdot_news.txt
S.5....T   /usr/local/mh/data/web/slashdot_news.xml
S.5....T   /usr/local/mh/data/web/top10_list.html
S.5....T   /usr/local/mh/data/web/top10_list.txt
S.5....T   /usr/local/mh/data/web/weather_conditions.txt
S.5....T   /usr/local/mh/data/web/weather_forecast.txt
.M......   /usr/local/mh/docs
.M......   /usr/local/mh/lib
missing    /usr/local/mh/lib/site_win50
missing    /usr/local/mh/lib/site_win50/Win32
missing    /usr/local/mh/lib/site_win50/Win32/API.pm
missing    /usr/local/mh/lib/site_win50/Win32/setupsup.html
missing    /usr/local/mh/lib/site_win50/Win32/setupsup.pm
missing    /usr/local/mh/lib/site_win50/auto
missing    /usr/local/mh/lib/site_win50/auto/Win32
missing    /usr/local/mh/lib/site_win50/auto/Win32/API
missing    /usr/local/mh/lib/site_win50/auto/Win32/API/API.bs
missing    /usr/local/mh/lib/site_win50/auto/Win32/API/API.dll
missing    /usr/local/mh/lib/site_win50/auto/Win32/API/API.exp
missing    /usr/local/mh/lib/site_win50/auto/Win32/API/API.lib
missing    /usr/local/mh/lib/site_win50/auto/Win32/Setupsup
missing    /usr/local/mh/lib/site_win50/auto/Win32/Setupsup/setupsup.dll
missing    /usr/local/mh/lib/site_win56
missing    /usr/local/mh/lib/site_win56/Win32
missing    /usr/local/mh/lib/site_win56/Win32/API.pm
missing    /usr/local/mh/lib/site_win56/Win32/setupsup.html
missing    /usr/local/mh/lib/site_win56/Win32/setupsup.pm
missing    /usr/local/mh/lib/site_win56/auto
missing    /usr/local/mh/lib/site_win56/auto/Win32
missing    /usr/local/mh/lib/site_win56/auto/Win32/API
missing    /usr/local/mh/lib/site_win56/auto/Win32/API/.packlist
missing    /usr/local/mh/lib/site_win56/auto/Win32/API/API.bs
missing    /usr/local/mh/lib/site_win56/auto/Win32/API/API.dll
missing    /usr/local/mh/lib/site_win56/auto/Win32/API/API.exp
missing    /usr/local/mh/lib/site_win56/auto/Win32/API/API.lib
missing    /usr/local/mh/lib/site_win56/auto/Win32/Setupsup
missing    /usr/local/mh/lib/site_win56/auto/Win32/Setupsup/setupsup.dll
missing    /usr/local/mh/lib/site_win56/auto/Win32/Setupsup/setupsup.exp
missing    /usr/local/mh/lib/site_win56/auto/Win32/Setupsup/setupsup.lib
.M......   /usr/local/mh/sounds
.M......   /usr/local/mh/web
....L...   /usr/local/mh/web/comics/index.html
.M......   /usr/local/mh/web/ia5/security
SM5....T   /usr/local/mh/web/ia5/security/menu.html
S.5....T c /etc/openldap/ldap.conf
..5....T c /etc/mime.types
S.5....T c /etc/printcap
S.5....T c /etc/profile
missing    /var/log/lastlog
S.5....T c /root/.bash_profile
S.5....T c /root/.bashrc
.......T c /etc/krb5.conf
S.5....T c /etc/mail/statistics
.......T c /etc/pam.d/login
S.5....T   /boot/kernel.h-2.4.7
.M......   /dev/shm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/i386-linux/Digest/MD5.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/i386-linux/auto/Digest/MD5/MD5.so
SM5....T   /usr/X11R6/lib/X11/fonts/Speedo/encodings.dir
SM5....T   /usr/X11R6/lib/X11/fonts/Type1/encodings.dir
SM5....T c /usr/X11R6/lib/X11/fonts/100dpi/encodings.dir
S.5....T   /usr/share/AbiSuite/fonts/fonts.dir
S.5....T c /etc/X11/gdm/gdm.conf
S.5....T c /etc/xinetd.d/chargen
S.5....T c /etc/xinetd.d/chargen-udp
S.5....T c /etc/xinetd.d/daytime
S.5....T c /etc/xinetd.d/daytime-udp
S.5....T c /etc/xinetd.d/echo
S.5....T c /etc/xinetd.d/echo-udp
S.5....T c /etc/xinetd.d/time
S.5....T c /etc/xinetd.d/time-udp
.......T c /etc/yp.conf
S.5....T c /etc/ppp/chap-secrets
S.5....T c /etc/ppp/pap-secrets
S.5....T c /etc/ldap.conf
S.5....T c /etc/ssh/sshd_config
S.5....T c /etc/xinetd.d/telnet
missing    /var/cache/ssl_gcache_data.dir
missing    /var/cache/ssl_gcache_data.pag
missing    /var/cache/ssl_gcache_data.sem
S.5....T c /etc/php.ini
S.5....T c /etc/samba/lmhosts
S.5....T c /etc/samba/smb.conf
S.5....T c /etc/samba/lmhosts
S.5....T c /etc/samba/smb.conf
S.5....T d /usr/share/man/man1/make_smbcodepage.1.gz
S.5....T d /usr/share/man/man1/testparm.1.gz
S.5....T d /usr/share/man/man1/testprns.1.gz
S.5....T d /usr/share/man/man5/lmhosts.5.gz
S.5....T d /usr/share/man/man5/smb.conf.5.gz
S.5....T d /usr/share/man/man8/smbpasswd.8.gz
.......T   /usr/share/samba/codepages/codepage.1251
.......T   /usr/share/samba/codepages/codepage.437
.......T   /usr/share/samba/codepages/codepage.737
.......T   /usr/share/samba/codepages/codepage.775
.......T   /usr/share/samba/codepages/codepage.850
.......T   /usr/share/samba/codepages/codepage.852
.......T   /usr/share/samba/codepages/codepage.857
.......T   /usr/share/samba/codepages/codepage.861
.......T   /usr/share/samba/codepages/codepage.866
.......T   /usr/share/samba/codepages/codepage.932
.......T   /usr/share/samba/codepages/codepage.936
.......T   /usr/share/samba/codepages/codepage.949
.......T   /usr/share/samba/codepages/codepage.950
.......T   /usr/share/samba/codepages/unicode_map.437
.......T   /usr/share/samba/codepages/unicode_map.737
.......T   /usr/share/samba/codepages/unicode_map.775
.......T   /usr/share/samba/codepages/unicode_map.850
.......T   /usr/share/samba/codepages/unicode_map.852
.......T   /usr/share/samba/codepages/unicode_map.857
.......T   /usr/share/samba/codepages/unicode_map.861
.......T   /usr/share/samba/codepages/unicode_map.866
.......T   /usr/share/samba/codepages/unicode_map.932
.......T   /usr/share/samba/codepages/unicode_map.936
.......T   /usr/share/samba/codepages/unicode_map.949
.......T   /usr/share/samba/codepages/unicode_map.950
.......T   /usr/share/samba/codepages/unicode_map.ISO8859-1
.......T   /usr/share/samba/codepages/unicode_map.ISO8859-13
.......T   /usr/share/samba/codepages/unicode_map.ISO8859-15
.......T   /usr/share/samba/codepages/unicode_map.ISO8859-2
.......T   /usr/share/samba/codepages/unicode_map.ISO8859-5
.......T   /usr/share/samba/codepages/unicode_map.ISO8859-7
.......T   /usr/share/samba/codepages/unicode_map.ISO8859-9
.......T   /usr/share/samba/codepages/unicode_map.KOI8-R
.......T   /usr/bin/smbprint
.......T   /usr/bin/smbtar
S.5....T d /usr/share/man/man1/nmblookup.1.gz
S.5....T d /usr/share/man/man1/smbclient.1.gz
S.5....T d /usr/share/man/man1/smbtar.1.gz
S.5....T d /usr/share/man/man8/smbmnt.8.gz
S.5....T d /usr/share/man/man8/smbmount.8.gz
S.5....T d /usr/share/man/man8/smbspool.8.gz
S.5....T d /usr/share/man/man8/smbumount.8.gz
S.5....T c /etc/samba/smbusers
.M...... g /var/spool/at/.SEQ
S.5....T c /etc/pam.d/system-auth
.......T c /etc/inittab
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/Cmd.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/Config.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/Domain.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/FTP.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/FTP/A.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/FTP/E.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/FTP/I.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/FTP/L.pm
..5....T   /usr/lib/perl5/site_perl/5.6.0/Net/FTP/dataconn.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/NNTP.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/Netrc.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/POP3.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/SMTP.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/Time.pm
S.5....T   /usr/lib/perl5/site_perl/5.6.0/Net/libnetFAQ.pod
S.5....T c /usr/share/a2ps/afm/fonts.map
SM5....T c /usr/X11R6/lib/X11/fonts/75dpi/encodings.dir
S.5....T   /usr/share/serviceconf/CheckList.pyc
S.5....T   /usr/share/serviceconf/servicemethods.pyc
S.5....T   /usr/share/serviceconf/translate.pyc
S.5....T c /etc/xinetd.d/sgi_fam
S.5....T c /etc/xinetd.d/finger
S.5....T c /etc/xinetd.d/wu-ftpd
S.5....T c /etc/logrotate.d/samba
S.5....T c /etc/pam.d/samba
S.5....T c /etc/rc.d/init.d/smb
S.5....T c /etc/samba/smbusers
S.5....T c /etc/sysconfig/samba
.......T   /usr/bin/mksmbpasswd.sh
S.5....T d /usr/share/man/man1/smbstatus.1.gz
S.5....T d /usr/share/man/man5/smbpasswd.5.gz
S.5....T d /usr/share/man/man7/samba.7.gz
S.5....T d /usr/share/man/man8/nmbd.8.gz
S.5....T d /usr/share/man/man8/smbd.8.gz
S.5....T c /etc/openldap/slapd.conf
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
