From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: renaming really long filenames
Date: Tue, 20 May 2003 18:16:24 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3ECAA938.F9E64E91@gelm.net>
References: <5.1.0.14.1.20030510082110.01eae2b0@celine>	 <20030510100903.GA1586@localhost.localdomain>	 <5.1.0.14.1.20030510082110.01eae2b0@celine> <5.1.0.14.1.20030510091650.01eae530@celine> <3EBEBD49.2D45C5FE@gelm.net> <3EC9023F.5080203@bcgreen.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Stephen Samuel <samuel@bcgreen.com>
Cc: linux-newbie@vger.kernel.org, ray@comarre.com

Hi, Stephen:

 Hey, this looks great!  Thanks.  I'll read up with
"man tr".  I am thinking that I would like to translate
spaces to underscores and non-alphanumeric to null.


Stephen Samuel wrote:
> 
> My solution would be something like:
> 
> for i in * ;   do  mv "./$i" "`echo ./$i | tr -d '\00-\042\173-\377<>|' `" ; done
> 
> Note: I'm deleting characters starting at 7bH, not 6fH -- 6F is in the middle
> of the lower case alphabet, so  it doesn't make sense.
> 
> Other things to note:
>    I'm using octal (base 8) characters in the string, not hex
>    the backquote (`)  says to run the command and use the output as the
>    parameter to (in this case) the 'mv' command.
> 
>    I'm using './filename' to handle the possibility of a filename starting with
>    a '-' and being mistaken for an option.   './' says "in the current directory",
>    so it's something of a no-op, but guarantees that the name won't start with a '-'.
> 
>    the double quotes around "./$i" make sure that spaces (and other greeblies) in the
>    original filename don't get interpreted as work breaks.
> 
> Chuck Gelm wrote:
> >  Howdy, Y'all:
> >
> >  I have some very long filenames that I would like to shorten.
> > The filenames contain 'spaces' and some characters with tics or
> > apostrophes, and tildes over them.  I tried to change them from
> > a console session, but I don't know how to generate those special
> > characters from the keyboard...and I really don't want to type
> > the long filenames anyway.  :-|
> > OBTW, I have no GUI (X windows) on this computer.
> >
> >  Is there a way to remove all characters < 023h && > 06fh
> > from these filenames?
<snip>
> --
> Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
>                    http://www.bcgreen.com/~samuel/
> Powerful committed communication, reaching through fear, uncertainty and
> doubt to touch the jewel within each person and bring it to life.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
