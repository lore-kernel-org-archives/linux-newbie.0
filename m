From: "Bradley D. Thornton" <Bradley@NorthTech.US>
Subject: Re: what is the fs type of root filesystem ?
Date: Tue, 12 Feb 2013 13:14:26 -0800
Message-ID: <511AB0B2.2070702@NorthTech.US>
References: <20130211063823.GA5824@debian.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20130211063823.GA5824@debian.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: RIPEMD160



On 02/10/2013 10:38 PM, horseriver wrote:
> hi:)
> 
>   root fs is ext3 or ext4 ?

When you install your operating system, you must first decide upon upon
the devices which will be used to house your operating system (Which
disk devices will contain your operating system).

The next thing is to decide how you are going to partition that
resource, and typically, that means at least two partitions - one for
your "swap" and one for your "/", but usually, one will partition the
disk by allocating additional partitions to break up the tree under "/"
with additional partitions.

Those partitions might be "/", "/home", and "/boot", as well as others,
but for the purposes of this example I'll simply address those three as
if they were the choices made.

The third thing you need to do after partitioning is to prepare those
partitions - In the case of swap, you will use type 82. In the case of
all others, the type will remain unchanged as type 83 (you don't need to
do anything - it is already set as this).

The fourth thing is to decide upon a *file system* for "/", "/boot", and
"/home" (as per our example layout).

If you choose 'ext3', you really can't go wrong, as this file system
type is supported by almost all Linux distros, out of the box, so to speak.

You do NOT want to choose 'xfs' as the file system for "/boot" (if you
have a "/boot" - if you don't, then do not choose xfs for "/").

So, for the purposes of our example, a typical layout might be as follows:

/dev/sda1	/boot	200MBytes	ext2	type 83

/dev/sda2	swap	2048MBytes	swap	type 82

/dev/sda3	/	20GBytes	ext3	type 83

/dev/sda4	/home	40GBytes	xfs	type 83

Of course, you can safely and effectively decide upon and use ext3 file
system type for "/boot", "/", as well as "/home".

I personally prefer ext2 for "/boot", and xfs for performance reasons on
"/home", and ext3 or ext4 for the others.

So to summarize, if you choose ext3 for ALL of your partitions, you
shouldn't have any issues whatsoever :) this might be a good choice for
you until you develop your own personal prejudices and preferences -
until you know what your personal preferences are, and why, choosing
ext3 is a good choice.

I hope that helps :)


- -- 
Bradley D. Thornton
Manager Network Services
NorthTech Computer
TEL: +1.310.388.9469  (US)
TEL: +44.203.318.2755 (UK)
TEL: +41.43.508.05.10 (CH)
http://NorthTech.US

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Find this cert at x-hkp://pool.sks-keyservers.net

iQEcBAEBAwAGBQJRGrCyAAoJEE1wgkIhr9j34+gIAK1If0dycTKvlRu6JDb8VQVw
Q+OJLCvwukvojm8v7gNSybL4GjGHJyy58QvEFiytdOxxncUqyOSQbIRJv/af4Eok
jjoIyX3v+en3LQpCm9xZHhh6RkJVFmu3H/Wdt9DFprC2Hmc5bHdGViZty2lsP4jP
yNk0N3vkh6FrNnwwLCpuUj6tUnQpEgfMYwaNLGE171s3mICjpdyRiWRu00X1Q9RT
/26c0C+hkihE07OQB0gRP1KIqNqEENUm9n3lV12hnBQYNOP1X7m8oXa6RV0jouf2
DRiRhyP5XB9+rNE0cLK1QXItSJbI2qcejJdgvTq3qZQQZgqR5SN6RYu6/USTb4Q=
=aOD7
-----END PGP SIGNATURE-----
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
