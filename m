From: =?ISO-8859-1?Q?P=E1draig_Brady?= <P@draigBrady.com>
Subject: Re: smap output - unnamed entries and heap
Date: Wed, 16 Mar 2011 14:09:00 +0000
Message-ID: <4D80C47C.80300@draigBrady.com>
References: <AANLkTik3N5j74eWastminNZLevPqoSCEiVCrX1vP66_k@mail.gmail.com> <20110315091412.de6eb63c.rdunlap@xenotime.net> <AANLkTikU_kPOoNv6gJiPOsmrkFDddTLQ-0--wViYyFxj@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <AANLkTikU_kPOoNv6gJiPOsmrkFDddTLQ-0--wViYyFxj@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Aneesh Bhasin <contact.aneesh@gmail.com>
Cc: Randy Dunlap <rdunlap@xenotime.net>, linux-newbie <linux-newbie@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>

On 16/03/11 05:19, Aneesh Bhasin wrote:
> Also, is there a way in linux (without using
> dedicated tools like valgrind), to see how much heap or anonymous
> memory is attributed to code arising from a particular library/binary

You might find ps_mem.py useful.
If parses smaps and reports RAM usage of a program

http://www.pixelbeat.org/scripts/ps_mem.py

cheers,
P=E1draig.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
