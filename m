From: Stone <xstonedogx@gmail.com>
Subject: Re: unusual uniq results
Date: Tue, 28 Sep 2004 09:11:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <a5bcf5da04092809114ecbb13d@mail.gmail.com>
References: <fc.004c4e0000647133004c4e0000647133.647263@palmertrinity.org>
Reply-To: Stone <xstonedogx@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e0000647133004c4e0000647133.647263@palmertrinity.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

The redirection takes place before your command.  So basically what
you told the system to do was:

1.  Create the file dup_num.  If the file exists overwrite it.
2.  Redirect stdout of "uniq dup_num" into dup_num.

Since you'd already overwritten the data in dup_num, there was nothing
for uniq to process.

On Tue, 28 Sep 2004 11:09:12 -0400, William Stanard
<wstanard@palmertrinity.org> wrote:
> In doing a demo before a class (Linux Red-hat 2.4.18-14), I used the uniq
> command on a file (dup_nums) that consisted of twelve lines, each line
> containing a number, from one to 9. I repeated the numbers, 6, 8, and 9.
> The std output showed the expected list of numbers, all duplicates
> removed. At a student's suggestion, I ran uniq again, but this time
> directed the output to the file itself....
> 
> uniq dup_num > dup_num
> 
> ...and, lo and behold, the file dup_num was empty. I checked uniq --help,
> info uniq, and man uniq, all to no avail. Shouldn't uniq have removed the
> duplicate numbers and written one through 9 to the file?
> 
> Bill stanard
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 



-- 
http://xstonedogx.heroesmarket.net
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
