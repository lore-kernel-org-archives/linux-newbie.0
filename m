From: Chris Rose <offline@shaw.ca>
Subject: Memory leaks and strange results from top
Date: Sun, 08 Feb 2004 10:03:58 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40266BFE.5070108@shaw.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

I run a clarkconnect 2.1 firewall at home, and it's giving me some
strange results.  I recently expanded the RAM in it, because back when
it had 96Mb it was claiming that it was using 99% of physical RAM,
although i couldn't figure out why.  Now, though, it has 256Mb of RAM
and i'm still getting the same problem.  The output of top (sorted by
memory usage) is this:

~ 10:01:36  up 19:41,  1 user,  load average: 0.09, 0.15, 0.09
55 processes: 52 sleeping, 3 running, 0 zombie, 0 stopped
CPU states: 0.0% user  0.0% system   0.0% nice   0.0% iowait 100.0% idle
Mem:   255300k av,  22096k used, 233204k free,     0k shrd,   1748k buff
~                    13680k actv,    464k in_d,   552k in_c
Swap:  128512k av,  64220k used,  64292k free               8828k cached

~ PID USER    PRI  NI  SIZE  RSS SHARE STAT %CPU %MEM  TIME CPU COMMAND
2892 squid    15   0 10284 1756   696 S     0.0  0.6  0:13   0 squid
3158 root     15   0 44104 1460   172 S     0.0  0.5  0:18   0 snort
8817 root     15   0  1156 1156   872 R     0.0  0.4  0:00   0 top
2266 root     15   0  3276 1044   400 S     0.0  0.4  0:00   0 syswatch
8470 root     15   0   928  840   636 S     0.0  0.3  0:00   0 bash
1076 root     15   0   964  164   120 S     0.0  0.0  0:00   0 klogd
1072 root     15   0   192  152   112 S     0.0  0.0  0:00   0 syslogd
1225 root     15   0   164  140    88 S     0.0  0.0  0:00   0 crond
1253 nobody   15   0   156  128    76 S     0.0  0.0  0:00   0 dnsmasq
1135 root     15   0   548   76    36 S     0.0  0.0  0:00   0 dhcpd
1317 root     15   0  1344   72    44 S     0.0  0.0  0:00   0 webconfig
~   1 root     15   0   100   64    44 S     0.0  0.0  0:04   0 init
1235 nobody   15   0    92   40    24 R     0.0  0.0  0:00   0 alertd
1111 root     15   0   240    4     0 S     0.0  0.0  0:00   0 sshd
1125 root     25   0   144    4     0 S     0.0  0.0  0:00   0 xinetd
1291 suva     25   0   320    4     0 S     0.0  0.0  0:00   0 suvad


I don't know how to diagnose the problem beyond this - can anyone tell
me how to find out which processes are claiming how much memory?

Or, alternately, tell me what you need to know to find out the source of
the problem,  Thanks in advance...

- --
Chris R.
=======
http://offlineblog.com/
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.2 (Cygwin)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFAJmv9YGWCRcy3UcsRAhPlAJ9W52iM5Zra7DPt9wasmmwIy1OJAACfTboq
oOYYq0v0KO0f8mOSJbAJsuc=
=Yi1P
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
