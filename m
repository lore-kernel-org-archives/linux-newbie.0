From: Jim Nelson <james4765@verizon.net>
Subject: Re: Heavy load of graphics
Date: Thu, 07 Oct 2004 18:00:10 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4165BC6A.3030600@verizon.net>
References: <20041007124852.26140.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041007124852.26140.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>thanks a lot for help
>
>but at this moment i am trying to find out what
>services i should stop with this redhat-config service
>
>  
>
Pretty much anything you aren't going to use - if it's a desktop 
machine, for example, you don't need sendmail running, for example.
As I mentioned before,

    The only critical services controlled by this are network, syslog,
    xinetd, and nfslock (if you are using NFS). Do not disable those unless
    you know what you're doing it for. iptables is the firewall control
    (only disable if you are in a very well protected network).


>and also i am confused in 1 more topic. top shows a
>col on priority under PRI and also ps -Al shows a col
>of priority i.e PRI what is the difference b/w both
>becaz both shows different values
>
>  
>

I'm not sure what the PRI column in "ps -Al" is bringing up - it's 
definitely not System V or BSD priority - I think it might be the actual 
kernel scheduler priority, whereas top and "ps al" show standard 
BSD-style priorities.

Someone else have more info?

>rest inline
>
> --- Jim Nelson <james4765@verizon.net> wrote: 
>  
>
>>Ankit Jain wrote:
>>
>>    
>>
>>>thanks
>>>
>>>this is the output
>>>
>>>i am using redhat linux 9.0
>>>
>>>"I know Red Hat has a lot of standard daemons
>>>      
>>>
>>(PCMCIA,
>>    
>>
>>>ISDN, etc) that are started by default - have you
>>>      
>>>
>>used
>>    
>>
>>>chkconfig or redhat-config-services to shut off
>>>unneded services?" as u said...how to do this. i am
>>>intrested in closing these services
>>>
>>>thanks again
>>>
>>> 
>>>
>>>      
>>>
>>Easiest way to do this is to start an xterm, su to
>>root, and type 
>>"redhat-config-services &".  That will give you a
>>GUI to select the 
>>services you wish to run.  Depending on how much you
>>selected when 
>>installing, it could be quite a bit.
>>
>>Runlevel 3 is the Red Hat standard for booting into
>>command-line mode, 
>>and runlevel 5 is the standard graphical login
>>level.
>>
>>The only critical services controlled by this are
>>network, syslog, 
>>xinetd, and nfslock (if you are using NFS).  Do not
>>disable those unless 
>>you know what you're doing it for.  iptables is the
>>firewall control 
>>(only disable if you are in a very well protected
>>network).
>>    
>>
>
>do u know any document to know all this?
>
>  
>

Some is experience (killed my first box more times than I care to 
admit), and most of it came from a book I bought that came with RH9.  
Each service listed is actually a reference to a set of scripts in 
/etc/rc.d/init.d - Red Hat-based distros use System V-style 
initialization, with different runlevels for different functionality.

It takes some research, sometimes, to understand what each service 
mentioned does.  Honestly, a dead-tree book or 20 is a great resource - 
especially when booting off a rescue disk and trying to remember what 
you need to do to fix your system.

>>Most everything else can be turned off.
>>
>>    
>>
>>>[ankit@Ankit ankit]$ cat /proc/meminfo
>>>       total:    used:    free:  shared: buffers: 
>>>cached:
>>>Mem:  120741888 118902784  1839104        0 
>>>      
>>>
>>1695744
>>    
>>
>>>74162176
>>>Swap: 534601728 69509120 465092608
>>>MemTotal:       117912 kB
>>>MemFree:          1796 kB
>>>MemShared:           0 kB
>>>Buffers:          1656 kB
>>>Cached:          36536 kB
>>>SwapCached:      35888 kB
>>>Active:          65144 kB
>>>ActiveAnon:      37092 kB
>>>ActiveCache:     28052 kB
>>>Inact_dirty:      4852 kB
>>>Inact_laundry:    6728 kB
>>>Inact_clean:      1068 kB
>>>Inact_target:    15556 kB
>>>HighTotal:           0 kB
>>>HighFree:            0 kB
>>>LowTotal:       117912 kB
>>>LowFree:          1796 kB
>>>SwapTotal:      522072 kB
>>>SwapFree:       454192 kB
>>> 
>>>
>>>      
>>>
>>128 MB RAM is marginal for using KDE or Gnome on
>>RH9.  You can do it 
>>(that's all I had on my first Linux box) but it's a
>>pig.
>>
>>You've got almost 70 MB in swap - over 30% of your
>>total process 
>>memory.  BTW - what kind of computer is it?  If it's
>>not some oddball 
>>hardware, your best solution is some RAM.  256 MB is
>>enough to make X happy.
>>
>>    
>>
>
>no X takes more than 70 % of memory with a system with
>512 Mb of RAM i had seen that
>
>and also as calculated it shows tyhat system uses
>around 99Mb of RAM but it says only 2Mb is free? what
>else is using that memory?
>
>  
>

The filesystem cache.  From my machine:

[jim@david c]$ cat /proc/meminfo
MemTotal:       905280 kB
MemFree:         46700 kB
Buffers:        110792 kB
Cached:         267252 kB
SwapCached:         24 kB
Active:         412068 kB
Inactive:       143296 kB
HighTotal:           0 kB
HighFree:            0 kB
LowTotal:       905280 kB
LowFree:         46700 kB
SwapTotal:     1048816 kB
SwapFree:      1048728 kB
Dirty:              20 kB
Writeback:           0 kB
Mapped:         227936 kB
Slab:           292576 kB
Committed_AS:   313896 kB
PageTables:       2048 kB
VmallocTotal:   122840 kB
VmallocUsed:      3520 kB
VmallocChunk:   118236 kB
HugePages_Total:     0
HugePages_Free:      0
Hugepagesize:     4096 kB

This is from a 2.6 kernel, so a few things might be a bit different, but 
the general scheme is the same.  Notice over 350 MB are consumed by 
buffers and the cache - but let me go and start GIMP and open a whole 
bunch of high-resolution pictures and I get:

[jim@david c]$ cat /proc/meminfo
MemTotal:       905280 kB
MemFree:          7280 kB
Buffers:         44084 kB
Cached:         263280 kB
SwapCached:        148 kB
Active:         511560 kB
Inactive:        96392 kB
HighTotal:           0 kB
HighFree:            0 kB
LowTotal:       905280 kB
LowFree:          7280 kB
SwapTotal:     1048816 kB
SwapFree:      1046204 kB
Dirty:             760 kB
Writeback:           0 kB
Mapped:         370692 kB
Slab:           278784 kB
Committed_AS:   445752 kB
PageTables:       2524 kB
VmallocTotal:   122840 kB
VmallocUsed:      3520 kB
VmallocChunk:   118236 kB
HugePages_Total:     0
HugePages_Free:      0
Hugepagesize:     4096 kB

Notice how the buffer memory consumption is cut in half?  I've still got 
7 MB free memory - Linux tries to keep some memory free at all times to 
prevent a machine from thrashing itself to death.  Notice also that the 
active memory count went up - and I actually had some stuff moved to my 
disk swap space.

Now, my system responsiveness is not hindered at all - even with 20 
pictures open in the GIMP.

Let's put the smackdown on this thing and open 120 pictures at 14.7 MB each.

MemTotal:       905280 kB
MemFree:          7412 kB
Buffers:          1404 kB
Cached:          73284 kB
SwapCached:     102004 kB
Active:         776724 kB
Inactive:        85120 kB
HighTotal:           0 kB
HighFree:            0 kB
LowTotal:       905280 kB
LowFree:          7412 kB
SwapTotal:     1048816 kB
SwapFree:       622796 kB
Dirty:             604 kB
Writeback:           0 kB
Mapped:         777052 kB
Slab:            23984 kB
Committed_AS:  1250072 kB
PageTables:       3308 kB
VmallocTotal:   122840 kB
VmallocUsed:      3520 kB
VmallocChunk:   118236 kB
HugePages_Total:     0
HugePages_Free:      0
Hugepagesize:     4096 kB

Notice 400 MB swapped to disk, the buffers have dwindled to less than 1% 
of the consumption of an unloaded system, and the I/O cache is 25% of an 
unloaded system.  There is noticable lag when switching between 
workspaces now.

That's where the extra memory is going.

>thanks
>
>ankit
>
>________________________________________________________________________
>Yahoo! Messenger - Communicate instantly..."Ping" 
>your friends today! Download Messenger Now 
>http://uk.messenger.yahoo.com/download/index.html
>
>  
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
