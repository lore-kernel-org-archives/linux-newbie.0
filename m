From: J S <webnews@comcast.net>
Subject: Re: How do you apply patches to source code?
Date: Mon, 26 May 2003 09:52:17 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1053957137.20992.8.camel@jayhawk>
References: <bass5l$5fk$1@main.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <bass5l$5fk$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Robert <robert_schmidli@hotmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Here's the easiest way to get a SRPM into buildable condition...

On "older" versions of RH / other distros, do ...

   rpm -bp <specfile>

On RH 8 & 9, the command is rpmbuild -bp <specfile>

This will apply all the patches that were included with the SRPM.  When
finished, there should be a "makeable" source tree in a BUILD
directory.  On RH systems, it's in /usr/src/redhat/BUILD.

Of course, to get the specfile, you need to install (rpm -I) the SRPM. 
That puts the specfile into a SPEC directory (/usr/src/redhat/SPEC on RH
systems).

If you simply want to get a binary executable out of an SRPM, use
rpmbuild --rebuild <SRPM>.  There are lots of other options for rpm and
rpmbuild.  I use these options the most.  The manpages for rpm and
rpmbuild are pretty good as far as manpages go.

Josh

On Mon, 2003-05-26 at 07:03, Robert wrote:
> I have recently obtained the source code to an application as a .src.rpm
> file.  I have unbundled the code into /usr/src/RPMS/SOURCES.  There are a
> whole lot of .patch.bz2 files in the directory, as well as the main .tar.bz2
> file.
> 
> How do I compile the program with the patches?
> 
> I realise this is probably an easy one, but I can't find any documentation
> about applying patches.
> 
> Robert.
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
