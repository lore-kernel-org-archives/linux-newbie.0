From: Yawar Amin <yawar.amin@gmail.com>
Subject: Re: Converting .gif to .txt
Date: Thu, 09 Feb 2006 20:14:07 +0600
Message-ID: <43EB4E2F.3070501@gmail.com>
References: <380-2200624964217314@M2W030.mail2web.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig77CDE7F5A82C3606BB628970"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <380-2200624964217314@M2W030.mail2web.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: 
Cc: linux-newbie@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig77CDE7F5A82C3606BB628970
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

heisspf@skyinet.net wrote:
> Hi,
> 
> How can one convert a text document which has been scanned and therefore
> has become a
> .gif file back to a .txt file in order that one can copy and paste text
> from it.

This is the job of OCR software, as mentioned.

> I was told it can be done with some software in windows. Is there such
> software in
> Linux?

Yes, but it's not up to the mark. I did some research on Freshmeat
some time ago. I recommend, if this is a one-time thing, getting the
OCR done at a shop.

> I was able to convert a .gif file in question to .pdf and open it with
> acroread. Acroread has an option to convert to text, however, trying to do
> it I get an empty file.

Basically the image is being embedded, pixel by pixel, into a PDF
file. The conversion program doesn't understand that the image is
showing English (?) text, and neither does Acroread. Acroread's
convert to text feature usually works because usually PDF files
contain text. You can verify this by opening a sampling of PDF files
with `less'. Then try opening your scanned image's PDF file with
`less'. You won't see the scanned text, but you will see a truckload
of gibberish data -- more or less the pixel-by-pixel description of
the image.

-- 
Yawar
Malaysia +60 (12) 918 6642
Bangladesh +880 (174) 614 754 or +880 (2) 882 1848 or +880 (175) 003
706 or +880 (189) 250 170
OpenPGP key ID 8B6B0839
Fingerprint EFB0 5050 6F27 AFC2 42B2 3B40 FD9C B344 8B6B 0839

--------------enig77CDE7F5A82C3606BB628970
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.1 (MingW32)
Comment: Using GnuPG with Thunderbird - http://enigmail.mozdev.org

iD8DBQFD604v/ZyzRItrCDkRAuwmAJ46DE/N/QOLVyOq4xacate2Z1xnEQCfSZTQ
BCPkSnLqfPZ1biyYLXf1jR4=
=IUNm
-----END PGP SIGNATURE-----

--------------enig77CDE7F5A82C3606BB628970--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
