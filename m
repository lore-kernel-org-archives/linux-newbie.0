From: Ray Olszewski <ray@comarre.com>
Subject: Re: .prn to .txt conversion = ?
Date: Tue, 30 Mar 2004 08:19:06 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040330081217.01ef6c28@celine>
References: <17050938982.20040330072414@wa5rrh.org>
 <200403281732.18531.sotl155360@earthlink.net>
 <5.1.0.14.1.20040329204727.01ef69d0@celine>
 <17050938982.20040330072414@wa5rrh.org> <200403301009.12383.sotl155360@earthlink.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403301009.12383.sotl155360@earthlink.net>
References: <17050938982.20040330072414@wa5rrh.org>
 <200403281732.18531.sotl155360@earthlink.net>
 <5.1.0.14.1.20040329204727.01ef69d0@celine>
 <17050938982.20040330072414@wa5rrh.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:09 AM 3/30/2004 -0500, Frank Roberts - SOTL wrote:
>On Tuesday 30 March 2004 08:24, Jim Reimer wrote:
> > Ray Olszewski wrote:
> > > At 05:32 PM 3/28/2004 -0500, Frank Roberts - SOTL wrote:
> > >
> > > When you say "the content is all text", can you be a bit more exact? (I
> > > haven't used DOS for years and I cannot recall what the.prn extension
> > > signifies.)
> >
> > A .prn file is generated when the "print to file" option is
> > used.  It's contents depend solely on the printer driver -
> > could be text, could be PostScript, could be HPGL, could be
> > lots of other completely useless things.
>Hi All
>
>Thanks for the help.
>
>As far the above I was referring to was that the original file being exported
>was all text.
>
>But in all fairness I solved the print to file issue.
>
>In Win 98 if one set printer to generic and type to generic/text Only with
>continuous paper one will receive a continuous output of text in text format
>in a file named <file name>.prn which can then be renamed .txt
>
>BUT! For me this really does not do what I need although it is the best that
>can be done by this method.
>
>What I really need is a method of reading a .nfo file with unknown format 
>most
>probably encrypted. Although I am certain there are people on this list who
>can open this file  I do not believe that this list [or any for that matter
>list] can help me with this as I most probably would not understand what was
>being said.

In one sense, there is no general method of reading "a .nfo file with 
unknown format most probably encrypted". Even if your question is really 
about how to break an unknown encryption format, there are really only 
techniques and strategies, not general methods that always work (if there 
were, we probably wouldn't even all it encrypted).

In a different sense, perhaps a trivial one, you can "read" such a file 
with the hexdump utility or similar commands. Some test editors have 
hex-display option. Also remember the "strings" command, in case the file 
really isn't encrypted, just in a proprietary format. In some cases 
(non-encrypted ones, though), these programs can server to get the info you 
need out of the file.

If you do want help here, the best way to start is by telling us what you 
know about the software that created the file. And perhaps provide a sample 
to examine.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
