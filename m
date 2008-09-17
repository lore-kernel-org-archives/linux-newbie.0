From: "Bhikkhu Mettavihari" <draketools@gmail.com>
Subject: Re: download file
Date: Wed, 17 Sep 2008 06:12:59 +0530
Message-ID: <2e35683f0809161742l1bac0340qca83a3ff3da6029@mail.gmail.com>
References: <2e35683f0809161118q3153143kcc6221dc7dd27949@mail.gmail.com>
	 <200809161132.05015.ben.kevan@gmail.com>
	 <5f9618380809161152x334e7282g5fde3ac2b4f2f789@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=S1rGsiEHwOnIGNzUTIVoBUGPrFq8cszROvrofFHTk38=;
        b=AynRwqSjIJuLkFMibzLF9pMb7+4XlOYSTr7okRAMMASpUrmYJxxFM7me2briRYuF2/
         4Zqpstw2wfgf5jJCrJbDdNaTBdwJxTresecYkxhLKm0wW7qPojvf2RAm6ZIuWzJhcrV+
         Peblya8lDGE5Xu7eRK0Pf1PNeFXz1WIVxP4vg=
In-Reply-To: <5f9618380809161152x334e7282g5fde3ac2b4f2f789@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi Ren=EA and Ben

Thank you for the reply's

On Wed, Sep 17, 2008 at 12:22 AM, Ren=EA <rene@grad.icmc.usp.br> wrote:
> Are you getting this error because address contains the & character,
> that it's used by shell to start proccess in background,
> you can easily download file with wget by putting double quotes in ad=
dress:
>
> wget "http://switch3.castup.net/cunet/gm.asp?ai=3D214&ar=3D1050wmv&ak=
=3DTY"
>
> or use \& instead &, like this:
>
> wget http://switch3.castup.net/cunet/gm.asp?ai=3D214\&ar=3D1050wmv\&a=
k=3DTY

Thank you so much. I do get the file that wget is asking for.
But as you might know I am trying to download the video file that is
referenced to in this file
If any one of you can help with that would be great.

regards
Mettavihari
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
