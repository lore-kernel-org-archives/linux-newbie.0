From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: File Management
Date: Wed, 18 Sep 2002 19:30:26 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0209181930260H.03392@unix.pa3gcu>
References: <00c301c25f48$62b94bf0$64fea8c0@pkrausxp>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00c301c25f48$62b94bf0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

On Wednesday 18 September 2002 19:20, Paul Kraus wrote:
> Obviously software is always better installed from source. This creates
> binaries that are system specific. However this represents the problem
> of software removal. I notice some software by default will install into
> /usr/local then dump everything under one directory (windows style-the
> source install for samba is a good example). You can uses switches to
> put these files in the correct bin lib etc folders. So if you follow the
> standard(usings the systems bin/etc/sbin/man/var folders) how can you
> effectively remove a piece of software without having a list of all the
> files and paths of every app you installed. This is the only drawback to
> Linux I have found. Of course RPMs/dpms are away around this but lets
> omit pre-packaged software.

If ones installes programs from *.tar.gz archives after compiling one can 
simply delete the source dir and its contents, you are then left with the 
executable of course, when you want to "uninstall" a program reinstall the 
source and simply type make uninstall, in some instancies it may be nessasary 
to exectute a file called ./configure or even ./autogen.sh those files create 
a Makefile, once the Makefile is created one can then do;
make uninstall .

Mind you some older archives did not have that approch, but i guess in the 
modern day kernels they would not compile anyway, so we can safely say;

cd /to/source/dir
make uninstall


>
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
