From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: pdf file creation using Linux apps
Date: Sun, 2 Mar 2003 07:51:29 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030302065129.GA20413@teamfinders.org>
References: <Pine.LNX.4.21.0303011750230.28792-100000@ppg_penguin> <Pine.LNX.4.53.0303011903080.11087@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.53.0303011903080.11087@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

On Sat, Mar 01, 2003 at 07:17:42PM -0600, James Miller hunted and pecked out:
[snip]
> I have several pdf reading progs on my machine, so my concern is not so
> much with being able to read pdfs. It's more with creating them, and,
> specifically, creating files compatible with Adobe Reader. Most people who
> will be reading such pdf files as I create will be viewing them with
> Adobe's pdf product. So far, all documents I've created with KWord have
> been compatible with Acrobat Reader (maybe 4 or 5 documents?). Those
> created under OpenOffice and, if I recall correctly, Abiword, have not been
> compatible. Since I'm running a system that is largely Debian Woody, I can't
> easily upgrade the KOffice I have. Does anyone know of other apps that
> create/convert to pdf that are largely compatible with Adobe Acrobat Reader?
> Is there another list where I should pose this sort of question?

If you don't mind using a command line tool, then you might want to save the documents as PostScript files and then use ps2pdf13 to convert to PDF format.  I have been using ps2pdf13 for a little while now to convert man pages to pdf format, and I have never had one not load in Acrobat Reader.  My thought is that PostScript is a well recognized format that each of the word processors you've mentioned should be able to master, and they may be able to do PostScript better than they can do PDF.

Take one of your documents, save it as a PostScript file, and then convert it to see how well it works.  From the command line:

ps2pdf13 mydocument.ps mydocument.pdf

ps2pdf13 has several related applications giving varying levels of Acrobat compatibility.  Try `man ps2pdf` to get the full story.

HTH,
Sean

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
