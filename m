From: Yapo Sebastien <sebastien.yapo@e-neyret.com>
Subject: Re: unusual uniq results
Date: Wed, 29 Sep 2004 14:53:19 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200409291453.19686.sebastien.yapo@e-neyret.com>
References: <fc.004c4e0000647133004c4e0000647133.647263@palmertrinity.org> <a5bcf5da04092809114ecbb13d@mail.gmail.com> <fc.004c4e00006491a0004c4e0000647133.6491aa@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e00006491a0004c4e0000647133.6491aa@palmertrinity.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Well ... the main problem is that the bash redirection takes effect before 
uniq is executed. 

When you do "uniq dup_num > dup_num" the following happens :

- the bash redirection operator ">" triggers the opening of dup_num in 
write-only mode (O_WRONLY | O_CREAT | O_TRUNC) to redirect stdout to the 
file, thus truncating dup_num to zero length as the file already exists
- the file dup_num is opened read-only by uniq (O_RDONLY)
- the output stream is assumed by uniq to be stdout (no "OUTFILE" specified)
- each line of dup_num is read and treated by uniq but dup_num is empty 
(truncated to zero length before) so, obviously, the result of uniq is also 
empty.

This is probably not perfectly accurate but is "grosso modo" what happens.
Quote from bash manual (Redirection / Redirecting Output) :
"If the file does not exist it is created; if it does exist it is truncated to 
zero size."

Sebastien

On Wednesday 29 September 2004 11:07, you wrote:
> I'm confused. To me the > has always meant to take what is to the left of
> the sign and redirect its output to whatever is to the right. In my case
> this would mean taking the output of uniq dup_num and redirecting it. Can
> you set me straight?
> -- Bill
>
> Stone <xstonedogx@gmail.com> writes:
> >The redirection takes place before your command.  So basically what
> >you told the system to do was:
> >
> >1.  Create the file dup_num.  If the file exists overwrite it.
> >2.  Redirect stdout of "uniq dup_num" into dup_num.
> >
> >Since you'd already overwritten the data in dup_num, there was nothing
> >for uniq to process.
> >
> >On Tue, 28 Sep 2004 11:09:12 -0400, William Stanard
> >
> ><wstanard@palmertrinity.org> wrote:
> >> In doing a demo before a class (Linux Red-hat 2.4.18-14), I used the
> >
> >uniq
> >
> >> command on a file (dup_nums) that consisted of twelve lines, each line
> >> containing a number, from one to 9. I repeated the numbers, 6, 8, and 9.
> >> The std output showed the expected list of numbers, all duplicates
> >> removed. At a student's suggestion, I ran uniq again, but this time
> >> directed the output to the file itself....
> >>
> >> uniq dup_num > dup_num
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
