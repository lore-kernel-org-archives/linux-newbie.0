From: Armen Kaleshian <akaleshian@kriation.com>
Subject: Re: IMAP Error
Date: Thu, 12 Feb 2004 09:06:23 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040212140623.GA10394@sevoog.kriation.com>
References: <002101c3f160$f4a0a8f0$0500a8c0@sea>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <002101c3f160$f4a0a8f0$0500a8c0@sea>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ralica Kirilova <larry@podovinastilki.com>
Cc: linux-newbie@vger.kernel.org

Where is libgdbm.so located on your machine? 

On Thu, Feb 12, 2004 at 02:08:41PM +0200, Ralica Kirilova wrote:
: Hi all,
: I have a problem with running courier-IMAP server.
: My system is Linux Slackware 9.1, uname -r --> 2.4.22
: I have qmail running.
: I'm trying to run ./configure [options] like described in
: http://www.inter7.com/courierimap/INSTALL.html#install
: 
: And I get this error:
: ----------------------------------------------------------------------------
: -----------
: checking for gdbm_open in -lgdbm... yes
: checking for gdbm_open... no
: checking for dbopen in -ldb... no
: checking for db_open in -ldb... no
: checking for db_env_create in -ldb... yes
: checking for dbopen... no
: checking for db_open... no
: checking for db_env_create... no
: configure: error: Cannot find either the gdbm or the db library.
: ----------------------------------------------------------------------------
: ------------
: I google for it and I find here
: http://www.inter7.com/courierimap/FAQ.html#libs
: an answer. But it didn't solve the problem.
: I have /usr/include/gdbm.h and /usr/lib/libgdbm.a         libgdbm.la
: libgdbm.so        libgdbm.so.2      libgdbm.so.2.0.0
: 
: In file config.log I've found that I'm maybe missing some libraries. It's a
: cut from this file
: ----------------------------------------------------------------------------
: -------------
: configure:3026: checking for gdbm_open
: configure:3076: gcc -o conftest -g -O2   conftest.c -lgdbm  >&5
: In file included from
: /usr/lib/gcc-lib/i386-slackware-linux/3.2.2/include/limits.h:132,
:                  from
: /usr/lib/gcc-lib/i386-slackware-linux/3.2.2/include/syslimits.h:7,
:                  from
: /usr/lib/gcc-lib/i386-slackware-linux/3.2.2/include/limits.h:11,
:                  from configure:3046:
: /usr/include/limits.h:132:75: no include path in which to find limits.h
: configure:3079: $? = 1
: configure: failed program was:
: | #line 3031 "configure"
: ----------------------------------------------------------------------------
: -------------
: 
: Maybe the question is very stupid, I'm sorry if it is so.
: Thanks for answers in advance!
: P.S. Excuse me for my bad english
: 
: 
: -
: To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
: the body of a message to majordomo@vger.kernel.org
: More majordomo info at  http://vger.kernel.org/majordomo-info.html
: Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
