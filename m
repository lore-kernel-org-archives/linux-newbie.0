From: =?ISO-8859-1?Q?Kevyn=2DAlexandre_Par=E9?= 
	<kevyn.alexandre.pare@gmail.com>
Subject: Re: Write and Submit Your First Kernel Patch
Date: Fri, 23 Oct 2009 17:26:25 -0400
Message-ID: <dc1d0f40910231426j45184429qbe3531bc76555c77@mail.gmail.com>
References: <dc1d0f40910231146y14028f4el9753debdf334103@mail.gmail.com>
	 <alpine.LNX.2.00.0910231621550.14365@iabervon.org>
	 <7vskd9akv6.fsf@alter.siamese.dyndns.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=R9zmYYUuCGZjdauNpQf22kkiGcz6B/UqBGEX9fJ2LMI=;
        b=TRWO/5Z4hqIxsm2NiJt0KJLGq0HRibuHK6fw9wAGmzgiz/oc85Tf6iKEzgK8KcYmd8
         AYwUbIolOcIn6uRYztaMCclk6qDr4ZGmEIbu+l2jUtTdI6cnlVxETNnLBk/YKnVZFdE6
         eG++3vM2nfSSahYuXZ7bdXBhQH00ecbTaBV34=
In-Reply-To: <7vskd9akv6.fsf@alter.siamese.dyndns.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Junio C Hamano <gitster@pobox.com>
Cc: Daniel Barkalow <barkalow@iabervon.org>, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, git@vger.kernel.org

My mistake but I learn a lot from you guys!

I should simply have done:
=2E/scripts/checkpatch.pl --terse --patch
0001-Staging-comedi-driver-fix-coding-style.patch

or

=2E/scripts/checkpatch.pl --terse --patch
0001-Staging-comedi-driver-fix-coding-style.patch
# Since --patch is the default!

No warning to the output, I will change my blog

thx again

kap

On Fri, Oct 23, 2009 at 4:58 PM, Junio C Hamano <gitster@pobox.com> wro=
te:
> Daniel Barkalow <barkalow@iabervon.org> writes:
>
>> On Fri, 23 Oct 2009, Kevyn-Alexandre Par=E9 wrote:
>>
>>> Just before I send my patch I got this error with:
>>> ./scripts/checkpatch.pl --terse --file
>>> 0001-Staging-comedi-driver-fix-coding-style.patch
>>
>> You're using checkpatch --file on a patch. I hope you don't intend y=
our
>> patch to be added to the kernel source as a file, but rather applied=
 to
>> the kernel source, changing other files. (I bet "gcc 0001-Staging*.p=
atch"
>> will get interesting errors, too...) The patch format adds a single
>> character at the beginning of each line to say whether it's a additi=
on, a
>> deletion, or a context line, and the context lines are identified by=
 a
>> space character. This means that a blank context line consists of ju=
st
>> this space character, which is therefore a trailing space. We get th=
e same
>> type of complaints when we have expected diff output in our test scr=
ipts.
>>
>> I'm kind of surprised that checkpatch doesn't completely blow up whe=
n it's
>> expecting a source file and getting a patch (and maybe tell you what
>> you've done). But that's the source of your errors, anyway.
>
> Ah, your analysis is correct. =A0This is a usage error of checkpatch =
script
> and there is nothing for us to worry about.
>
> Thanks; I also failed to spot --file option when I responded.
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
