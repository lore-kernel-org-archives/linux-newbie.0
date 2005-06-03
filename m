From: "J." <mailing-lists@xs4all.nl>
Subject: Re: how to replace three spaces with tab
Date: Fri, 3 Jun 2005 12:08:26 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0506031149010.583-100000@hestia>
References: <200506021907.06291.eric@cisu.net>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200506021907.06291.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 2 Jun 2005, Eric Bambach wrote:

> On Thursday 02 June 2005 06:35 pm, James Miller wrote:
> > On Thu, 2 Jun 2005, Eric Bambach wrote:
> > > sed 's/   /\t/' largefile.txt > largefile.edited
> > >
> > > Notice that s/(Three spaces)/(special Tab character sequence)/
> > >
> > > This will replace ALL occurances of 3 spaces in your file. Make sure you
> > > dont have 3 spaces in any other context or those will be changed too. It
> > > will output to a new file in case i didnt get it right ;)
> >
> > Thanks for that command line tip, Eric. Meantime, I discovered that xedit
> > tells you, in it's search-and-replace routine, how to enter a tab
> > sequence: you hit ctrl-q and then tab while you're in the field where you
> > input the replacement text. This seems to have worked quite well. Why
> > xedit, of all editors, should have this feature? Dunno. Are there yet
> > other ways of doing this?
> >
> 
> Well the way I said was one of easiest off the top of my head. I suppose 
> search and replace features would have to be on an editor by editor basis.
> 
> There are plenty of ways to do everything in linux. Im sure someone could come 
> up with a perl one or two liner for that. A search-and-replace in an editor 
> like you said. Im sure there are a few more command line tools that would 
> work too. tr?

`tr' can squeeze repeats.. For example:
~: tr -s ' ' ' ' < foo.txt  

Will remove multiple blank spaces and leave one.. Another one..

~: tr -cs '[A-Z][a-z]' '[\n*]'

Will remove multiple '\012' newlines

> I think that only does single characters though. Anything 
> command-line related that doesnt use sed escapes me for right now though.

If you want pattern scanning in text processing awk & sed are the way to
go. If your not fluent in sed at the command-line look for a document on
the internet [www.google.com/linux] called:

HANDY ONE-LINERS FOR SED (Unix stream editor) compiled by Eric Pement

The website IBM developer works also holds resources and online course
regarding pattern scanning and text processing on the CLI.

Heiners shelldorado also houses many scripts and one-liners

And of course the LDP [Linux Documentation Project]

In this particular case I personally would prefer `awk'. Awk works with
fields [records]. It is designed for this stuff.. And it has a printf
statement.

~: awk '{print $1, $2} foo.txt

match an expression only on field 3

~: awk '$3 ~ /[Ee]pression/ { print }' foo.txt

As you can see awk works natively with records.. 

Next time maybe add some fields or records from your text file. That way
people can give you clear pointers, suggestions - solutions... 

Text processing and pattern scanning are prob. one of the oldest tasks
in the Unix/Linux world. Building filters on the command-line the ``Unix
philosophy``, do one thing - and do it good.. That's definitly the way..

Greetzz.

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
