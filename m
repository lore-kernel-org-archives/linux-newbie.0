From: Ray Olszewski <ray@comarre.com>
Subject: Re: Source file
Date: Tue, 14 May 2002 22:36:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020515053657.00f0e738@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Azie Jamilah <azie@kawan.net>, linux-newbie@vger.kernel.org

At 12:28 PM 5/15/02 +0800, Azie Jamilah wrote:
>Hi,
>
>I'm using RedHat Linux 7.2, and when i did file command /usr/bin , most of 
>the files are "ELF 32-bit LSB executable, Intel 80386, version 1, dynamically 
>linked (uses shared libs), stripped".

I don't really know what "i did file command /usr/bin" means. But what you
have in (for example) /usr/bin is a bunch of compiled applications, usually
called binaries. Separately from them, you will have (or can get if you
don't have them) the source code, in a series of src-RPMs whose names will
correspond to the files of executable (binary) RPMs you installed.

>I wonder if I can see the source file (I thought most of the files would be 
>in text file), and if i already have a command in text files, how can i make 
>the files in the same format as above?

To see the source code for the compiled apps, get the corresponding src-RPMs
from the same place you got the RH distro in the first place.

As for your own stuff ... it depends on how the "command in text files" is
written. If you wrote it in C or C++ (or some other compiler-based
language), you would use gcc to compile it. If you wrote it in an
interpreted form (say as a bash script or a Perl program), you won't compile
it at all (though I believe there now is a compiler for Perl, so you might
have an option there).

--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
