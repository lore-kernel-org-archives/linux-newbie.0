From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Tkdesk Segmentation Fault
Date: Wed, 6 Nov 2002 12:29:13 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021106122913.A1142@neutrino.particles.org>
References: <20021105120316.F2076@neutrino.particles.org> <200211060242.gA62gDM04000@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211060242.gA62gDM04000@philonline.com>; from pfheiss@philonline.com on Wed, Nov 06, 2002 at 10:42:13AM +0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

On Wed, Nov 06, 2002 at 10:42:13AM +0800, Peter wrote:
> eathan@otenet.gr said:
> > Inspect the core file using gdb:
> > % gdb tkdesk ./core 
> 
> There is no core file created.

% ulimit -c 1000000 

Rerun TkDesk and let it crash. You should have a core file now.

> eathan@otenet.gr said:
> > Or use strace:
> > $ strace tkdesk
> 
> This is the tail of the strace output:
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 
> 0x40
> 016000
> read(4, "#\t$Xorg: locale.dir,v 1.3 2000/0"..., 4096) = 4096
> read(4, "LOCALE\t\t\tfr_BE.ISO8859-15\niso885"..., 4096) = 4096
> read(4, ".TCVN\nvi_VN.viscii/XLC_LOCALE\t\tv"..., 4096) = 4096
> read(4, "\t\t\tlv_LV.UTF-8\nen_US.UTF-8/XLC_L"..., 4096) = 4096
> close(4)                                = 0
> munmap(0x40016000, 4096)                = 0
> open("/usr/X11R6/lib/X11/locale/C/XI18N_OBJS", O_RDONLY) = 4
> fstat64(4, {st_dev=makedev(22, 67), st_ino=451076, st_mode=S_IFREG|0444, 
> st_nlin
> k=1, st_uid=0, st_gid=0, st_blksize=4096, st_blocks=8, st_size=333, 
> st_atime=200
> 2/11/06-09:11:05, st_mtime=2002/04/19-11:11:08, st_ctime=2002/11/03-11:24:28}) 
> =
>  0
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 
> 0x40
> 016000
> read(4, "# CATEGORY(XLC|XIM|OM)\tSHARED_LI"..., 4096) = 333
> read(4, "", 4096)                       = 0
> close(4)                                = 0
> munmap(0x40016000, 4096)                = 0
> --- SIGSEGV (Segmentation fault) ---
> +++ killed by SIGSEGV +++

It's probably a parsing error. The script opens various files (such as
/usr/X11R6/lib/X11/locale/C/XI18N_OBJS) and tries to read them. I guess (but
that is just a guess) your upgrade from RedHat 7.1 to RedHat 7.3 had as result
to change the format/contents of these files, hence TkDesk can't parse them and
segfaults (if this is the case, it shouldn't happen if TkDesk was properly
programmed).

You'll find more if you inspect the core file with gdb (use the command
'where' to find where it crashed).

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
