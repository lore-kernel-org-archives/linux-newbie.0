From: axel@pearbough.net
Subject: PROBLEM: automake and co.
Date: Wed, 25 Dec 2002 02:04:57 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021225010457.GA1618@neon.pearbough.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

even though I found my way thru understanding linux till now quite good, i
have not understood the work of automake & aclocal.

I often checkout sources from CVS where there is no configure script but
only an autogen.sh which generates all kinds of necessary files.

I am using Slackware 9.0-beta with automake 1.7.1.

When I run the autogen.sh script in xmms/ I get so many strange warnings and
errors that is frightening me.

I had previously installed automake-1.4-p6 since some software needed
especially this version of automake. Because I was getting those errors with
xmms/autogen.sh I deinstalled automake-1.4-p6 to avoid any conflicts and
copy all files from /usr/share/aclocal to /usr/share/aclocal-1.7.

I would be glad about help about this as it seems this aclocal stuff seems
quite difficult.

Here come the output of autogen.sh in xmms/:

Generating configuration files for XMMS, please wait....
 
Running gettextize, please ignore non-fatal messages....
Copying file ABOUT-NLS
Copying file config.rpath
Not copying intl/ directory.
Copying file po/Makefile.in.in
Copying file po/Makevars.template
Copying file po/Rules-quot
Copying file po/boldquot.sed
Copying file po/en@boldquot.header
Copying file po/en@quot.header
Copying file po/insert-header.sin
Copying file po/quot.sed
Copying file po/remove-potcdate.sin
Copying file m4/codeset.m4
Copying file m4/gettext.m4
Copying file m4/glibc21.m4
Copying file m4/iconv.m4
Copying file m4/isc-posix.m4
Copying file m4/lcmessage.m4
Copying file m4/lib-ld.m4
Copying file m4/lib-link.m4
Copying file m4/lib-prefix.m4
Copying file m4/progtest.m4
 
Please use AM_GNU_GETTEXT([external]) in order to cause autoconfiguration
to look for an external libintl.
 
Please create po/Makevars from the template in po/Makevars.template.
You can then remove po/Makevars.template.
 
Please run 'aclocal -I m4' to regenerate the aclocal.m4 file.
You need aclocal from GNU automake 1.5 (or newer) to do this.
Then run 'autoconf' to regenerate the configure file.
 
Please change gnomexmms/Makefile.am to use @LTLIBINTL@ or @LIBINTL@ instead
of
@INTLLIBS@. Which one, depends whether it is used with libtool or not.
@INTLLIBS@ will go away.
 
Please change wmxmms/Makefile.am to use @LTLIBINTL@ or @LIBINTL@ instead of
@INTLLIBS@. Which one, depends whether it is used with libtool or not.
@INTLLIBS@ will go away.
 
Please change xmms/Makefile.am to use @LTLIBINTL@ or @LIBINTL@ instead of
@INTLLIBS@. Which one, depends whether it is used with libtool or not.
@INTLLIBS@ will go away.
 
You will also need config.guess and config.sub, which you can get from
ftp://ftp.gnu.org/pub/gnu/config/.
 
You might also want to copy the convenience header file gettext.h
from the /usr/share/gettext directory into your package.
It is a wrapper around <libintl.h> that implements the configure
--disable-nls
option.
 
WARNING: Using auxiliary files such as cconfig.h', onfig.h.bot'
WARNING: and onfig.h.top', to define templates for onfig.h.in'
WARNING: is deprecated and discouraged.
 
WARNING: Using the third argument of C_DEFINE' and
WARNING: C_DEFINE_UNQUOTED' allows to define a template without
WARNING: cconfig.h':
 
WARNING:   AC_DEFINE([NEED_MAIN], 1,
WARNING:             [Define if a function 
ain' is needed.])
 
WARNING: More sophisticated templates can also be produced, see the
WARNING: documentation.
configure.in:606: error: o/Makefile.in' is already registered with
AC_CONFIG_FILES.
autoconf/status.m4:844: AC_CONFIG_FILES is expanded from...
configure.in:606: the top level
autom4te: /usr/bin/m4 failed with exit status: 1
autoheader: /usr/bin/autom4te failed with exit status: 1
configure.in:606: error: o/Makefile.in' is already registered with
AC_CONFIG_FILES.
autoconf/status.m4:844: AC_CONFIG_FILES is expanded from...
configure.in:606: the top level
autom4te: /usr/bin/m4 failed with exit status: 1
configure.in: M_INIT_AUTOMAKE' must be used
automake: your implementation of AM_INIT_AUTOMAKE comes from an
automake: old Automake version.  You should recreate aclocal.m4
automake: with aclocal and run automake again.
automake: no 
akefile.am' found or specified
configure.in:606: error: o/Makefile.in' is already registered with
AC_CONFIG_FILES.
autoconf/status.m4:844: AC_CONFIG_FILES is expanded from...
configure.in:606: the top level
autom4te: /usr/bin/m4 failed with exit status: 1
WARNING: Using auxiliary files such as cconfig.h', onfig.h.bot'
WARNING: and onfig.h.top', to define templates for onfig.h.in'
WARNING: is deprecated and discouraged.
 
WARNING: Using the third argument of C_DEFINE' and
WARNING: C_DEFINE_UNQUOTED' allows to define a template without
WARNING: cconfig.h':
 
WARNING:   AC_DEFINE([NEED_MAIN], 1,
WARNING:             [Define if a function 
ain' is needed.])
 
WARNING: More sophisticated templates can also be produced, see the
WARNING: documentation.
autoheader: onfig.h.in' is unchanged
./autogen.sh: line 40: ./configure: No such file or directory
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
