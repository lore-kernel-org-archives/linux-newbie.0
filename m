From: Heimo Claasen <hammer@revobild.net>
Subject: Re: File Management
Date: 19 Sep 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209190301.g8J31KFg007397@pegasus.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

This latgest on "uninstall" in this thread is bordering the question I
had earlier on "weeding out" unneeded things.

Uninstalling a program compiled on a machine seems to work like that
indeed.
BTW, I got another command (syntax) told:
   > make clean
   > make distclean
(this from in the dir from which it was installed or rather,
"./configure" was run.)

Next question then is where to find (and delete) obsolete files which
had been installed collaterally (however automatically, package
driven or not) earlier ?

For instance, "ldd <prog-name>" apparently lists a number of files
"referenced" [sic, <g>] by that _one_ program.

But it's clearly a hassle to have this done for _all_ programs in order
to find out those some files the use of which is not shared.  (One of my
fatter, though far from complete installations has almost 60,000
files...)

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-18
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
