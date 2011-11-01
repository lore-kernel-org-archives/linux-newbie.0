From: Javier Martinez Canillas <martinez.javier@gmail.com>
Subject: Re: How do I apply a kernel patch from the mailinglist?
Date: Tue, 1 Nov 2011 13:40:41 +0100
Message-ID: <CAAwP0s0ttq_7TU=9cBCVUoqxxvrUy5ggxK7hcXpUKqM_hmGrxg@mail.gmail.com>
References: <4EAFE73C.6050608@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type:content-transfer-encoding;
        bh=rRc2D7mBTGgUYWC/F2Ms8dyVDSsvxOTpGIyYfYiGeLA=;
        b=igGni0MBnZJpxxNNGEgnn36LMqj3+xw269I/QVU3p7H8evQROV3i6TqcLky9nxA0F7
         +6fCESiOcfF/HW0lqIwg4Xa7OpQKSJUA86DRqFZanc48dW9XJ7HFhpK2zvaYATQeUhPn
         87UVNugkT783dmFWke+F9vskdwL06NZ7NTZXk=
In-Reply-To: <4EAFE73C.6050608@googlemail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Chiefdome <chiefdome@googlemail.com>
Cc: linux-newbie@vger.kernel.org

On Tue, Nov 1, 2011 at 1:34 PM, Chiefdome <chiefdome@googlemail.com> wr=
ote:
> Hi as asked in the subject is there a howto on the net?
> I dont know how to apply a patch directly from my thunderbird.
> Maybe I m totally wrong
>
> Thanks for your replys.
>

Just save the patch as an ASCII text file (i.e my_driver_fix.patch)

And patch your kernel using the patch binary on top of your Linux
kernel source directory.

=46or example:

$ cd /home/javier/development/linux-omap-2.6
$ patch -p1 < my_driver_fix.patch

Hope it helps,

--=20
Javier Mart=C3=ADnez Canillas
(+34) 682 39 81 69
Barcelona, Spain
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
