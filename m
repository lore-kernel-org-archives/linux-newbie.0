From: Bryan Whitehead <driver@jpl.nasa.gov>
Subject: Re: Compiler method of finding header.
Date: Wed, 22 Oct 2003 13:53:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F96EE4F.4050005@jpl.nasa.gov>
References: <200310220657.50794.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200310220657.50794.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Adam@luchjenbroers.com
Cc: linux-newbie@vger.kernel.org

> /usr/include/openssl/kssl.h:72:18: krb5.h: No such file or directory
> 
> includes line:
> #include <krb5.h>
> 
> So it's expecting the header to be wherever the compiler expects them.
> 
> using locate: 
> /usr/kerberos/include/krb5.h
> 
> How do I tell the compiler where to look for headers? OS is RedHat 9.

Short answer:
Add "-I/usr/kerberos/include" to your GCC command.

Long answer:

This looks like a problem with kssl.h expecting a file to be located in 
the "standard search path" for gcc but it is not.

To see the standard search path for includes do this:
cpp -v

On my machine I get this:
[driver@mulan ~/junk]$ cpp -v
Reading specs from /usr/lib/gcc-lib/i586-mandrake-linux-gnu/3.2.2/specs
Configured with: ../configure --prefix=/usr --libdir=/usr/lib 
--with-slibdir=/lib --mandir=/usr/share/man --infodir=/usr/share/info 
--enable-shared --enable-threads=posix --disable-checking 
--enable-long-long --enable-__cxa_atexit 
--enable-languages=c,c++,ada,f77,objc,java 
--host=i586-mandrake-linux-gnu --with-system-zlib
Thread model: posix
gcc version 3.2.2 (Mandrake Linux 9.1 3.2.2-3mdk)
  /usr/lib/gcc-lib/i586-mandrake-linux-gnu/3.2.2/cpp0 -lang-c -v 
-D__ELF__ -Dunix -D__gnu_linux__ -Dlinux -D__ELF__ -D__unix__ 
-D__gnu_linux__ -D__linux__ -D__unix -D__linux -Asystem=posix 
-D__NO_INLINE__ -D__STDC_HOSTED__=1 -Acpu=i386 -Amachine=i386 -Di386 
-D__i386 -D__i386__ -D__tune_i586__ -D__tune_pentium__ -
GNU CPP version 3.2.2 (Mandrake Linux 9.1 3.2.2-3mdk) (cpplib) (i386 
Linux/ELF)
ignoring nonexistent directory "/usr/i586-mandrake-linux-gnu/include"
#include "..." search starts here:
#include <...> search starts here:
  /usr/local/include
  /usr/lib/gcc-lib/i586-mandrake-linux-gnu/3.2.2/include
  /usr/include
End of search list.


The important part is at the bottom - I cut/paste the important part:
#include "..." search starts here:
#include <...> search starts here:
  /usr/local/include
  /usr/lib/gcc-lib/i586-mandrake-linux-gnu/3.2.2/include
  /usr/include
End of search list.

So the default search path for files that are "#include <...>" is:
/usr/local/include
/usr/lib/gcc-lib/i586-mandrake-linux-gnu/3.2.2/include
/usr/include

If you want to ADD a directory to this when you run gcc pass "-I". You 
can do a test with cpp:
[driver@mulan ~/junk]$ cpp -v -I/usr/X11R6/include
Reading specs from /usr/lib/gcc-lib/i586-mandrake-linux-gnu/3.2.2/specs
Configured with: ../configure --prefix=/usr --libdir=/usr/lib 
--with-slibdir=/lib --mandir=/usr/share/man --infodir=/usr/share/info 
--enable-shared --enable-threads=posix --disable-checking 
--enable-long-long --enable-__cxa_atexit 
--enable-languages=c,c++,ada,f77,objc,java 
--host=i586-mandrake-linux-gnu --with-system-zlib
Thread model: posix
gcc version 3.2.2 (Mandrake Linux 9.1 3.2.2-3mdk)
  /usr/lib/gcc-lib/i586-mandrake-linux-gnu/3.2.2/cpp0 -lang-c -v 
-I/usr/X11R6/include/ -D__ELF__ -Dunix -D__gnu_linux__ -Dlinux -D__ELF__ 
-D__unix__ -D__gnu_linux__ -D__linux__ -D__unix -D__linux -Asystem=posix 
-D__NO_INLINE__ -D__STDC_HOSTED__=1 -Acpu=i386 -Amachine=i386 -Di386 
-D__i386 -D__i386__ -D__tune_i586__ -D__tune_pentium__ -
GNU CPP version 3.2.2 (Mandrake Linux 9.1 3.2.2-3mdk) (cpplib) (i386 
Linux/ELF)
ignoring nonexistent directory "/usr/i586-mandrake-linux-gnu/include"
#include "..." search starts here:
#include <...> search starts here:
  /usr/X11R6/include
  /usr/local/include
  /usr/lib/gcc-lib/i586-mandrake-linux-gnu/3.2.2/include
  /usr/include
End of search list.

Notice the search list now includes /usr/X11R6/include as I added it 
with the -I.

Remember if you pass a direcory that doesn't exist, or you cannot access 
it will be listed before the directories with an error. A standard 
mandrake install has one already compiled in... It's this:
ignoring nonexistent directory "/usr/i586-mandrake-linux-gnu/include"

Note: cpp is the C pre-proccessor that gcc will call. -I works the same 
in both.

-- 
Bryan Whitehead
SysAdmin - JPL - Interferometry and Large Optical Systems
Phone: 818 354 2903
driver@jpl.nasa.gov

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
