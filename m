From: James Miller <jamtat@mailandnews.com>
Subject: RE: pdf file creation using Linux apps
Date: Sun, 2 Mar 2003 21:10:00 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0303022105540.11087@homenet>
References: <Pine.LNX.4.21.0303011750230.28792-100000@ppg_penguin>
 <Pine.LNX.4.53.0303011903080.11087@homenet> <20030302065129.GA20413@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030302065129.GA20413@teamfinders.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Sun, 2 Mar 2003, Theo. Sean Schulze wrote:

> If you don't mind using a command line tool, then you might want to save the
documents as PostScript files and then use ps2pdf13 to convert to PDF format.
I have been using ps2pdf13 for a little while now to convert man pages to pdf format,
and I have never had one not load in Acrobat Reader.  My thought is that PostScript
is a well recognized format that each of the word processors you've mentioned should
be able to master, and they may be able to do PostScript better than they can do PDF.
>
> Take one of your documents, save it as a PostScript file, and then convert it to see
how well it works.  From the command line:
>
> ps2pdf13 mydocument.ps mydocument.pdf
>
> ps2pdf13 has several related applications giving varying levels of Acrobat compatibility.
Try `man ps2pdf` to get the full story.
>
Great advice, Sean. It worked like a charm: the doc that I could not
convert to Adobe's liking using either Abiword or OpenOffice displays just
fine after converting to .ps and then to .pdf using the utility you
mentioned. Thanks so much for your input. This will be a very helpful
application for me.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
