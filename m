From: Peter <pfheiss@philonline.com>
Subject: Re: Tkdesk Segmentation Fault
Date: Thu, 07 Nov 2002 14:58:57 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211070659.gA76wvp02557@philonline.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: linux-newbie@vger.kernel.org

Thanks!

eathan@otenet.gr said:
> % ulimit -c 1000000=20
> Rerun TkDesk and let it crash. You should have a core file now.=20

$ tkdesk
Segmentation fault (core dumped)

except it's nowhere to be found. Wait, here it is now with ending numbe=
rs:=20
core.1298
One of the new tricks of RH7.3?

gdb core.1298=20
This GDB was configured as "i386-redhat-linux"...core.1298: No such fil=
e or=20
directory

cp core.1298 ~/core

gdb core
This GDB was configured as "i386-redhat-linux"..."/home/peter/core": no=
t in=20
executable format: File format not recognized

(gdb) where
No stack.

Looking at the core file I see a lot of talk about:
"his probably means that Itcl/Tcl weren't installed properly"
and
set msg "Can't find a usable init.tcl in the following directories:=20
"
The end of core file is:

  set f [open pkgIndex.tcl w]
    puts $f $index
    close $f
    cd $oldDir
@|[=01@(=85=C9u=E9=8B=930
@|=D3=0F@L<
@=01@=85=3D
followed by a lot more of those weird signs.

ray@comarre.com said:
> You might also want to make sure that even after you install TCL 8.0,
> tkdesk uses it rather then the more recent version of Tcl that RH has
> installed.

I did that by changing the tcl/tlConfig.sh files.


ray@comarre.com said:
> You  might want to ldd tcl (or whatever the right name is -- see what
> interpreter the tkdesk script is invoking on its shebang line).=20

ldd tcl... gives the same files in RH7.3 as in RH6.2.

If this is another case of strange happenings under RH7.3 then we might=
 probe=20
again in the dark or is it that the new tk/tcl of RH7.3 are at fault on=
ly.=20
Could one reinstall the ones of RH7.2 w/o messing-up everything?

I hate to see a solid good program <tkdesk> go to waste on account of R=
H7.3.

Regards

--=20
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
