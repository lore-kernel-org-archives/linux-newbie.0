From: Peter <peter@skyinet.net>
Subject: Re: Gutenbrowser Won't Open
Date: Fri, 27 Feb 2004 17:14:05 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040227091405.3B36C1C66B@heisspf>
References: <5.1.0.14.1.20040226050821.01f371b0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Thu, 26 Feb 2004 05:16:20 PST." 
 <5.1.0.14.1.20040226050821.01f371b0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks Ray!

> At 04:17 PM 2/26/2004 +0800, Peter wrote:
 >Hi, > >In Slackware 9.1 the
> program gutenbrowser which I have used for years in
 >RedHat will not open. 
> >
> I get the error message: 
> >
:$ gutenbrowser >gutenbrowser: relocation error:
> gutenbrowser: undefined symbol: >qInitNetworkProtocols__Fv

> >How could that be corrected? 



ray@comarre.com said:
>  If you actually moved gutenbrowser app from your RH install to your
> Slackware install

No, I made a new installation of the latest gutenbrowser-0.6.8.3 into 
/usr/local. The program is not included in the slackware package it used to be 
in SUSE as kgutenbook(browser?) that's where I encountered it for the first 
time. It was rather buggy.

Now the libs requirements in SW and RH are very different from each other for 
gutenbrowser. How can that be for the same program. All the libs needed by 
gutenbrowser in RH are present in SW. Why are they then not used? And there is 
no "not found" running ldd. I added the end of strace gutenbrowser.

ray@comarre.com said:
>  you  can grep "qInitNetworkProtocols__Fv" in the various include directories
(the RH versions)

Yielded negative


ldd /usr/local/bin/gutenbrowser gives:

cat gutbrowslibsSlackWare:
libqt.so.2 => /usr/local/qt/lib/libqt.so.2 (0x40016000)
libXext.so.6 => /usr/X11R6/lib/libXext.so.6 (0x40515000)
libX11.so.6 => /usr/local/lib/libX11.so.6 (0x40523000)
libstdc++-libc6.2-2.so.3 => /usr/i486-slackware-linux/lib/libstdc++-libc6.2-2.s
o.3 (0x405c7000)
libm.so.6 => /lib/libm.so.6 (0x4060d000)
libc.so.6 => /lib/libc.so.6 (0x40630000)
libstdc++-libc6.1-1.so.2 => /usr/i486-slackware-linux/lib/libstdc++-libc6.1-1.s
o.2 (0x40766000)
/lib/ld-linux.so.2 => /lib/ld-linux.so.2 (0x40000000)

cat gutbrowslibsRedHat:
libqt.so.2 => /usr/lib/qt-2.3.1/lib/libqt.so.2 (0x40029000)
libXext.so.6 => /usr/X11R6/lib/libXext.so.6 (0x404f1000)
libX11.so.6 => /usr/X11R6/lib/libX11.so.6 (0x404ff000)
libstdc++-libc6.2-2.so.3 => /usr/lib/libstdc++-libc6.2-2.so.3 (0x405df000)
libm.so.6 => /lib/i686/libm.so.6 (0x40621000)
libc.so.6 => /lib/i686/libc.so.6 (0x40643000)
libSM.so.6 => /usr/X11R6/lib/libSM.so.6 (0x4077b000)
libICE.so.6 => /usr/X11R6/lib/libICE.so.6 (0x40784000)
libXft.so.1 => /usr/X11R6/lib/libXft.so.1 (0x4079b000)
libpng.so.2 => /usr/lib/libpng.so.2 (0x407aa000)
libz.so.1 => /usr/lib/libz.so.1 (0x407cc000)
libjpeg.so.62 => /usr/lib/libjpeg.so.62 (0x407da000)
libmng.so.1 => /usr/lib/libmng.so.1 (0x407f8000)
libdl.so.2 => /lib/libdl.so.2 (0x4083c000)
libgcc_s.so.1 => /lib/libgcc_s.so.1 (0x40840000)
/lib/ld-linux.so.2 => /lib/ld-linux.so.2 (0x40000000)
libXrender.so.1 => /usr/X11R6/lib/libXrender.so.1 (0x40849000)
libfontconfig.so.1 => /usr/lib/libfontconfig.so.1 (0x40851000)
libexpat.so.0 => /usr/lib/libexpat.so.0 (0x40876000)
libfreetype.so.6 => /usr/lib/libfreetype.so.6 (0x40896000)

strace gutenbrowser ends:

open("/usr/X11R6/lib/X11/locale/compose.dir", O_RDONLY) = 5
fstat64(5, {st_mode=S_IFREG|0444, st_size=24253, ...}) = 0
old_mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 
0
x40502000
read(5, "# $Xorg: compose.dir,v 1.3 2000/"..., 4096) = 4096
close(5)                                = 0
munmap(0x40502000, 4096)                = 0
access("/usr/X11R6/lib/X11/locale/iso8859-1/Compose", R_OK) = 0
open("/usr/X11R6/lib/X11/locale/iso8859-1/Compose", O_RDONLY) = 5
fstat64(5, {st_mode=S_IFREG|0444, st_size=20412, ...}) = 0
old_mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 
0
x40502000
read(5, "# $Xorg: iso8859-1,v 1.3 2000/08"..., 4096) = 4096
read(5, "\n<Multi_key> <a> <underscore>\t\t:"..., 4096) = 4096
read(5, "\t: \"\\303\"\tAtilde\n<Multi_key> <mi"..., 4096) = 4096
read(5, "\t: \"\\355\"\tiacute\n<Multi_key> <i>"..., 4096) = 4096
read(5, "te\n<Multi_key> <Y> <apostrophe>\t"..., 4096) = 4028
read(5, "", 4096)                       = 0
close(5)                                = 0
munmap(0x40502000, 4096)                = 0
brk(0)                                  = 0x811c000
brk(0x811d000)                          = 0x811d000
write(3, "\2\0\4\0:\0\0\0\0\10\0\0003@`\0\2t\4\0:\0\0\0\0\10\0\0"..., 56) = 56
read(3, 0xbffff3f8, 32)                 = -1 EAGAIN (Resource temporarily 
unavai
lable)
select(4, [3], NULL, NULL, NULL)        = 1 (in [3])
read(3, "\1\0006\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\350\353"..., 32) = 
32
write(3, "\24\0\6\0:\0\0\0\27\0\0\0\0\0\0\0\0\0\0\0\0 \0\0", 24) = 24
read(3, 0xbffff490, 32)                 = -1 EAGAIN (Resource temporarily 
unavai
lable)
select(4, [3], NULL, NULL, NULL)        = 1 (in [3])
read(3, "\1\0007\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\350\353"..., 32) = 
32
brk(0)                                  = 0x811d000
brk(0x8120000)                          = 0x8120000
brk(0)                                  = 0x8120000
brk(0x8121000)                          = 0x8121000
writev(2, [{"gutenbrowser", 12}, {": ", 2}, {"relocation error", 16}, {": ", 
2},
 {"gutenbrowser", 12}, {": ", 2}, {"undefined symbol: qInitNetworkPr"..., 43}, 
{
"", 0}, {"", 0}, {"\n", 1}], 10gutenbrowser: relocation error: gutenbrowser: 
und
efined symbol: qInitNetworkProtocols__Fv
) = 90
exit_group(127)                         = ?


Regards
-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
