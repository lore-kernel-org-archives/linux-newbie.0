From: Junio C Hamano <gitster@pobox.com>
Subject: Re: Write and Submit Your First Kernel Patch
Date: Fri, 23 Oct 2009 12:52:18 -0700
Message-ID: <7v8wf1c2h9.fsf@alter.siamese.dyndns.org>
References: <dc1d0f40910231146y14028f4el9753debdf334103@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <git-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=to:cc:subject
	:references:from:date:in-reply-to:message-id:mime-version
	:content-type:content-transfer-encoding; s=sasl; bh=uj/jihwo7E/E
	BUMNMiSXH/XrnIc=; b=UgkfTbdA8wKWQj7e3XgoLl1TIB7iRpRUyEOmbk+1zucT
	YewLY0bDrIhmPBz0gJJsjV5AAVWSIruRoDxN0SzK4vxJNIWAZdIvc3VTH4iRaanL
	61QGvjhyzxelfy40dr6WkV4cpZriL2IcqIEMubz+AVECkqxrfIvAAqADRY7kH6g=
In-Reply-To: <dc1d0f40910231146y14028f4el9753debdf334103@mail.gmail.com>
 ("Kevyn-Alexandre =?utf-8?Q?Par=C3=A9=22's?= message of "Fri\, 23 Oct 2009
 14\:46\:24 -0400")
Sender: git-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: Kevyn-Alexandre =?utf-8?Q?Par=C3=A9?= <kevyn.alexandre.pare@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, git@vger.kernel.org

Kevyn-Alexandre Par=C3=A9  <kevyn.alexandre.pare@gmail.com> writes:

> Just before I send my patch I got this error with:
> ./scripts/checkpatch.pl --terse --file
> 0001-Staging-comedi-driver-fix-coding-style.patch
>
> 0001-Staging-comedi-driver-fix-coding-style.patch:27: ERROR: trailing=
 whitespace
> 0001-Staging-comedi-driver-fix-coding-style.patch:35: ERROR: trailing=
 whitespace
> 0001-Staging-comedi-driver-fix-coding-style.patch:43: ERROR: trailing=
 whitespace
> 0001-Staging-comedi-driver-fix-coding-style.patch:53: ERROR: trailing=
 whitespace
>
> I have done a step by step explanation of what I have done:
> http://kapare.blogspot.com/2009/09/write-and-submit-your-first-kernel=
=2Ehtml
>
> It seem to me that the whitespace are added after I do this command:
> git format-patch -s -n master..mybranch

"The whitespace are added after..." sounds to me that what you committe=
d
were checkpatch compliant, and format-patch somehow broke it.  If that =
is
the case we need to fix format-patch.

Please check if "git show $commit" output for the commit that correspon=
ds
to the "[Staging] comedi driver: fix coding style" patch has trailing
whitespaces.  That is what you committed.

If there already is whitespace breakage in what you committed, then we =
do
not have to blame format-patch and look for bugs in it to fix.

Otherwise, please send 0001-*.patch (output from format-patch) and outp=
ut
from that "git show $commit" as separate attachments, so that we can de=
bug
and fix format-patch.

Thanks.
