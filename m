From: Peter Howell <p.howell74@rcn.com>
Subject: WebVCR - The coolest thing ever?
Date: 26 May 2003 08:15:46 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1053951346.2905.23.camel@smeagle>
References: <20030425152005.A629@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030425152005.A629@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

At least I think it would be the coolest thing ever.  Imagine being able
to digitally record video (ala TiVo) with your linux box, and even being
able to program said recording from a remote location.  

        Now the catch. Has anyone managed to install vcr-1.09 on
redhat8?  ( http://www.stack.nl/~brama/vcr/ ) When I attempt to make the
program, I get the following errors.

It looks like my compiler is missing something, but I'm not sure what.

Thanks

Peter


make  all-recursive
make[1]: Entering directory `/home/nupgup/Stuff/TV/vcr-1.09'
Making all in src
make[2]: Entering directory `/home/nupgup/Stuff/TV/vcr-1.09/src'
c++ -DHAVE_CONFIG_H -I. -I. -I..   -I/usr/local/include/avifile  -O2 -c
main.cc
In file included from /usr/include/c++/3.2/backward/iostream.h:31,
                 from main.cc:19:
/usr/include/c++/3.2/backward/backward_warning.h:32:2: warning: #warning
This file includes at least one deprecated or antiquated header. Please
consider using one of the 32 headers found in section 17.4.1.2 of the
C++ standard. Examples include substituting the <X> header for the <X.h>
header for C++ includes, or <sstream> instead of the deprecated header
<strstream.h>. To disable this warning use -Wno-deprecated.
In file included from main.cc:22:
vcr.h:17:4: #error "Read the README, section 2 & 3 about avifile-0.6 and
follow the instructions."
main.cc: In function `void list_codecs()':
main.cc:508: no match for `__gnu_cxx::__normal_iterator<CodecInfo*,
   std::vector<CodecInfo, std::allocator<CodecInfo> > >& =
avm::CodecInfo*'
   operator
/usr/include/c++/3.2/bits/stl_iterator.h:571: candidates are:
   __gnu_cxx::__normal_iterator<CodecInfo*, std::vector<CodecInfo,
   std::allocator<CodecInfo> > >&
__gnu_cxx::__normal_iterator<CodecInfo*,
   std::vector<CodecInfo, std::allocator<CodecInfo> > >::operator=(const
   __gnu_cxx::__normal_iterator<CodecInfo*, std::vector<CodecInfo,
   std::allocator<CodecInfo> > >&)
main.cc:508: no match for `__gnu_cxx::__normal_iterator<CodecInfo*,
   std::vector<CodecInfo, std::allocator<CodecInfo> > >& !=
avm::CodecInfo*'
   operator
main.cc: In function `void list_attributes(int)':
main.cc:560: no match for `__gnu_cxx::__normal_iterator<const
AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> > >& =
   avm::AttributeInfo*' operator
/usr/include/c++/3.2/bits/stl_iterator.h:571: candidates are:
   __gnu_cxx::__normal_iterator<const AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> > >&
   __gnu_cxx::__normal_iterator<const AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> >
   >::operator=(const __gnu_cxx::__normal_iterator<const AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> > >&)
main.cc:560: no match for `__gnu_cxx::__normal_iterator<const
AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> > >& !=
   avm::AttributeInfo*' operator
main.cc:594: no match for `__gnu_cxx::__normal_iterator<const
avm::string*,
   std::vector<avm::string, std::allocator<avm::string> > >& = const
   avm::string*' operator
/usr/include/c++/3.2/bits/stl_iterator.h:571: candidates are:
   __gnu_cxx::__normal_iterator<const avm::string*,
std::vector<avm::string,
   std::allocator<avm::string> > >& __gnu_cxx::__normal_iterator<const
   avm::string*, std::vector<avm::string, std::allocator<avm::string> >
   >::operator=(const __gnu_cxx::__normal_iterator<const avm::string*,
   std::vector<avm::string, std::allocator<avm::string> > >&)
main.cc:594: no match for `__gnu_cxx::__normal_iterator<const
avm::string*,
   std::vector<avm::string, std::allocator<avm::string> > >& != const
   avm::string*' operator
main.cc:604: no matching function for call to
`GetCodecAttr(avm::CodecInfo&,
   const char*, char[256], int)'
/usr/local/include/avifile/creators.h:124: candidates are: int
   Creators::GetCodecAttr(const CodecInfo&, const char*, int&)
/usr/local/include/avifile/creators.h:132:                 int
   Creators::GetCodecAttr(const CodecInfo&, const char*, const char**)
main.cc: In function `int is_valid_codec(const char*)':
main.cc:810: no match for `__gnu_cxx::__normal_iterator<CodecInfo*,
   std::vector<CodecInfo, std::allocator<CodecInfo> > >& =
avm::CodecInfo*'
   operator
/usr/include/c++/3.2/bits/stl_iterator.h:571: candidates are:
   __gnu_cxx::__normal_iterator<CodecInfo*, std::vector<CodecInfo,
   std::allocator<CodecInfo> > >&
__gnu_cxx::__normal_iterator<CodecInfo*,
   std::vector<CodecInfo, std::allocator<CodecInfo> > >::operator=(const
   __gnu_cxx::__normal_iterator<CodecInfo*, std::vector<CodecInfo,
   std::allocator<CodecInfo> > >&)
main.cc:810: no match for `__gnu_cxx::__normal_iterator<CodecInfo*,
   std::vector<CodecInfo, std::allocator<CodecInfo> > >& !=
avm::CodecInfo*'
   operator
main.cc: In function `int get_codec_index(int)':
main.cc:1009: no match for `__gnu_cxx::__normal_iterator<CodecInfo*,
   std::vector<CodecInfo, std::allocator<CodecInfo> > >& =
avm::CodecInfo*'
   operator
/usr/include/c++/3.2/bits/stl_iterator.h:571: candidates are:
   __gnu_cxx::__normal_iterator<CodecInfo*, std::vector<CodecInfo,
   std::allocator<CodecInfo> > >&
__gnu_cxx::__normal_iterator<CodecInfo*,
   std::vector<CodecInfo, std::allocator<CodecInfo> > >::operator=(const
   __gnu_cxx::__normal_iterator<CodecInfo*, std::vector<CodecInfo,
   std::allocator<CodecInfo> > >&)
main.cc:1009: no match for `__gnu_cxx::__normal_iterator<CodecInfo*,
   std::vector<CodecInfo, std::allocator<CodecInfo> > >& !=
avm::CodecInfo*'
   operator
main.cc: In function `short int set_attribute(int, const char*, const
char*)':
main.cc:1037: no match for `__gnu_cxx::__normal_iterator<const
AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> > >& =
   avm::AttributeInfo*' operator
/usr/include/c++/3.2/bits/stl_iterator.h:571: candidates are:
   __gnu_cxx::__normal_iterator<const AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> > >&
   __gnu_cxx::__normal_iterator<const AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> >
   >::operator=(const __gnu_cxx::__normal_iterator<const AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> > >&)
main.cc:1037: no match for `__gnu_cxx::__normal_iterator<const
AttributeInfo*,
   std::vector<AttributeInfo, std::allocator<AttributeInfo> > >& !=
   avm::AttributeInfo*' operator
make[2]: *** [main.o] Error 1
make[2]: Leaving directory `/home/nupgup/Stuff/TV/vcr-1.09/src'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/home/nupgup/Stuff/TV/vcr-1.09'
make: *** [all-recursive-am] Error 2



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
