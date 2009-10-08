From: mayur nande <mayur.nan@gmail.com>
Subject: Re: C question
Date: Thu, 8 Oct 2009 08:32:01 +0530
Message-ID: <f86e1f200910072002o3a08ca64h4a9bc70dd33d0e7c@mail.gmail.com>
References: <7783925d0910071912u5e4f4a2au8442cb6537cd35ed@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary=000e0cd5f674fef9fa047563af9e
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=lVUkBuqI1xJfkf10BrxS1O/TYjc8doMdnzVeWRk0AGc=;
        b=yEC1fPxW0A6K2qOaO0CbJyp7QS7C1fytMgyZjT1qvOEuAvnoK2dYA1nrKvF/P+KNZy
         gYhIs4ZH4BdG11S9COeANB2giJCKM7Z89dswwb9NxCVou9l9MguUzUyPGClFwi6FMwT4
         i2cIjN1TreZsC8kJTAAw2VDgzSo0VhBCWD0yc=
In-Reply-To: <7783925d0910071912u5e4f4a2au8442cb6537cd35ed@mail.gmail.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

--000e0cd5f674fef9fa047563af9e
Content-Type: text/plain; charset=ISO-8859-1

Hi Rick,

Some days ago i had the same question in my mind. While going through "The
Linux Kernel Architecture" book (by Wolfgang Mauerer), i got the answer:

The GNU compiler supports arithmetic with void pointers as well as function
pointers. The increment step is 1 byte. These are used by the kernel at
various points.

Have fun.

Regards
Mayur

On Thu, Oct 8, 2009 at 7:42 AM, Rick Brown <rick.brown.3@gmail.com> wrote:

> Hello list,
>
> As far as I recall from K&R, isn't pointer arithmetic on a void
> pointer banned? And any effort to do that results in an error -
> because the compiler won't know by how much size to increment the
> pointer for a statement like "ptr++"? But then how about this:
>
> [rick@linux rick]$ cat t.c
> #include <stdio.h>
> int main()
> {
>    void *ptr = 0;
>    printf("%d \n", ptr+1);
> }
> [rick@linux rick]$ gcc t.c
> [rick@linux rick]$ ./a.out
> 1
> [rick@linux rick]$
>
> It compiles and runs fine ... !
>
> TIA,
>
> Rick
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>

--000e0cd5f674fef9fa047563af9e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Rick,<br><br>Some days ago i had the same question in my mind. While goi=
ng through &quot;The Linux Kernel Architecture&quot;  book (by Wolfgang Mau=
erer), i got the answer:<br><br>The GNU compiler supports arithmetic with v=
oid pointers as well as function pointers. The increment step is 1 byte. Th=
ese are used by the kernel at various points.<br>
<br>Have fun.<br><br>Regards<br>Mayur <br><br><div class=3D"gmail_quote">On=
 Thu, Oct 8, 2009 at 7:42 AM, Rick Brown <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:rick.brown.3@gmail.com">rick.brown.3@gmail.com</a>&gt;</span> wrote:<=
br>
<blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, =
204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">Hello list,<br>
<br>
As far as I recall from K&amp;R, isn&#39;t pointer arithmetic on a void<br>
pointer banned? And any effort to do that results in an error -<br>
because the compiler won&#39;t know by how much size to increment the<br>
pointer for a statement like &quot;ptr++&quot;? But then how about this:<br=
>
<br>
[rick@linux rick]$ cat t.c<br>
#include &lt;stdio.h&gt;<br>
int main()<br>
{<br>
 =A0 =A0void *ptr =3D 0;<br>
 =A0 =A0printf(&quot;%d \n&quot;, ptr+1);<br>
}<br>
[rick@linux rick]$ gcc t.c<br>
[rick@linux rick]$ ./a.out<br>
1<br>
[rick@linux rick]$<br>
<br>
It compiles and runs fine ... !<br>
<br>
TIA,<br>
<br>
Rick<br>
<font color=3D"#888888"><br>
--<br>
To unsubscribe from this list: send an email with<br>
&quot;unsubscribe kernelnewbies&quot; to <a href=3D"mailto:ecartis@nl.linux=
.org">ecartis@nl.linux.org</a><br>
Please read the FAQ at <a href=3D"http://kernelnewbies.org/FAQ" target=3D"_=
blank">http://kernelnewbies.org/FAQ</a><br>
<br>
</font></blockquote></div><br>

--000e0cd5f674fef9fa047563af9e--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

