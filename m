From: Brian Jackson <brian@mdrx.com>
Subject: Re: File names with spaces
Date: Mon, 17 Feb 2003 14:34:16 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302171434.16323.brian@mdrx.com>
References: <20030217191140.GA13495@teamfinders.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030217191140.GA13495@teamfinders.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Theo. Sean Schulze" <tschulze@teamfinders.org>, linux-newbie <linux-newbie@vger.kernel.org>

You can try to adapt this example from The Advanced Bash Scripting Guide:
http://www.tldp.org/LDP/abs/html/moreadv.html#EX57

It deletes the file, but it shouldn't be too hard to adapt to your needs.

--Brian

On Monday 17 February 2003 01:11 pm, Theo. Sean Schulze wrote:
> Hello,
>
> I am trying to write a bash shell script that will translate spaces in file
> names into underline characters.  This is the script as I have it now:
>
>
> for file in `ls`
> do
> 	echo $file
> 	newfile=`ls ${file} | tr '[:space:]' '[_*]'`
> 	echo File is named ${file}
> 	echo The new file is named ${newfile}
> 	# [[ -s $newfile ]] || (mv $file $newfile)
> 	sleep 2
> done
>
> The lines that begin with echo and the sleep line are for debugging.  What
> they have shown me is that the $file is getting set to the first word in
> the file name on the first iteration, the second word on the second
> interation, etc.  (The file names look like "001 of 150 files", "002 of 150
> files", etc.)  So, on the first iteration, $file is egual to "001", on the
> second iteration $file is equal to "of", etc.  Yet, if I go to the
> directory and issue `ls`, the filenames are shown as one would expect with
> the whole four word filename on one line.
>
> Can anyone give me a hint on how to fix this so that the whole filename is
> loaded into $file?
>
> TIA,
> Sean

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
