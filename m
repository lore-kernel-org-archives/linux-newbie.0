From: Ray Olszewski <ray@comarre.com>
Subject: Re: Tkdesk Segmentation Fault
Date: Tue, 05 Nov 2002 22:06:20 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021105195647.020d7570@celine>
References: <Your message of "Tue, 05 Nov 2002 12:03:16 +0200." <20021105120316.F2076@neutrino.particles.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211060242.gA62gDM04000@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:42 AM 11/6/02 +0800, Peter wrote:
>On Tue, Nov 05, 2002 at 09:26:22AM +0800, Peter wrote:
> >> Only the message 'Segmentation fault' shows up immediately after 
> giving the
> >> command tkdesk.
> >
> >> Why would that be and how could it be corrected?
>
>I have to add from RH5.2 thru RH7.2 tkdesk always opened flawlessly.
>It is only now with RH7.3 that I have the problem to which I have (foolishly)
>upgraded a few days ago.
>
>Ray, my guess is that is has something to do with the new libraries. How 
>would
>I find out which one. ldd tkdesk gives "not a dynamic executable".
>I still have RH6.2 running and could transfer the libraries from there.

Peter -- I have absolutely no familiarity with tkdesk, sso all these 
comments are based on my more general understanding of Linux systems.

 From the ldd response, I'd infer that it is a script rather than an 
executable, presumably an tcl script from the beginning of its name. You 
might want to ldd tcl (or whatever the right name is -- see what 
interpreter the tkdesk script is invoking on its shebang line). But Tcl 
itself *seems* (I'm not certain because I do not have it installed) to 
depend only on libc6, and I'd be surprised if RH's install of libc6 is 
buggy (or its bugs would show up everywhere, this lib being so central to 
all apps).

You might also want to make sure that even after you install TCL 8.0, 
tkdesk uses it rather then the more recent version of Tcl that RH has 
installed.

As to the strace output you included, I can pretty much read it, but I 
don't see where or why it is segfaulting. Perhaps whoever suggested using 
strace will be better able to spot the exact problem than I am. The last 
statement executed -- the munmap -- appears correctly to be releasing the 
4096 bytes of memory that were allocated by mmap a few lines earlier, and 
the several reads right before it look OK too. So I'm missing it, whatever 
it is. Sorry.


>If I try to re-./.configure I get error:
>checking version of Tcl/Tk... 8.3/8.3
>
>TkDesk requires Tcl/Tk versions 7.5/4.1, 7.6/4.2., or 8.0.
>Older versions are unlikely to work, while newer ones are not
>yet supported
>
>So I copied Tcl/Tk...8.0 from RH6.2 over to RH7.3 and I still get the same
>error.
>
>eathan@otenet.gr said:
> > Inspect the core file using gdb:
> > % gdb tkdesk ./core
>
>There is no core file created.
>
>eathan@otenet.gr said:
> > Or use strace:
> > $ strace tkdesk
>
>This is the tail of the strace output:
>mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
>0x40
>016000
>read(4, "#\t$Xorg: locale.dir,v 1.3 2000/0"..., 4096) = 4096
>read(4, "LOCALE\t\t\tfr_BE.ISO8859-15\niso885"..., 4096) = 4096
>read(4, ".TCVN\nvi_VN.viscii/XLC_LOCALE\t\tv"..., 4096) = 4096
>read(4, "\t\t\tlv_LV.UTF-8\nen_US.UTF-8/XLC_L"..., 4096) = 4096
>close(4)                                = 0
>munmap(0x40016000, 4096)                = 0
>open("/usr/X11R6/lib/X11/locale/C/XI18N_OBJS", O_RDONLY) = 4
>fstat64(4, {st_dev=makedev(22, 67), st_ino=451076, st_mode=S_IFREG|0444,
>st_nlin
>k=1, st_uid=0, st_gid=0, st_blksize=4096, st_blocks=8, st_size=333,
>st_atime=200
>2/11/06-09:11:05, st_mtime=2002/04/19-11:11:08, 
>st_ctime=2002/11/03-11:24:28})
>=
>  0
>mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
>0x40
>016000
>read(4, "# CATEGORY(XLC|XIM|OM)\tSHARED_LI"..., 4096) = 333
>read(4, "", 4096)                       = 0
>close(4)                                = 0
>munmap(0x40016000, 4096)                = 0
>--- SIGSEGV (Segmentation fault) ---
>+++ killed by SIGSEGV +++
>
>It's Greek for me.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
