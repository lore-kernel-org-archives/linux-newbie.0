From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: WebVCR - The coolest thing ever?
Date: Mon, 26 May 2003 13:51:14 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0305261344410.3342@reg_kipling>
References: <20030425152005.A629@lnx2.w8mch.ampr.org> <1053951346.2905.23.camel@smeagle>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1053951346.2905.23.camel@smeagle>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter Howell <p.howell74@rcn.com>
Cc: linux-newbie@vger.kernel.org

On Mon, 26 May 2003, Peter Howell wrote:

> At least I think it would be the coolest thing ever.  Imagine being able
> to digitally record video (ala TiVo) with your linux box, and even being
> able to program said recording from a remote location.
>
>         Now the catch. Has anyone managed to install vcr-1.09 on
> redhat8?  ( http://www.stack.nl/~brama/vcr/ ) When I attempt to make the
> program, I get the following errors.
>

 On a quick look, this package is not being actively maintained.

> It looks like my compiler is missing something, but I'm not sure what.
>
> Thanks
>
> Peter
>
>
> make  all-recursive
> make[1]: Entering directory `/home/nupgup/Stuff/TV/vcr-1.09'
> Making all in src
> make[2]: Entering directory `/home/nupgup/Stuff/TV/vcr-1.09/src'
> c++ -DHAVE_CONFIG_H -I. -I. -I..   -I/usr/local/include/avifile  -O2 -c
> main.cc
> In file included from /usr/include/c++/3.2/backward/iostream.h:31,
>                  from main.cc:19:
> /usr/include/c++/3.2/backward/backward_warning.h:32:2: warning: #warning
> This file includes at least one deprecated or antiquated header. Please
> consider using one of the 32 headers found in section 17.4.1.2 of the
> C++ standard. Examples include substituting the <X> header for the <X.h>
> header for C++ includes, or <sstream> instead of the deprecated header
> <strstream.h>. To disable this warning use -Wno-deprecated.

ok so far

> In file included from main.cc:22:
> vcr.h:17:4: #error "Read the README, section 2 & 3 about avifile-0.6 and
> follow the instructions."

 I imagine you'll have to do what it says.  The following are typical
c++ compile errors, typically caused by problems with header files.

> main.cc: In function `void list_codecs()':
> main.cc:508: no match for `__gnu_cxx::__normal_iterator<CodecInfo*,
>    std::vector<CodecInfo, std::allocator<CodecInfo> > >& =
> avm::CodecInfo*'
>    operator
> /usr/include/c++/3.2/bits/stl_iterator.h:571: candidates are:
>    __gnu_cxx::__normal_iterator<CodecInfo*, std::vector<CodecInfo,
>    std::allocator<CodecInfo> > >&
> __gnu_cxx::__normal_iterator<CodecInfo*,
>    std::vector<CodecInfo, std::allocator<CodecInfo> > >::operator=(const
>    __gnu_cxx::__normal_iterator<CodecInfo*, std::vector<CodecInfo,
>    std::allocator<CodecInfo> > >&)

 My only reservation about this is that the gcc-3.2 has changed a lot in
how it handles c++ (it's now much more compliant with recent standards).
The age of this version of the package suggests it predates gcc-3.2, so
you might still get problems, but definitely you need to read the README
and do whatever it is telling you.

Ken
-- 
Live Long or Prosper! No, wait, that wasn't it...
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
