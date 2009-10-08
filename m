From: sandeep lahane <sandeep.lahane@gmail.com>
Subject: Re: C question
Date: Thu, 8 Oct 2009 11:13:32 +0530
Message-ID: <2d51cbf80910072243u3778e24dj89c7b7f29903d67b@mail.gmail.com>
References: <7783925d0910071912u5e4f4a2au8442cb6537cd35ed@mail.gmail.com>
	 <f86e1f200910072002o3a08ca64h4a9bc70dd33d0e7c@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary=001636499e49a02149047565f16f
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=MMLPgYEYFTzEqQlOf4mHo2DH/eXjlsWUhfgg1Srut00=;
        b=qUYc39RPcwRSxtxe9M2d3P8oZ0c4A2qwH44640dklnovMYsGzDPXurbKm9y7kAz3Xt
         qauJyyj3kokgy4OutL3JxWJdNIoy5Q9OdrC345KIj8H0o0+YUSsbcfR+6VRLDUGg77w5
         z0es7+g7EkqHwG52yoa90JAWs7YfvSuqPnzAQ=
In-Reply-To: <f86e1f200910072002o3a08ca64h4a9bc70dd33d0e7c@mail.gmail.com>
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
To: mayur nande <mayur.nan@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

--001636499e49a02149047565f16f
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 8, 2009 at 8:32 AM, mayur nande <mayur.nan@gmail.com> wrote:

> Hi Rick,
>
> Some days ago i had the same question in my mind. While going through "The
> Linux Kernel Architecture" book (by Wolfgang Mauerer), i got the answer:
>
> The GNU compiler supports arithmetic with void pointers as well as function
> pointers. The increment step is 1 byte. These are used by the kernel at
> various points.
>
> Have fun.
>
> Regards
> Mayur
>
> On Thu, Oct 8, 2009 at 7:42 AM, Rick Brown <rick.brown.3@gmail.com> wrote:
>
>> Hello list,
>>
>> As far as I recall from K&R, isn't pointer arithmetic on a void
>> pointer banned? And any effort to do that results in an error -
>> because the compiler won't know by how much size to increment the
>> pointer for a statement like "ptr++"? But then how about this:
>>
>> [rick@linux rick]$ cat t.c
>> #include <stdio.h>
>> int main()
>> {
>>    void *ptr = 0;
>>    printf("%d \n", ptr+1);
>> }
>> [rick@linux rick]$ gcc t.c
>> [rick@linux rick]$ ./a.out
>> 1
>> [rick@linux rick]$
>>
>> It compiles and runs fine ... !
>>
>> TIA,
>>
>> Rick
>>
>> --
>> To unsubscribe from this list: send an email with
>> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
>> Please read the FAQ at http://kernelnewbies.org/FAQ
>>
>>
>
Arithmetic on void and function pointers is part of GNU C extensions, C
standard
does not support it (size of void and functions is taken as 1). There are
many such
GNU extensions which are used in kernel. One way to figure out which all
extensions
are used is by providing -pedantic flag, this will emit warning for such
usage.

I think many of these extensions have became part of C99 standard already.


Regards,
Sandeep.

--001636499e49a02149047565f16f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br clear=3D"all"><br>
<br><br><div class=3D"gmail_quote">On Thu, Oct 8, 2009 at 8:32 AM, mayur na=
nde <span dir=3D"ltr">&lt;<a href=3D"mailto:mayur.nan@gmail.com">mayur.nan@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; p=
adding-left: 1ex;">
Hi Rick,<br><br>Some days ago i had the same question in my mind. While goi=
ng through &quot;The Linux Kernel Architecture&quot;  book (by Wolfgang Mau=
erer), i got the answer:<br><br>The GNU compiler supports arithmetic with v=
oid pointers as well as function pointers. The increment step is 1 byte. Th=
ese are used by the kernel at various points.<br>

<br>Have fun.<br><br>Regards<br><font color=3D"#888888">Mayur <br><br></fon=
t><div class=3D"gmail_quote"><div class=3D"im">On Thu, Oct 8, 2009 at 7:42 =
AM, Rick Brown <span dir=3D"ltr">&lt;<a href=3D"mailto:rick.brown.3@gmail.c=
om" target=3D"_blank">rick.brown.3@gmail.com</a>&gt;</span> wrote:<br>

</div><div><div></div><div class=3D"h5"><blockquote class=3D"gmail_quote" s=
tyle=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8e=
x; padding-left: 1ex;">Hello list,<br>
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
.org" target=3D"_blank">ecartis@nl.linux.org</a><br>
Please read the FAQ at <a href=3D"http://kernelnewbies.org/FAQ" target=3D"_=
blank">http://kernelnewbies.org/FAQ</a><br>
<br>
</font></blockquote></div></div></div><br></blockquote><div><br>Arithmetic =
on void and function pointers is part of GNU C extensions, C standard<br>do=
es not support it (size of void and functions is taken as 1). There are man=
y such <br>
GNU extensions which are used in kernel. One way to figure out which all ex=
tensions<br>are used is by providing -pedantic flag, this will emit warning=
 for such usage.<br><br>I think many of these extensions have became part o=
f C99 standard already. <br>
<br><br>Regards,<br>Sandeep.<br>=A0</div></div><br>

--001636499e49a02149047565f16f--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

