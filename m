From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: Zip problems
Date: 28 Oct 2002 19:40:13 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035852013.7925.4.camel@brainpress.verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Can anyone tell me what the problem is if you've just installed Mandrake
9.0 on an Athlon XP 2100+ system, ATA 100 HD, VIA chipset MB (don't know
which chipset number), etc...  I thought I installed every library under
the sun, as well as every non-server application, but when I try to run
the command 'unzip' I get this error:

Archive:  /usr/bin/unzip
  End-of-central-directory signature not found.  Either this file is not
  a zipfile, or it constitutes one disk of a multi-part archive.  In the
  latter case the central directory and zipfile comment will be found on
  the last disk(s) of this archive.
note:  /usr/bin/unzip may be a plain executable, not an archive
unzip:  cannot find zipfile directory in one of /usr/bin/unzip or
        /usr/bin/unzip.zip, and cannot find /usr/bin/unzip.ZIP, period.


Also, when I open a zip file in Ark, it says that there is nothing in
the archive eventhought the file is listed as 900k or so...
And when I try to open any zip in gnozip, the program aborts swiftly,
with only these errors (from bash command line):

** WARNING **: Couldn't find pixmap file:
/usr/share/pixmaps/gnozip/gnozip/directory.xpm

** WARNING **: Couldn't find pixmap file:
/usr/share/pixmaps/gnozip/gnozip/link.xpm
  End-of-central-directory signature not found.  Either this file is not
  a zipfile, or it constitutes one disk of a multi-part archive.  In the
  latter case the central directory and zipfile comment will be found on
  the last disk(s) of this archive.

** WARNING **: GnoZip: gz_zip_list: date field too long


GLib-CRITICAL **: file gstrfuncs.c: line 1312 (g_strchug): assertion
`string != NULL' failed.
note:  /usr/bin/unzip may be a plain executable, not an archive
unzip:  cannot find zipfile directory in one of /usr/bin/unzip or
        /usr/bin/unzip.zip, and cannot find /usr/bin/unzip.ZIP, period.

[+1] Segmentation fault

I'm baffled.  Can anyone suggest possible solutions?
-- 
Bryan Simmons <bsimmo1@gl.umbc.edu>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
