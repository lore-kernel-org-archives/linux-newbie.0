From: Peter <pfheiss@philonline.com>
Subject: Re: Tkdesk Segmentation Fault
Date: Wed, 06 Nov 2002 10:42:13 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211060242.gA62gDM04000@philonline.com>
References: <20021105120316.F2076@neutrino.particles.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Tue, 05 Nov 2002 12:03:16 +0200."
             <20021105120316.F2076@neutrino.particles.org> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks!

On Tue, Nov 05, 2002 at 09:26:22AM +0800, Peter wrote:
>> Only the message 'Segmentation fault' shows up immediately after giving the 
>> command tkdesk.
> 
>> Why would that be and how could it be corrected?

I have to add from RH5.2 thru RH7.2 tkdesk always opened flawlessly.
It is only now with RH7.3 that I have the problem to which I have (foolishly) 
upgraded a few days ago.

Ray, my guess is that is has something to do with the new libraries. How would 
I find out which one. ldd tkdesk gives "not a dynamic executable".
I still have RH6.2 running and could transfer the libraries from there.

If I try to re-./.configure I get error:
checking version of Tcl/Tk... 8.3/8.3

TkDesk requires Tcl/Tk versions 7.5/4.1, 7.6/4.2., or 8.0.
Older versions are unlikely to work, while newer ones are not
yet supported

So I copied Tcl/Tk...8.0 from RH6.2 over to RH7.3 and I still get the same 
error.

eathan@otenet.gr said:
> Inspect the core file using gdb:
> % gdb tkdesk ./core 

There is no core file created.

eathan@otenet.gr said:
> Or use strace:
> $ strace tkdesk

This is the tail of the strace output:
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 
0x40
016000
read(4, "#\t$Xorg: locale.dir,v 1.3 2000/0"..., 4096) = 4096
read(4, "LOCALE\t\t\tfr_BE.ISO8859-15\niso885"..., 4096) = 4096
read(4, ".TCVN\nvi_VN.viscii/XLC_LOCALE\t\tv"..., 4096) = 4096
read(4, "\t\t\tlv_LV.UTF-8\nen_US.UTF-8/XLC_L"..., 4096) = 4096
close(4)                                = 0
munmap(0x40016000, 4096)                = 0
open("/usr/X11R6/lib/X11/locale/C/XI18N_OBJS", O_RDONLY) = 4
fstat64(4, {st_dev=makedev(22, 67), st_ino=451076, st_mode=S_IFREG|0444, 
st_nlin
k=1, st_uid=0, st_gid=0, st_blksize=4096, st_blocks=8, st_size=333, 
st_atime=200
2/11/06-09:11:05, st_mtime=2002/04/19-11:11:08, st_ctime=2002/11/03-11:24:28}) 
=
 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 
0x40
016000
read(4, "# CATEGORY(XLC|XIM|OM)\tSHARED_LI"..., 4096) = 333
read(4, "", 4096)                       = 0
close(4)                                = 0
munmap(0x40016000, 4096)                = 0
--- SIGSEGV (Segmentation fault) ---
+++ killed by SIGSEGV +++

It's Greek for me.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
