From: Simon Valiquette <v.simon@ieee.org>
Subject: Re: unusual uniq results
Date: Wed, 29 Sep 2004 08:44:34 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <415AAE32.9000201@ieee.org>
References: <fc.004c4e0000647133004c4e0000647133.647263@palmertrinity.org>
 <a5bcf5da04092809114ecbb13d@mail.gmail.com>
 <fc.004c4e00006491a0004c4e0000647133.6491aa@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <fc.004c4e00006491a0004c4e0000647133.6491aa@palmertrinity.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: William Stanard <wstanard@palmertrinity.org>
Cc: linux-newbie@vger.kernel.org

William Stanard a =E9crit :
> I'm confused. To me the > has always meant to take what is to the lef=
t of
> the sign and redirect its output to whatever is to the right.

   That's basically what it does.  Actually, it also create an empty=20
file or erase it if it already exist.

> In my case
> this would mean taking the output of uniq dup_num and redirecting it.=
 Can
> you set me straight?
> -- Bill
>

   It's the opposite.  It creates the redirection first, even before=20
knowing if you ran a valid command.

   What you don't seems to understand, is that the ">" ask the shell to=
=20
create an empty file _before_ executing uniq.  It means that the data i=
n=20
"dup_num" are already overwritten when uniq is executed, and thus uniq=20
is opening an empty file.


Simon Valiquette
http://gulus.USherbrooke.ca



> Stone <xstonedogx@gmail.com> writes:
>=20
>>The redirection takes place before your command.  So basically what
>>you told the system to do was:
>>
>>1.  Create the file dup_num.  If the file exists overwrite it.
>>2.  Redirect stdout of "uniq dup_num" into dup_num.
>>
>>Since you'd already overwritten the data in dup_num, there was nothin=
g
>>for uniq to process.
>>
>>On Tue, 28 Sep 2004 11:09:12 -0400, William Stanard
>><wstanard@palmertrinity.org> wrote:
>>
>>>In doing a demo before a class (Linux Red-hat 2.4.18-14), I used the
>>
>>uniq
>>
>>>command on a file (dup_nums) that consisted of twelve lines, each li=
ne
>>>containing a number, from one to 9. I repeated the numbers, 6, 8, an=
d 9.
>>>The std output showed the expected list of numbers, all duplicates
>>>removed. At a student's suggestion, I ran uniq again, but this time
>>>directed the output to the file itself....
>>>
>>>uniq dup_num > dup_num
>=20
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
