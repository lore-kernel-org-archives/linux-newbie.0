From: Arthur Othieno <arthurothieno@gmx.net>
Subject: Re: File Management
Date: Thu, 19 Sep 2002 14:08:53 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D89CC65.1010301@gmx.net>
References: <00c301c25f48$62b94bf0$64fea8c0@pkrausxp> <0209181930260H.03392@unix.pa3gcu>
Reply-To: arthurothieno@gmx.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: pa3gcu@zeelandnet.nl
Cc: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org



pa3gcu wrote:

> On Wednesday 18 September 2002 19:20, Paul Kraus wrote:
> 
>>Obviously software is always better installed from source. This creates
>>binaries that are system specific. However this represents the problem
>>of software removal. I notice some software by default will install into
>>/usr/local then dump everything under one directory (windows style-the
>>source install for samba is a good example). You can uses switches to
>>put these files in the correct bin lib etc folders. So if you follow the
>>standard(usings the systems bin/etc/sbin/man/var folders) how can you
>>effectively remove a piece of software without having a list of all the
>>files and paths of every app you installed. This is the only drawback to
>>Linux I have found. Of course RPMs/dpms are away around this but lets
>>omit pre-packaged software.
>>
> 
> If ones installes programs from *.tar.gz archives after compiling one can 
> simply delete the source dir and its contents, you are then left with the 
> executable of course, when you want to "uninstall" a program reinstall the 
> source and simply type make uninstall, in some instancies it may be nessasary 
> to exectute a file called ./configure or even ./autogen.sh those files create 
> a Makefile, once the Makefile is created one can then do;
> make uninstall .
> 
> Mind you some older archives did not have that approch, but i guess in the 
> modern day kernels they would not compile anyway, so we can safely say;
> 
> cd /to/source/dir
> make uninstall

Note that there are some programs distributed as tarballs that may not 
have the `uninstall' rule in their Makefile. This makes them harder to 
remove but not impossible (<- one word that doesn't deserve a place in 
your vocabulary)...

Meet "checkinstall". This nifty program keeps a tab of all installed 
programs on your system, making it easier for you to manage them 
(Installing/Unistalling), by keeping a record of all write-actions 
performed when you do a `make install' or similar. Get it at 
http://proyectos.glo.mx/checkinstall/

To install the package, do:
	tar xvzf checkinstall-X.Y.Z.tg

	cd checkinstall-X.Y.Z

	make
	su (root passwd here)
	make install
	checkinstall
	exit

To install a new package you would normally have to do
	./configure
	make
	su (root passwd here)
	make install
	exit

With checkinstall installed, you have to replace the `make install' step 
with `checkinstall' so that it (checkinstall) knows what has been 
installed andthus makes it easier to remove. So, you would have 
something like:
	./configure
	make
	su
	checkinstall
	exit

Hope that helps ;)

Arthur


> 
>>Paul Kraus
>>Network Administrator
>>PEL Supply Company
>>216.267.5775 Voice
>>216-267-6176 Fax
>>www.pelsupply.com
>>
> 
> 



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
