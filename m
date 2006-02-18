From: "Conway S. Smith" <beolach@comcast.net>
Subject: Re: Amazon E-Books
Date: Fri, 17 Feb 2006 23:48:56 -0700
Message-ID: <43F6C358.5070709@comcast.net>
References: <20060218104919.3187c54c@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060218104919.3187c54c@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Bato wrote:
> Hi,
> 
> Amazon.com claims that its e-books can be read with Adobe Reader format only
> in Windows and Macintosh, however, not in Linux OS.
> 
> I claim, as long it is a .pdf file I can read it in Linux if I have Adobe
> Reader possibly it can even be read with xpdf.
> 
> Can I be enlightened who is right?
> 
> Thanks & regards
> 
> Peter
> -

I actually just had some experience with this, not with Amazon.com but
with my local library, which lets me "borrow" ebooks in pdf format.
Assuming Amazon.com uses similar DRM on their ebooks as my library did,
which I think is likely, then the short answer is they are, you can't
(easily) read it in Linux.

Essentially, the file you'll download from them won't actually be the
pdf; it'll be an "ebx.etd" file, which is an XML Electronic Book
eXchange file, and contains info in it on where to download the actual
pdf, and how to decrypt it.  Yes, the actual pdf is encrypted.  To
decrypt it you have to have Adobe Reader 6.0 or higher on Mac or
Windows, because even though Adobe Reader up to & including 7.0 is
available on Linux, the Linux versions do not have the "Digital
Editions" feature, which is what does the DRM & decryption.  Don't ask
me why they don't have it in the Linux version, it doesn't make any
sense to me.

The closest I got to opening the encrypted pdf was using Evince, the PDF
reader that comes with GNOME.  It recognized that the pdf was encrypted
& asked for a password to decrypt it.  But since I don't know the
password, that was a no-go, too.  In my case I just ended up reading the
ebook on a M$ Windows box at work, and deciding I'm just not going to
bother with them in the future.  It probably wouldn't be impossible to
get the password, if you have some M$ Windows box you can open the box
on & can get a dump of the network traffic from.  But on top of the
questionable legality, that was just too much effort for me to put in to it.

Anyway, I've decided just to stick w/ Project Gutenberg's plain-text
ebooks.  No nasty copyright crap, so no lame DRM crap.

Good luck,
Conway S. Smith
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.2.1 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFD9sNXGL3AU+cCPDERAo3PAKCAhXew3vowA4MbS1+BMq4LdtkfZwCgqBlC
scbOnRsP1yIwy3FvSqmBeNI=
=5Nrr
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
