From: Manish Katiyar <mkatiyar@gmail.com>
Subject: Re: C question
Date: Thu, 8 Oct 2009 08:22:31 +0530
Message-ID: <ea11fea30910071952x58720190r9fef930ff524c849@mail.gmail.com>
References: <7783925d0910071912u5e4f4a2au8442cb6537cd35ed@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=tohFo7B5tkyzjTSEH7aWB/p8o//gPWeIO/zD2VB8rUY=;
        b=GSLULeJcwJdeYCQFMRe+1a/vqel5EvEVhpFHWf+0ZvGax6LltABVD1wBXS3Atm8QwU
         xtebOHxQNSgv3vfmb0ziD9tRd45dL8jQYmZ1nUOk/i824O08NrRwa/f1ggfqyW21tIlL
         kcpa15gLRxc8F53x/TD++c6x5KzBRifREvoZQ=
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
Content-Type: text/plain; charset="windows-1252"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On Thu, Oct 8, 2009 at 7:42 AM, Rick Brown <rick.brown.3@gmail.com> wrote:
> Hello list,
>
> As far as I recall from K&R, isn't pointer arithmetic on a void
> pointer banned? And any effort to do that results in an error -
> because the compiler won't know by how much size to increment the
> pointer for a statement like "ptr++"? But then how about this:

But in the program, you aren't actually trying to dereference the
value. Just adding means it becomes normal arithmetic and that is why
you get result as 1. You will see the error if you try to dereference
it.

/tmp> gcc a.c
a.c: In function =91main=92:
a.c:5: warning: format =91%d=92 expects type =91int=92, but argument 2 has =
type =91void *=92
a.c:6: warning: dereferencing =91void *=92 pointer
a.c:6: error: invalid use of void expression
/tmp> cat a.c
#include <stdio.h>
int main()
{
   void *ptr =3D 0;
   printf("%d \n", ptr+1);
   printf("%d \n", *(ptr+1));
}


>
> [rick@linux rick]$ cat t.c
> #include <stdio.h>
> int main()
> {
> =A0 =A0void *ptr =3D 0;
> =A0 =A0printf("%d \n", ptr+1);
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



--=20
Thanks -
Manish
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
[$\*.^ -- I miss being one of them
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

