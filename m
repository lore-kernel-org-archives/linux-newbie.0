From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: File names with spaces
Date: Tue, 18 Feb 2003 22:37:21 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030218213721.GA11729@teamfinders.org>
References: <20030217191140.GA13495@teamfinders.org> <200302171434.16323.brian@mdrx.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200302171434.16323.brian@mdrx.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Thanks, that did help, although it didn't solve the problem.  I now recognize that the problem is in assigning the variable.  Both my version with ls and the version with find in the example give the expected results when printing to the console, but they both fail when used to assign a string including spaces to a variable.

I need to find a way to maintain the integrity of the string as I assign it to the file variable.  I tried `echo (ls -1)` and `echo "(ls -1)"`, but neither works.  Changing the parentheses to brackets doesn't help either.

Cheers,
Sean

On Mon, Feb 17, 2003 at 02:34:16PM -0600, Brian Jackson hunted and pecked out:
> You can try to adapt this example from The Advanced Bash Scripting Guide:
> http://www.tldp.org/LDP/abs/html/moreadv.html#EX57
> 
> It deletes the file, but it shouldn't be too hard to adapt to your needs.
> 
> --Brian
> 
> On Monday 17 February 2003 01:11 pm, Theo. Sean Schulze wrote:
> > Hello,
> >
> > I am trying to write a bash shell script that will translate spaces in file
> > names into underline characters.  This is the script as I have it now:
> >
> >
> > for file in `ls`
> > do
> > 	echo $file
> > 	newfile=`ls ${file} | tr '[:space:]' '[_*]'`
> > 	echo File is named ${file}
> > 	echo The new file is named ${newfile}
> > 	# [[ -s $newfile ]] || (mv $file $newfile)
> > 	sleep 2
> > done
> >
> > The lines that begin with echo and the sleep line are for debugging.  What
> > they have shown me is that the $file is getting set to the first word in
> > the file name on the first iteration, the second word on the second
> > interation, etc.  (The file names look like "001 of 150 files", "002 of 150
> > files", etc.)  So, on the first iteration, $file is egual to "001", on the
> > second iteration $file is equal to "of", etc.  Yet, if I go to the
> > directory and issue `ls`, the filenames are shown as one would expect with
> > the whole four word filename on one line.
> >
> > Can anyone give me a hint on how to fix this so that the whole filename is
> > loaded into $file?
> >
> > TIA,
> > Sean
> 

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
