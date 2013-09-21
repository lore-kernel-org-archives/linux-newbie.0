From: "Bradley D. Thornton" <Bradley@NorthTech.US>
Subject: Re: Which distro?
Date: Sat, 21 Sep 2013 06:49:56 -0700
Message-ID: <523DA404.7070804@NorthTech.US>
References: <l0v3jt$47e$1@ger.gmane.org> <52332713.7000903@NorthTech.US> <201309141313.23034.cr@orcon.net.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <201309141313.23034.cr@orcon.net.nz>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: RIPEMD160



On 09/13/2013 06:13 PM, cr wrote:
> 
> One suggestion, which may make windowshopping a bit easier whichever distro he 
> finally settles on - make several partitions, install a known reliable distro 
> in one partition to use for daily work like emails etc, and install the 
> 'trial' distro in another partition.   

I do agree that simultaneously shopping live distros is probably the
most immediately gratifying way to help come to a personal conclusion as
to the distro[s] one might prefer.

That having been said, I just don't subscribe to the multi-boot method,
and haven't, for several years now - with the exception of RAM starved
machinery.

There's just no point, IMNSHO, to use (or waste) HDD space w/kruft by
creating several partitions, especially when their need is relatively
temporary in nature.

Instead, and with tools like VirtualBox and KVM, creating virtual
machines where HDD space can be immediately reclaimed when the OS is no
longer needed, along with the convenience of being able to evaluate live
operating systems in parallel at the same time, requiring someone to
reboot over and over to swap out the running OS just doesn't scale.

> (And keep all user data in yet another 
> partition separate from the OS).   

This is ideal, and especially when using virtual machines under say,
VirtualBox, that can each use the same /usr/local or /home, for example.

It is not without issues, however, such as the way some distros have a
single group in their schema for for all non-priv'd users, while others
incorporate a scenario where a single group for all users. i.e.,

joeuser:joeuser

or

joeuser:users


You can multi-boot into whichever one you
> want with Grub.   

You mean LILO :p

Then of course, if the 'trial' distro turns out to be
> satisfactory, just switch to using that one. 

Not *as* simple a process using the virtual machines method for
performing the eval, unless you take steps to incorporate LVM or
something similar in your plan; since, aside from the leftover kruft
partitions I mentioned above, the evaluator would have to move the
virtual machine's HDD partitions to the bare-metal machine, unless
he/she had planned from the start to just do a wipe and fresh install
from scratch once the eval was over.

Excellent suggestions, cr, to the OP's original question - things that
should definitely be weighed and considered before going forward and
engaging in the actual evaluation :)

Kindest regards,


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

iQEcBAEBAwAGBQJSPaQEAAoJEE1wgkIhr9j3CCYIAK+LRQDonMbfuuNgyLr6bCuS
1WNXM+G0jAXNs+tNPsi1kAXrN50k7Fpo1ygttNU2NwEtEAvWSH5ssJlKGydYNSOm
qqS/0aRraMQMA+S2HwbbhQ7kvcFnFux339XJIsIStRx1ISLl+bXVs5xj3Wp8o0T/
QkDrbYi3KNfzCXtjvUYFLRa1N2+B5Z3ydP66ZJ0m+bbLVT200NYIrXk6t79QX62W
c+qDNmv0FteVQgH14gUPcPgIoeIOJVfr+aiSGiMwnrwzFxO273+d7o2yRgMVeBO3
7Umnt9E7izkQ8XfmoIRBRIzYmzNFkJPiLj1lRxPsffOWo8SKdgXkYyi202z7F2M=
=3pDH
-----END PGP SIGNATURE-----
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
