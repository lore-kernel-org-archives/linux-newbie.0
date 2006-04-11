From: "Yawar Amin" <yawar.amin@gmail.com>
Subject: Re: Gvim Printing
Date: Tue, 11 Apr 2006 20:56:18 +0800
Message-ID: <efc7f7d00604110556t5af7cb57mba9c27b570fb3589@mail.gmail.com>
References: <efc7f7d00604101139k371bd1daoca8a326b3febed26@mail.gmail.com>
	 <200604110436.k3B4aLjN004760@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200604110436.k3B4aLjN004760@skyinet.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all, sorry I inadverdently took this thread off the list!

On 4/11/06, I wrote:
> Peter,

> On 4/10/06, Peter <heisspf@skyinet.net> wrote:
>> Hi,
>>
>> How do I coerce gvim 6.3.86 to print letter size, page after page?
>>
>> At present only the first page is printed correctly after that for the second
>> and succeeding pages the page advance from the top of the page is much too
>> much so that the printed page does not fit the letter size paper. After
>> several pages the paper advance is then in the middle of the page. It is as
>> legal size would be printed on letter size paper and I have no legal size
>> setting.
>
> Are you able to do the printing with a more GUI-fied editor, like
> Gedit or Kate? If so they should be better at printing than Gvim. If
> not I recommend a2ps, which converts a lot of formats to PostScript,
> with `pretty-printing'. So if you're printing code it'll be formatted
> nicely, with keywords in bold, comments italicised, and so on. For
> plain text, it'll look fine too.
>
> $ a2ps file.txt -1 -o file.ps -M Letter
>
> converts the plain text file file.txt to a PostScript format file
> file.ps. Another example: I just used
>
> $ a2ps tex_fit1003_a1.tex -1 -o tex_fit1003_a1_source.ps -M A4 --delegate=0
>
> to pretty-print a LaTeX (plain text) source file into PS. If I didn't
> have --delegate=0, a2ps would have run LaTeX on the file and put the
> typeset document into the output PS file.
>
> The a2ps info file is very helpful, and I definitely recommend it
> because its output looks very nice, at least to my eyes.
>
>>
>> :help print
>> says
>> Note: If you are looking for a way to print your text
>> file, you need an external program for that.  In the
>
> Maybe they mean something like a2ps.

On 4/11/06, Peter <heisspf@skyinet.net> wrote:
> Thanks!
>
> I am aware that gvim is not necessarily made for good printing. I am using it
> to edit files mostly downloaded .html saved with lynx as .txt and since I am
> already in vim might as well print if file is not too long. I vaguely remember
> that some time ago it did print properly.
>
> Normally for my printing I am using the following command:
>
> /usr/bin/fmt -u --width=105 $1 | groff -ms | lpr
>
> That gives a nice print output, much better than gvim and fewer pages.
>
> I am using pretty-print through mpdist>mp which has mptool GUI to give print
> commands. I use it to print-out my mail.
>
> I will study a2ps.
>
> Regards
> --
> Peter
>
>


--
Yawar
Malaysia +60 (12) 918 6642
Bangladesh +880 (174) 614 754 or +880 (2) 882 1848 or +880 (175) 003
706 or +880 (189) 250 170
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
