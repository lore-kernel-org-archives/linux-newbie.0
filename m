From: Ray Olszewski <ray@comarre.com>
Subject: Re: Large FTP transfers
Date: Mon, 30 Sep 2002 06:28:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020930062210.02cacbf0@celine>
References: <5.1.0.14.1.20020929090857.024f4300@celine>
 <5.1.0.14.1.20020928093421.024d14f0@celine>
 <5.1.0.14.1.20020929090857.024f4300@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209301909.25896.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: adam@luchjenbroers.com
Cc: linux-newbie@vger.kernel.org

As I think I said once before, troubleshooting exchanges are better kept on 
the list, not moved to private communications. I've Cc'd the list here.

At 07:09 PM 9/30/02 +0930, Adam Luchjenbroers wrote:

> > Finally, you might try running a diagnostic progrem for the NIC. I don't
> > recall what type of NIC it is (or even if you reported that in a prior
> > message ... I've seen about a half dozen different NIC-related threads in
> > the last day, and my memory just isn't good enough to retain the details of
> > each), but most manufacturers supply DOS-based NIC configuration and
> > testing programs. For awhile, Don Becker was releasing Linux config/test
> > programs for some NICs, and you might see if he covered yours. (Use the
> > usual search engines to track this down.)
>
>I did mention it in a prior message, 3Com 905B-TX.
>And yes, he does have a
>diagnostics program, which comes as a C source file.
>
>do I just type "gcc vortex-diag.c" or what?

Probably (assuming you have gcc and all needed header files installed on 
your system). A tidier approach might be

         gcc -o vortex-diag vortex-diag.c

so you can control the name of the executable that gcc creates.

But without examining the source, I can't be certain. Look at the top of 
the source; these standalone files (by which I mean ones that do not have 
accompanying Makefiles) usually have "how to compile me" comments near the top.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
