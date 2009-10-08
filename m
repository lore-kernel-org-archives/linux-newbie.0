From: Kalpesh Rathod <kalpeshrathod@gmail.com>
Subject: Re: C question
Date: Thu, 8 Oct 2009 11:07:18 +0530
Message-ID: <cee4bbc90910072237x430cd4afv45fd4bb53f6b2685@mail.gmail.com>
References: <7783925d0910071912u5e4f4a2au8442cb6537cd35ed@mail.gmail.com>
	 <ea11fea30910071952x58720190r9fef930ff524c849@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=i1oMD6qjPgDrLxlwQXnuf+DwW03hTRq+eE9sYXzBdOA=;
        b=ZZYzppIx6M6xyW16+xAUpoVzyqbdi+WeaP+Hge20J7vAHER3KWQ8nla9PP33TiiUWc
         7H/x3m8yze6PglHrXOWPPic9ZINuBS8M0CNL1uEDhL7TqbUzz/F/L6pAIh+4ya7SJgoe
         MCbx4MYqaIpdp3oZ9uGJIUZdGyYdZFcj9Ay7k=
In-Reply-To: <ea11fea30910071952x58720190r9fef930ff524c849@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi Rick,

gcc can warn about void pointer increment if you use compiler option
-Wpointer-arith

=3D=3D
Kalpesh

On Thu, Oct 8, 2009 at 8:22 AM, Manish Katiyar <mkatiyar@gmail.com> wro=
te:
> On Thu, Oct 8, 2009 at 7:42 AM, Rick Brown <rick.brown.3@gmail.com> w=
rote:
>> Hello list,
>>
>> As far as I recall from K&R, isn't pointer arithmetic on a void
>> pointer banned? And any effort to do that results in an error -
>> because the compiler won't know by how much size to increment the
>> pointer for a statement like "ptr++"? But then how about this:
>
> But in the program, you aren't actually trying to dereference the
> value. Just adding means it becomes normal arithmetic and that is why
> you get result as 1. You will see the error if you try to dereference
> it.
>
> /tmp> gcc a.c
> a.c: In function =91main=92:
> a.c:5: warning: format =91%d=92 expects type =91int=92, but argument =
2 has type =91void *=92
> a.c:6: warning: dereferencing =91void *=92 pointer
> a.c:6: error: invalid use of void expression
> /tmp> cat a.c
> #include <stdio.h>
> int main()
> {
> =A0 void *ptr =3D 0;
> =A0 printf("%d \n", ptr+1);
> =A0 printf("%d \n", *(ptr+1));
> }
>
>
>>
>> [rick@linux rick]$ cat t.c
>> #include <stdio.h>
>> int main()
>> {
>> =A0 =A0void *ptr =3D 0;
>> =A0 =A0printf("%d \n", ptr+1);
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
>
>
> --
> Thanks -
> Manish
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [$\*.^ -- I miss being one of them
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
