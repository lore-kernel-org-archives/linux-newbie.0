From: Peter <heisspf@skyinet.net>
Subject: Re: Gnumeric won't open
Date: Sat, 20 Mar 2004 16:18:41 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040320081843.0BEE81D88A@heisspf>
References: <200403191616.52655.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 19 Mar 2004 16:16:52 +0100."
             <200403191616.52655.pa3gcu@zeelandnet.nl> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org


Peter said:
> Is there any test to find out what is going on while gnumeric tries to
> open? 

pa3gcu@zeelandnet.nl said:
> You can use the program 'strace' to see whats happening

These are the output lines of strace before it goes apparently into an eternal 
loop.
read(17, "order hosts, bind\nmulti on\n", 4096) = 27
read(17, "", 4096)                      = 0
close(17)                               = 0
munmap(0x4002a000, 4096)                = 0
open("/etc/hosts", O_RDONLY)            = 17
fcntl64(17, F_GETFD)                    = 0   
fcntl64(17, F_SETFD, FD_CLOEXEC)        = 0   
fstat64(17, {st_mode=S_IFREG|0644, st_size=614, ...}) = 0
old_mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
read(17, "#\n# hosts\t\tThis file describes a"..., 4096) = 614
read(17, "", 4096)                      = 0
close(17)                               = 0
munmap(0x4002a000, 4096)                = 0
time(NULL)                              = 1079742513
socket(PF_INET, SOCK_STREAM, IPPROTO_IP) = 17
fcntl64(17, F_SETFD, FD_CLOEXEC)        = 0
setsockopt(17, SOL_SOCKET, SO_REUSEADDR, [1], 4) = 0
setsockopt(17, SOL_TCP, TCP_NODELAY, [1], 4) = 0
connect(17, {sa_family=AF_INET, sin_port=htons(631), sin_addr=inet_addr("127.0.
access("/usr/share/locale/C_/cups_C_", F_OK) = -1 ENOENT (No such file or direc
access("/usr/share/locale/C/cups_C", F_OK) = 0
send(17, "POST / HTTP/1.1\r\n", 17, 0)  = 17
send(17, "Content-Length: 137\r\n", 21, 0) = 21
send(17, "Content-Type: application/ipp\r\n", 31, 0) = -1 EPIPE (Broken pipe)
--- SIGPIPE (Broken pipe) @ 0 (0) ---
send(17, "Content-Type: application/ipp\r\n", 31, 0) = -1 EPIPE (Broken pipe)
--- SIGPIPE (Broken pipe) @ 0 (0) ---
close(17)                               = 0
1) socket(PF_INET, SOCK_STREAM, IPPROTO_IP) = 17
2) fcntl64(17, F_SETFD, FD_CLOEXEC)        = 0  
3) setsockopt(17, SOL_SOCKET, SO_REUSEADDR, [1], 4) = 0
4) setsockopt(17, SOL_TCP, TCP_NODELAY, [1], 4) = 0
5) connect(17, {sa_family=AF_INET,sin_port=htons(631),sin_addr=inet_addr("127.0
.
6) send(17, "POST / HTTP/1.1\r\n", 17, 0)  = 17
7) send(17, "Content-Length: 137\r\n", 21, 0) = 21
8) send(17, "Content-Type: application/ipp\r\n", 31, 0) = -1 EPIPE (Broken 
pipe)
9) --- SIGPIPE (Broken pipe) @ 0 (0) ---
10) send(17, "Content-Type: application/ipp\r\n", 31, 0) = -1 EPIPE (Broken 
pipe)
11) --- SIGPIPE (Broken pipe) @ 0 (0) ---
12) close(17)

The lines which I numbered 1 to 12 is the loop ad indefinitum which keeps the 
CPU busy and shows in my program 'stipchart' as Load and Busy. Top does not 
show anything special, memory and swap remain constant, just the CPU being 
busy until I do a ^c.

The mind bugling number of 45 odd libraries needed by gnumeric do not show any 
overlap or mismatch. When I un-installed gnumeric I saw that a lot of 
libraries were being deleted and put back with the re-installation.

The only program I installed lately is ActiveTcl which has its own set of 
libraries.

I just looked at my old favorite spreadsheet QuattroPro where for less then 
5Mb one has a program with graphics unmatched by Excel and any of its copies 
in Linux and macros so easy to apply, plus plus plus. Why was Excel copied and 
not QuattroPro? Unfortunately I cannot open it with dosemu out of Linux.

Now can anyone make sense out of the lines created with strace gnumeric to get 
that program back on stream?

Thanks & regards


-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
