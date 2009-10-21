From: =?UTF-8?B?55uK54mZ?= <simonyanix@gmail.com>
Subject: Re: 32 bit processors / 64 bit processors
Date: Wed, 21 Oct 2009 14:02:54 +0800
Message-ID: <49FAB6BD-25CD-484D-AC5D-4731D083E075@gmail.com>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com> <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v936)
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:cc:message-id:from:to
         :in-reply-to:content-type:content-transfer-encoding:mime-version
         :subject:date:references:x-mailer;
        bh=QfrqJLpZagqr/AHAko8TSohg9AlkbJdK5jOBLHvvFCw=;
        b=VGHeLDlRU9NCKDj9iUajrj22eJ6N4N32yp/JRgZm0GGVOt+emN9pyk75yjwC8vZbLm
         J36gTDgP32W/vFxOQbmfG0objfxeLSsZcVeuqPtgJqWF5GvT7ZDATL+vnK1MD5IF8hsI
         ZEZXXgV4zQQJwRSQgkZGXNUGQ0OC5tNxxi8FQ=
In-Reply-To: <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed	delsp=yes"
To: Siddu <siddu.sjce@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org


On Oct 21, 2009, at 1:39 PM, Siddu wrote:

>
>
> On Wed, Oct 21, 2009 at 8:32 AM, Rick Brown <rick.brown.3@gmail.com> =
=20
> wrote:
> Hi,
>
> Firstly, I'm trying to understand what exactly characterizes a
> procesor or an operating system as 32bit / 64 bit. I've read that it
> means the "native word size" of a machine. But what exactly is that?
> Register size? Address bus size? Anything else?
>
>
> When they say its 32/64 bit machine its the capability of the system =
=20
> or processor to process so many bits at once !

I had an understanding of this being how many bits you have to address =
=20
your RAM.

>
>
> Secondly, I'm trying to understand what exactly does a sizeof(int)
> depend on when we say it is "platform specific". Is it dependent of
> compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit? Or the
> processor being 32 / 64 bit?
>
> its dependent on processor being 32/64 bit

Just did a comparison test but it tells me otherwise. But I'm not sure =
=20
if the test case if correct, can someone improve it?
On a 64bit CentOS:
[root@yyan ~]# more test.c
#include <stdio.h>

int main ()
{
     printf ("%d\n", sizeof(int));
     return 0;
}
[root@yyan ~]# gcc test.c
[root@yyan ~]# ./a.out
4
[root@yyan ~]# uname -a
Linux yyan.pmlab.com 2.6.18-128.el5 #1 SMP Wed Jan 21 10:41:14 EST =20
2009 x86_64 x86_64 x86_64 GNU/Linux
[root@yyan ~]#

On my Leopard: (Hopefully it's a 32bit OS as it shows)
simonmac:coding yansimon$ cat test.c
#include <stdio.h>

int main ()
{
     printf ("%d\n", sizeof(int));
     return 0;
}
simonmac:coding yansimon$ gcc test.c
simonmac:coding yansimon$ ./a.out
4
simonmac:coding yansimon$ uname -a
Darwin simonmac.local 9.8.0 Darwin Kernel Version 9.8.0: Wed Jul 15 =20
16:55:01 PDT 2009; root:xnu-1228.15.4~1/RELEASE_I386 i386
simonmac:coding yansimon$


>
> Lastly, How are "sizes" of compiler / OS / processor inter related?
> Here is my understanding. A 32 bit processor can only be running a 32
> bit OS.
>
> No ... 32 bit OS can run anything <=3D 32 bit
>
> A 64 bit processor may run a 32 or a 64 bit OS.
>
> yes thats right !
>
> A 32 bit
> compiler genrates code only to be run on a 32 bit OS; ditto for 64
> bit.
>
> Not sure about this let others have their say !
> Is this right?
>
>
> Please correct me if i am wrong !
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
>
>
> --=20
> Regards,
> ~Sid~
> I have never met a man so ignorant that i couldn't learn something =20
> from him
>

--
=E7=9B=8A=E7=89=99

http://www.google.com/profiles/simonyanix

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
