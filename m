From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: switching to debian (... and installing the NVIDIA  GeForce4)
Date: Thu, 25 Mar 2004 21:46:18 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403252146.18504.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.44.0403251127320.26064-200000@legolas.personal.engin.umich.edu> <200403252106.04253.pa3gcu@zeelandnet.nl>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403252106.04253.pa3gcu@zeelandnet.nl>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

On Thursday 25 March 2004 21:06, pa3gcu wrote:
> After all if you read;
> =A0ftp://download.nvidia.com/XFree86/Linux-x86/1.0-5336/README
> You will see that my examples are written there, they are not there f=
or the
> duration, they are there to help you.

I am glad i did not write this README, i have just discovered a somewha=
t BAD=20
and rather misleading point, in that readme which i decided to study ju=
st to=20
make sure i got my facts correct, i see the following under section;
sec-04 (if the file is in an editor its +/- line 772)

It says;
    cd /lib/modules/`uname -r`/build/
    cp configs/kernel-2.4.18-i686-bigmem.config .config
    make mrproper oldconfig dep

It an example for redhat but the problems is universal as it concerns=20
'make mrproper'

make mrproper removes .config meaning if one follows that example ALL w=
ill=20
fail misarably as kernel defaults contained in the different kernel Con=
fig.in=20
files will be used and i can assure you thats not much.

I will send a report to nvidia about it.

--=20
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
