From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: File Management
Date: Thu, 19 Sep 2002 06:01:40 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02091906014001.18645@unix.pa3gcu>
References: <200209190301.g8J31KFg007397@pegasus.wanadoo.be>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209190301.g8J31KFg007397@pegasus.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

On Thursday 01 January 1970 00:00, Heimo Claasen wrote:
> This latgest on "uninstall" in this thread is bordering the question I
> had earlier on "weeding out" unneeded things.
>
> Uninstalling a program compiled on a machine seems to work like that
> indeed.
>
> BTW, I got another command (syntax) told:
>    > make clean
>    > make distclean

It is not clear to me if you understand what 'make clean' and 'make 
distclean' do, clean delete's mainly *.o files created when 'make' is 
completed.
distclean cleans out everything created by both ./configure and make.
 
>
> (this from in the dir from which it was installed or rather,
> "./configure" was run.)
>
> Next question then is where to find (and delete) obsolete files which
> had been installed collaterally (however automatically, package
> driven or not) earlier ?
>
> For instance, "ldd <prog-name>" apparently lists a number of files
> "referenced" [sic, <g>] by that _one_ program.

O wait, dont delete what ldd says is used by a program, they are libarys of 
which are shared by other programs as well, delete those and your system will 
be brought to its knees.

>
> But it's clearly a hassle to have this done for _all_ programs in order
> to find out those some files the use of which is not shared.  (One of my
> fatter, though far from complete installations has almost 60,000
> files...)

If you run a system where you constanly install "user" progams from tar 
archives, then you the system operator (superuser) have control of where the 
programs are placed, remember one thing it is normal practice for user 
programs to be placed in /usr/local/bin or /usr/local/sbin, most archives do 
just that if one simply uses ./configure without options, or the Makefile 
which is supplied within the archive is used without editing it.
That has always been Linux pratice, this allow's a better overview of 
installed programs.

If a program uses a config file then "mainly" it will be placed into 
/usr/local/etc altho' that is not always the case, the other place left over 
for config files is then /etc which should not cause to many problems to find 
config files you want to delete.

The use of /usr/local is/has and always be a point of discussion, some 
distro's do not have /usr/local in ones path, one needs to edit ones $PATH 
and add it otherwise programs installed in /usr/local/* will not be found.

Other's say /usr/local is obsolite, remembering what i have mentioned above i 
consider /usr/local "far from obsolite" and indeed the distribution slackware 
also considers it "far" from obsolite.

Its the place one installes his/her own programs and then knows where they 
are instead of having them dropped in all over the system making a cleanup 
almost impossable.
 
>
> // Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-18
> The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
