From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Extract images from zipped .eve archives
Date: Fri, 29 Nov 2002 15:51:01 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE7D335.3B9AC14E@gelm.net>
References: <5.1.0.14.1.20021129083149.02134d90@celine> <200211291827.gATIRCP02697@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: ray@comarre.com, linux-newbie@vger.kernel.org


Haines Brown wrote:
> 
> > >The unzip utility does not extract the files, but simply lists the
> > >contents of the ZIP files.
> >
> > It should extract them as its default behavior. How exactly are you running
> > unzip and what exactly is it saying?
> 
> Here's an example. Root goes to the source directory and runs:
> 
>   # unzip -v circuit-svg-gates*
            ^^
 If you give it an argument (other than file),
 you are modifying is default behavior.

man pages for unzip
Info-ZIP Last change: 3 November 1997 (v5.32) 
NAME
     unzip - list, test and extract compressed  files  in  a  ZIP
     archive
SYNOPSIS
     unzip     [-Z]     [-cflptuvz[abjnoqsCLMVX$]]     file[.zip]
     [file(s) ...]  [-x xfile(s) ...] [-d exdir]
DESCRIPTION
     unzip will list, test, or extract files from a ZIP  archive.
                            ^^
/* If it lists, it is NOT testing nor extracting. */

     The  default  behavior  (with no options) is to extract into
     the current directory  (and  subdirectories  below  it)  all
     files  from the specified ZIP archive.  A companion program,
     zip  (available   from   http://www.cdrom.com/pub/infozip/),
     creates  ZIP  archives;  both  programs  are compatible with
     archives created by PKWARE's PKZIP and PKUNZIP  for  MS-DOS,
     but  in  many cases the program options or default behaviors
     differ.
...
-v   be verbose or  print  diagnostic  version  info.   This
          option  has  evolved  and now behaves as both an option
          and a modifier.  As an  option  it  has  two  purposes:
          when  a  zipfile is specified with no other options, -v
          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
          lists archive files verbosely, adding to the  basic  -l
          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
          info  the compression method, compressed size, compres-
          sion ratio and 32-bit CRC.  When no zipfile  is  speci-
          fied  (that  is, the complete command is simply ``unzip
          -v''), a diagnostic screen is printed.  In addition  to
          the  normal header with release date and version, unzip
          lists the home Info-ZIP ftp site and where  to  find  a
          list of other ftp and non-ftp sites; the target operat-
          ing system for which it was compiled, as well as  (pos-
          sibly)  the hardware on which it was compiled, the com-
          piler and version used, and the compilation  date;  any
          special  compilation  options  that  might  affect  the
          program's operation (see also  DECRYPTION  below);  and
          any  options stored in environment variables that might
          do the same (see  ENVIRONMENT  OPTIONS  below).   As  a
          modifier  it  works  in  conjunction with other options
          (e.g., -t) to produce more verbose or debugging output;
          this is not yet fully implemented but will be in future
          releases.

Try:

# unzip filename.ext

HTH, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
