From: Peter Howell <p.howell74@rcn.com>
Subject: Problem installing avi libraries
Date: 23 Feb 2003 09:12:41 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1046009561.1389.21.camel@smeagle>
References: <20030220171332.GA4937@teamfinders.org>
	<Pine.LNX.4.21.0302210955390.4563-100000@hestia> 
	<20030223133039.GA27756@teamfinders.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030223133039.GA27756@teamfinders.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

I've been trying to install the avifiles to allow me to turn my linux
box into a vcr.  Unfortunately, by naivety is getting me in trouble. 
Here is what I've done, in what I hope is sufficient detail

Downloaded avifile-0.53.5.tar.gz and binaries-010122.zip.

# tar xvfz avifile-0.53-5.tar.gz
# cd avifile-0.53-5
# ./configure

loading cache ./config.cache
checking for a BSD compatible install... (cached) /usr/bin/install -c
checking whether build environment is sane... yes
checking whether make sets ${MAKE}... (cached) yes
checking for working aclocal... found
checking for working autoconf... found
checking for working automake... found
checking for working autoheader... found
checking for working makeinfo... found
checking host system type... i686-pc-linux-gnu
checking target system type... i686-pc-linux-gnu
checking for gcc... (cached) gcc
checking whether the C compiler (gcc  ) works... yes
checking whether the C compiler (gcc  ) is a cross-compiler... no
checking whether we are using GNU C... (cached) yes
checking whether gcc accepts -g... (cached) yes
checking how to run the C preprocessor... (cached) gcc -E
checking for c++... (cached) c++
checking whether the C++ compiler (c++  ) works... yes
checking whether the C++ compiler (c++  ) is a cross-compiler... no
checking whether we are using GNU C++... (cached) yes
checking whether c++ accepts -g... (cached) yes
checking for a BSD compatible install... /usr/bin/install -c
checking for ranlib... (cached) ranlib
checking for ld used by GCC... (cached) /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... (cached) yes
checking for BSD-compatible nm... (cached) /usr/bin/nm -B
checking whether ln -s works... (cached) yes
checking for object suffix... o
checking for executable suffix... no
checking for gcc option to produce PIC... -fPIC
checking if gcc PIC flag -fPIC works... yes
checking if gcc supports -c -o file.o... yes
checking if gcc supports -c -o file.lo... yes
checking if gcc supports -fno-rtti -fno-exceptions ... yes
checking if gcc static flag -static works... -static
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking whether the linker (/usr/bin/ld) supports shared libraries...
yes
checking command to parse /usr/bin/nm -B output... ok
checking how to hardcode library paths into programs... immediate
checking for /usr/bin/ld option to reload object files... -r
checking dynamic linker characteristics... Linux ld.so
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no
checking for objdir... .libs
creating libtool
checking for dlopen in -ldl... (cached) yes
checking for pthreads... -lpthread yes
checking for ANSI C header files... (cached) yes
checking for fcntl.h... (cached) yes
checking for limits.h... (cached) yes
checking for malloc.h... (cached) yes
checking for sys/ioctl.h... (cached) yes
checking for sys/time.h... (cached) yes
checking for unistd.h... (cached) yes
checking for working const... (cached) yes
checking for inline... (cached) inline
checking whether time.h and sys/time.h may both be included... (cached)
yes
checking whether gcc needs -traditional... (cached) no
checking for 8-bit clean memcmp... (cached) yes
checking for unistd.h... (cached) yes
checking for getpagesize... (cached) yes
checking for working mmap... (cached) yes
checking return type of signal handlers... (cached) void
checking for vprintf... (cached) yes
checking for ftime... (cached) yes
checking for gettimeofday... (cached) yes
checking for strdup... (cached) yes
checking for strstr... (cached) yes
checking for X... (cached) libraries /usr/X11R6/lib, headers
/usr/X11R6/include
checking for Qt... (cached) libraries /usr/lib/qt3-gcc3.2/lib, headers
/usr/lib/qt3-gcc3.2/includ
e
checking for moc... (cached) /usr/lib/qt3-gcc3.2/bin/moc
checking for uic... (cached) /usr/lib/qt3-gcc3.2/bin/uic
checking whether we like this Qt installation... checking for
/usr/lib/qt3-gcc3.2/include/qvarian
t.h... (cached) yes
checking whether to build QtVidcap... checking for
/usr/lib/qt3-gcc3.2/include/qtable.h... (cache
d) yes
checking for XF86DGAQueryExtension in -lXxf86dga... (cached) yes
checking for XF86VidModeSwitchMode in -lXxf86vm... (cached) yes
checking for sdl-config... (cached) /usr/bin/sdl-config
checking for SDL - version >= 1.1.3... yes
checking whether to build ac3 decoder module... no
creating ./config.status
creating ./Makefile
creating lib/Makefile
creating lib/loader/Makefile
creating lib/videocodec/Makefile
creating lib/audiodecoder/Makefile
creating lib/videocodec/Makefile
creating lib/avifile/Makefile
creating lib/aviplay/Makefile
creating player/Makefile
creating lib/audioencoder/Makefile
creating lib/audioencoder/lame3.70/Makefile
creating lib/audiodecoder/mpeg/Makefile
creating samples/Makefile
creating samples/avitest/Makefile
creating samples/benchmark/Makefile
creating samples/extractor/Makefile
creating samples/qtvidcap/Makefile
creating include/Makefile
creating include/wine/Makefile
creating bin/Makefile
creating samples/qtrecompress/Makefile
creating avifile-config
creating avifile.spec
creating lib/videocodec/DirectShow/Makefile
creating include/config.h
include/config.h is unchanged

	Everything appears to be fine, except for the check that my compilers
are cross-compilers.  The documentation isn't clear about whether this
is a fatal error, so I proceeded with the next step:

# make
Making all in include
make[1]: Entering directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/include'
make  all-recursive
make[2]: Entering directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/include'
Making all in wine
make[3]: Entering directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/include/wine'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/include/wine'
make[3]: Entering directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/include'
make[3]: Leaving directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/include'
make[2]: Leaving directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/include'
make[1]: Leaving directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/include'
Making all in lib
make[1]: Entering directory `/home/nupgup/Stuff/TV/avifile-0.53.5/lib'
Making all in loader
make[2]: Entering directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/lib/loader'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/lib/loader'
Making all in videocodec
make[2]: Entering directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/lib/videocodec'
Making all in DirectShow
make[3]: Entering directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/lib/videocodec/DirectShow'
/bin/sh ../../../libtool --silent --mode=compile c++ -DHAVE_CONFIG_H -I.
-I. -I../../../include   -g  -march=i586 -I/usr/X11R6/include
-I/usr/include/SDL -D_REENTRANT -w  -I../../../include -march=i586 -c
inputpin.cpp
inputpin.cpp: In constructor `CEnumPins::CEnumPins(IPin*, IPin*)':
inputpin.cpp:79: invalid conversion from `long int (*)(IUnknown*, GUID*,
   void**)' to `long int (*)(IUnknown*, GUID*, void**)'
inputpin.cpp:80: invalid conversion from `long int (*)(IUnknown*)' to
`long int
   (*)(IUnknown*)'
inputpin.cpp:81: invalid conversion from `long int (*)(IUnknown*)' to
`long int
   (*)(IUnknown*)'
inputpin.cpp:82: invalid conversion from `HRESULT (*)(IEnumPins*, long
unsigned
   int, IPin**, ULONG*)' to `HRESULT (*)(IEnumPins*, long unsigned int,
IPin**,
   ULONG*)'
inputpin.cpp:83: invalid conversion from `HRESULT (*)(IEnumPins*, long
unsigned
   int)' to `HRESULT (*)(IEnumPins*, long unsigned int)'
inputpin.cpp:84: invalid conversion from `HRESULT (*)(IEnumPins*)' to
`HRESULT
   (*)(IEnumPins*)'
inputpin.cpp:85: invalid conversion from `HRESULT (*)(IEnumPins*,
IEnumPins**)'
   to `HRESULT (*)(IEnumPins*, IEnumPins**)'
inputpin.cpp: In constructor `CInputPin::CInputPin(CBaseFilter*, const
   AM_MEDIA_TYPE&)':
inputpin.cpp:151: invalid conversion from `long int (*)(IUnknown*,
GUID*,
   void**)' to `long int (*)(IUnknown*, GUID*, void**)'
inputpin.cpp:152: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:153: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:154: invalid conversion from `HRESULT (*)(IPin*, IPin*,
   AM_MEDIA_TYPE*)' to `HRESULT (*)(IPin*, IPin*, AM_MEDIA_TYPE*)'
inputpin.cpp:155: invalid conversion from `HRESULT (*)(IPin*, IPin*,
const
   AM_MEDIA_TYPE*)' to `HRESULT (*)(IPin*, IPin*, const AM_MEDIA_TYPE*)'
inputpin.cpp:156: invalid conversion from `HRESULT (*)(IPin*)' to
`HRESULT
   (*)(IPin*)'
inputpin.cpp:157: invalid conversion from `HRESULT (*)(IPin*, IPin**)'
to `
   HRESULT (*)(IPin*, IPin**)'
inputpin.cpp:158: invalid conversion from `HRESULT (*)(IPin*,
AM_MEDIA_TYPE*)'
   to `HRESULT (*)(IPin*, AM_MEDIA_TYPE*)'
inputpin.cpp:159: invalid conversion from `HRESULT (*)(IPin*,
PIN_INFO*)' to `
   HRESULT (*)(IPin*, PIN_INFO*)'
inputpin.cpp:160: invalid conversion from `HRESULT (*)(IPin*,
PIN_DIRECTION*)'
   to `HRESULT (*)(IPin*, PIN_DIRECTION*)'
inputpin.cpp:161: invalid conversion from `HRESULT (*)(IPin*, WCHAR**)'
to `
   HRESULT (*)(IPin*, WCHAR**)'
inputpin.cpp:162: invalid conversion from `HRESULT (*)(IPin*, const
   AM_MEDIA_TYPE*)' to `HRESULT (*)(IPin*, const AM_MEDIA_TYPE*)'
inputpin.cpp:163: invalid conversion from `HRESULT (*)(IPin*,
   IEnumMediaTypes**)' to `HRESULT (*)(IPin*, IEnumMediaTypes**)'
inputpin.cpp:164: invalid conversion from `HRESULT (*)(IPin*, IPin**,
ULONG*)'
   to `HRESULT (*)(IPin*, IPin**, ULONG*)'
inputpin.cpp:165: invalid conversion from `HRESULT (*)(IPin*)' to
`HRESULT
   (*)(IPin*)'
inputpin.cpp:166: invalid conversion from `HRESULT (*)(IPin*)' to
`HRESULT
   (*)(IPin*)'
inputpin.cpp:167: invalid conversion from `HRESULT (*)(IPin*)' to
`HRESULT
   (*)(IPin*)'
inputpin.cpp:168: invalid conversion from `HRESULT (*)(IPin*, long long
int,
   long long int, double)' to `HRESULT (*)(IPin*, long long int, long
long int,
   double)'
inputpin.cpp: In constructor `CBaseFilter::CBaseFilter(const
AM_MEDIA_TYPE&,
   CBaseFilter2*)':
inputpin.cpp:325: invalid conversion from `long int (*)(IUnknown*,
GUID*,
   void**)' to `long int (*)(IUnknown*, GUID*, void**)'
inputpin.cpp:326: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:327: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:328: invalid conversion from `HRESULT (*)(IBaseFilter*,
CLSID*)'
   to `HRESULT (*)(IBaseFilter*, CLSID*)'
inputpin.cpp:329: invalid conversion from `HRESULT (*)(IBaseFilter*)' to
`
   HRESULT (*)(IBaseFilter*)'
inputpin.cpp:330: invalid conversion from `HRESULT (*)(IBaseFilter*)' to
`
   HRESULT (*)(IBaseFilter*)'
inputpin.cpp:331: invalid conversion from `HRESULT (*)(IBaseFilter*,
long long
   int)' to `HRESULT (*)(IBaseFilter*, long long int)'
inputpin.cpp:332: invalid conversion from `HRESULT (*)(IBaseFilter*,
long
   unsigned int, void*)' to `HRESULT (*)(IBaseFilter*, long unsigned
int,
   void*)'
inputpin.cpp:333: invalid conversion from `HRESULT (*)(IBaseFilter*,
   IReferenceClock*)' to `HRESULT (*)(IBaseFilter*, IReferenceClock*)'
inputpin.cpp:334: invalid conversion from `HRESULT (*)(IBaseFilter*,
   IReferenceClock**)' to `HRESULT (*)(IBaseFilter*, IReferenceClock**)'
inputpin.cpp:335: invalid conversion from `HRESULT (*)(IBaseFilter*,
   IEnumPins**)' to `HRESULT (*)(IBaseFilter*, IEnumPins**)'
inputpin.cpp:336: invalid conversion from `HRESULT (*)(IBaseFilter*,
const
   WCHAR*, IPin**)' to `HRESULT (*)(IBaseFilter*, const WCHAR*, IPin**)'
inputpin.cpp:337: invalid conversion from `HRESULT (*)(IBaseFilter*,
void*)' to
   `HRESULT (*)(IBaseFilter*, void*)'
inputpin.cpp:338: invalid conversion from `HRESULT (*)(IBaseFilter*,
   IFilterGraph*, const WCHAR*)' to `HRESULT (*)(IBaseFilter*,
IFilterGraph*,
   const WCHAR*)'
inputpin.cpp:339: invalid conversion from `HRESULT (*)(IBaseFilter*,
WCHAR**)'
   to `HRESULT (*)(IBaseFilter*, WCHAR**)'
inputpin.cpp: In constructor `CBaseFilter2::CBaseFilter2()':
inputpin.cpp:457: invalid conversion from `long int (*)(IUnknown*,
GUID*,
   void**)' to `long int (*)(IUnknown*, GUID*, void**)'
inputpin.cpp:458: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:459: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:460: invalid conversion from `HRESULT (*)(IBaseFilter*,
CLSID*)'
   to `HRESULT (*)(IBaseFilter*, CLSID*)'
inputpin.cpp:461: invalid conversion from `HRESULT (*)(IBaseFilter*)' to
`
   HRESULT (*)(IBaseFilter*)'
inputpin.cpp:462: invalid conversion from `HRESULT (*)(IBaseFilter*)' to
`
   HRESULT (*)(IBaseFilter*)'
inputpin.cpp:463: invalid conversion from `HRESULT (*)(IBaseFilter*,
long long
   int)' to `HRESULT (*)(IBaseFilter*, long long int)'
inputpin.cpp:464: invalid conversion from `HRESULT (*)(IBaseFilter*,
long
   unsigned int, void*)' to `HRESULT (*)(IBaseFilter*, long unsigned
int,
   void*)'
inputpin.cpp:465: invalid conversion from `HRESULT (*)(IBaseFilter*,
   IReferenceClock*)' to `HRESULT (*)(IBaseFilter*, IReferenceClock*)'
inputpin.cpp:466: invalid conversion from `HRESULT (*)(IBaseFilter*,
   IReferenceClock**)' to `HRESULT (*)(IBaseFilter*, IReferenceClock**)'
inputpin.cpp:467: invalid conversion from `HRESULT (*)(IBaseFilter*,
   IEnumPins**)' to `HRESULT (*)(IBaseFilter*, IEnumPins**)'
inputpin.cpp:468: invalid conversion from `HRESULT (*)(IBaseFilter*,
const
   WCHAR*, IPin**)' to `HRESULT (*)(IBaseFilter*, const WCHAR*, IPin**)'
inputpin.cpp:469: invalid conversion from `HRESULT (*)(IBaseFilter*,
void*)' to
   `HRESULT (*)(IBaseFilter*, void*)'
inputpin.cpp:470: invalid conversion from `HRESULT (*)(IBaseFilter*,
   IFilterGraph*, const WCHAR*)' to `HRESULT (*)(IBaseFilter*,
IFilterGraph*,
   const WCHAR*)'
inputpin.cpp:471: invalid conversion from `HRESULT (*)(IBaseFilter*,
WCHAR**)'
   to `HRESULT (*)(IBaseFilter*, WCHAR**)'
inputpin.cpp: In constructor `CRemotePin2::CRemotePin2(CBaseFilter2*)':
inputpin.cpp:478: invalid conversion from `long int (*)(IUnknown*,
GUID*,
   void**)' to `long int (*)(IUnknown*, GUID*, void**)'
inputpin.cpp:479: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:480: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:481: invalid conversion from `HRESULT (*)(IPin*,
PIN_INFO*)' to `
   HRESULT (*)(IPin*, PIN_INFO*)'
inputpin.cpp: In constructor `CRemotePin::CRemotePin(CBaseFilter*,
IPin*)':
inputpin.cpp:488: invalid conversion from `long int (*)(IUnknown*,
GUID*,
   void**)' to `long int (*)(IUnknown*, GUID*, void**)'
inputpin.cpp:489: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:490: invalid conversion from `long int (*)(IUnknown*)' to
`long
   int (*)(IUnknown*)'
inputpin.cpp:491: invalid conversion from `HRESULT (*)(IPin*,
PIN_DIRECTION*)'
   to `HRESULT (*)(IPin*, PIN_DIRECTION*)'
inputpin.cpp:492: invalid conversion from `HRESULT (*)(IPin*, IPin**)'
to `
   HRESULT (*)(IPin*, IPin**)'
inputpin.cpp:493: invalid conversion from `HRESULT (*)(IPin*,
AM_MEDIA_TYPE*)'
   to `HRESULT (*)(IPin*, AM_MEDIA_TYPE*)'
inputpin.cpp:494: invalid conversion from `HRESULT (*)(IPin*,
PIN_INFO*)' to `
   HRESULT (*)(IPin*, PIN_INFO*)'
make[3]: *** [inputpin.lo] Error 1
make[3]: Leaving directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/lib/videocodec/DirectShow'
make[2]: *** [all-recursive] Error 1
make[2]: Leaving directory
`/home/nupgup/Stuff/TV/avifile-0.53.5/lib/videocodec'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/home/nupgup/Stuff/TV/avifile-0.53.5/lib'
make: *** [all-recursive] Error 1


	Now these errors are a bit more worrisome, and this is as far as I've
been able to get.  Here is my kernal info

Linux version 2.4.18-24.8.0 (bhcompile@tweety.devel.redhat.com) (gcc
version 3.2 20020903 (Red Hat Linux 8.0 3.2-7)) #1 Fri Jan 31 07:28:55
EST 2003


Has anyone out there seen similar errors?  Do you think the problem is
really with gcc, or am I off base?  I've done some research, and I don't
know what I'm supposed to be cross-compiling to.  

Thanks

Peter


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
