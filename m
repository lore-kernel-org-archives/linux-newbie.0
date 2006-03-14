From: "joy merwin monteiro" <joy.merwin@gmail.com>
Subject: Re: pdf inflation mystery
Date: Wed, 15 Mar 2006 00:11:36 +0530
Message-ID: <4b0d6e0d0603141041r765fd794h2e92fa2e4c4fccfe@mail.gmail.com>
References: <Pine.LNX.4.64.0603141107250.4459@localhost.localdomain>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0603141107250.4459@localhost.localdomain>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

wierd, usually whenever i convert a ps to pdf, i get a reduction in size,
and might be right in making a guess that pdf 'compresses' the ps file,
in some sense, sometimes atleast.
Maybe some OO magic ?
My guess would be that this is content dependent, coz just tried
converting some ps'es to pdfs some increased in size (though nothing
of the kind of increase you talked about).

AFAIR, OO has a convert to pdf option directly. why are you using
print to postscript?

regards,

Joy

On 3/14/06, James Miller <jamtat@mailsnare.net> wrote:
> Dunno if this is the right place to ask since it may not be a strictly
> Linux issue, but lemme try.  I use ps2pdf a fair amount since I have no
> printer attached to my system but occasionally want to print something
> from the web, for example.  In those cases, I print to a postscript file,
> convert the file to pdf using ps2pdf, then send it off to my wife at work
> for printing.  Recently I undertook a project to make up some booklets,
> and was investigating how to print multiple pages onto a single sheet
> (what is called "4up" in my case) for this.  With alot of puzzling,
> experimentation and a bit of help on the OOo forums, I was able to do this
> using psutils.  The resulting file was, of course, postscript.  It's
> actually a fairly lengthy little booklet--about 100 pages.  When I went to
> convert it to pdf I was amazed at how much the size inflated--about 30
> times!  A 1.5 MB ps file became a 40 MB pdf.  I never noticed such a huge
> increase in size in converting ps to pdf in any previous attempt
> (generally with smaller files).  So, I'm just wondering: is it typical for
> ps files to balloon to such proportions when converting to pdf?  Or is
> there maybe something unusual about my file?
>
> Thanks, James
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>


--
The person who cannot reason is a fool, one who won't reason is a bigot,
one who dare not reason is a slave.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
