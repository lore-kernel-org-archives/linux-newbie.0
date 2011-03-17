From: =?iso-8859-1?q?J=E9r=F4me_Pouiller?= <jerome@sysmic.org>
Subject: Re: smap output - unnamed entries and heap
Date: Thu, 17 Mar 2011 23:22:48 +0100
Message-ID: <201103172322.49055.jerome@sysmic.org>
References: <AANLkTik3N5j74eWastminNZLevPqoSCEiVCrX1vP66_k@mail.gmail.com> <4D80C47C.80300@draigBrady.com> <AANLkTi=gN=DOU9bQtqdr1s44y5QgLn0W9_oRb9JTMWNa@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <AANLkTi=gN=DOU9bQtqdr1s44y5QgLn0W9_oRb9JTMWNa@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: Aneesh Bhasin <contact.aneesh@gmail.com>
Cc: =?iso-8859-1?q?P=E1draig_Brady?= <P@draigbrady.com>, Randy Dunlap <rdunlap@xenotime.net>, linux-newbie <linux-newbie@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>

On Thursday 17 March 2011 12:46:13 Aneesh Bhasin wrote:
[..]
> However, as I wrote earlier, there a lot of anonymous memory regions
> listed in smap output (with permission rwxp) - and I do not know of
> any way in which I could associate these memory mapping to a
> particular library..
A few years ago, I had a similar need. I made a small library which ove=
rload=20
malloc (and free) and display caller (using backtrace_symbols function)=
=2E=20
Next I loaded it using LD_PRELOAD. The main problems are :
  * it only work for malloced memory (not mmaped memory)
  * It is difficult to interpred efficiently information provided. Name=
 of=20
caller may not be sufficient to understand why memory is allocated.

--
J=E9r=F4me Pouiller <jezz@sysmic.org>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
