From: Ray Olszewski <ray@comarre.com>
Subject: Re: Memory leaks and strange results from top
Date: Sun, 08 Feb 2004 10:11:52 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040208093437.01f2f778@celine>
References: <40266BFE.5070108@shaw.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40266BFE.5070108@shaw.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:03 AM 2/8/2004 -0700, Chris Rose wrote:
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>I run a clarkconnect 2.1 firewall at home, and it's giving me some
>strange results.  I recently expanded the RAM in it, because back when
>it had 96Mb it was claiming that it was using 99% of physical RAM,
>although i couldn't figure out why.  Now, though, it has 256Mb of RAM
>and i'm still getting the same problem.

What you are describing here is NOT a problem; it reflects the normal 
operation of the Linux kernel. Over time, it will (by the report you've 
used) increase its use of physical memory up to the maximum available. But 
it's a feature, not a leak.

The kernel keeps in memory images of recently used processes and recently 
accessed files. These uses of memory are called "buffer" and "Cache" 
(though I am never able to remember which is which). But this portion of 
memory remains available in the way that matters -- if a new process needs 
RAM, the kernel will discard some of these contents to make memory available.

To see how much memory your system is using for current processes in total, 
use not "top" but "free", and look at the second line of output. For 
example, if I run free here, I get --

autovcr@kuryakin:~$ free
              total       used       free     shared    buffers     cached
Mem:       1033724     150884     882840          0      12004      44648
-/+ buffers/cache:      94232     939492
Swap:            0          0          0

The first line corresponds to what "top" reports, and it says that 880 MB 
(out of 1033 MB) is in use. The second line, which removes buffers and 
cache, says that only 94 MB is being used by current processes, leaving 939 
MB available. SInce I do not know what you actually run on this system, I 
cannot say what your results will be ... but if your system seemed to be 
running OK with 96 MB in it, I bet you are "really" using 64 MB or so.

>  The output of top (sorted by
>memory usage) is this:
>
>~ 10:01:36  up 19:41,  1 user,  load average: 0.09, 0.15, 0.09
>55 processes: 52 sleeping, 3 running, 0 zombie, 0 stopped
>CPU states: 0.0% user  0.0% system   0.0% nice   0.0% iowait 100.0% idle
>Mem:   255300k av,  22096k used, 233204k free,     0k shrd,   1748k buff
>~                    13680k actv,    464k in_d,   552k in_c
>Swap:  128512k av,  64220k used,  64292k free               8828k cached
>
>~ PID USER    PRI  NI  SIZE  RSS SHARE STAT %CPU %MEM  TIME CPU COMMAND
>2892 squid    15   0 10284 1756   696 S     0.0  0.6  0:13   0 squid
>3158 root     15   0 44104 1460   172 S     0.0  0.5  0:18   0 snort
>8817 root     15   0  1156 1156   872 R     0.0  0.4  0:00   0 top
>2266 root     15   0  3276 1044   400 S     0.0  0.4  0:00   0 syswatch
>8470 root     15   0   928  840   636 S     0.0  0.3  0:00   0 bash
>1076 root     15   0   964  164   120 S     0.0  0.0  0:00   0 klogd
>1072 root     15   0   192  152   112 S     0.0  0.0  0:00   0 syslogd
>1225 root     15   0   164  140    88 S     0.0  0.0  0:00   0 crond
>1253 nobody   15   0   156  128    76 S     0.0  0.0  0:00   0 dnsmasq
>1135 root     15   0   548   76    36 S     0.0  0.0  0:00   0 dhcpd
>1317 root     15   0  1344   72    44 S     0.0  0.0  0:00   0 webconfig
>~   1 root     15   0   100   64    44 S     0.0  0.0  0:04   0 init
>1235 nobody   15   0    92   40    24 R     0.0  0.0  0:00   0 alertd
>1111 root     15   0   240    4     0 S     0.0  0.0  0:00   0 sshd
>1125 root     25   0   144    4     0 S     0.0  0.0  0:00   0 xinetd
>1291 suva     25   0   320    4     0 S     0.0  0.0  0:00   0 suvad
>
>
>I don't know how to diagnose the problem beyond this - can anyone tell
>me how to find out which processes are claiming how much memory?

It's shown above in the output of top (or you can see it, usually, with 
most versions of "ps aux"), in the "%MEM" column. You are using a slightly 
different (older, I'd guess) version of "top" from what I have here, so the 
outputs are a bit different, but I *think* the RSS column reports dedicated 
memory use in KB and the SHARE column reports its use of shared memory 
(e.g., libraries used by multiple programs). In any case, your man page for 
top should describe what the columns contain.

SIZE, BTW, should be the size of the program's code plus stack space in KB 
... SIZE and RSS are often but not always equal. In your case, the 
differences are so large that I find it puzzling, though, particularly for 
common tasks like syslogd and klogd.

BTW, notice that in the output you sent, even total (with cache/buffer) 
memory usage is not very high. I assume this output is from shortly after a 
reboot/init, so only 22 MB out of 255 MB is in use. (I'm not sure why the 
system is even using swap here ... it might be a peculiarity of some 
particular process, or it might be a transient use from boot/init that has 
not cleared yet ... or it might be the reason for whatever actual operating 
problems motivated this inquiry in the first place.)

>Or, alternately, tell me what you need to know to find out the source of
>the problem,  Thanks in advance...

I've assumed here that there is not some operational problem other than the 
illusory use of "all" RAM. If you are experiencing some actual problem in 
operation, that of course is different ... but in that case, you really 
will have to tell us what the problem is to get help locating its "source". 
Whatever might be going on, it is probably not a memory leak ... at least 
none is indicated by what you reported to the list.

If you post a followup, please mention what Linux distro and version you 
are using (I don't know if "ClarkConnect" is itself a distro or if it is a 
drop-in firewall package that runs on some standard distro). I don't 
recognize some of the "top" output you reported ... so it would help to 
have some idea of what versions of things you are using.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
