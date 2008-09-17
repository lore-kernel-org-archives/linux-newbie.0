From: "=?ISO-8859-1?Q?Ren=EA?=" <rene@grad.icmc.usp.br>
Subject: Re: download file
Date: Tue, 16 Sep 2008 22:37:33 -0300
Message-ID: <5f9618380809161837g748215d5n914702e7ac5f0d11@mail.gmail.com>
References: <2e35683f0809161118q3153143kcc6221dc7dd27949@mail.gmail.com>
	 <200809161132.05015.ben.kevan@gmail.com>
	 <5f9618380809161152x334e7282g5fde3ac2b4f2f789@mail.gmail.com>
	 <2e35683f0809161742l1bac0340qca83a3ff3da6029@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:sender
         :to:subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references
         :x-google-sender-auth;
        bh=+0sEDluZ/m8pWGALufzQRgiUEXKe/QxFzZl3hFjiDPY=;
        b=sBPXnDBVdEUZWS7A0tOwCYAq2SR7gnYBAtyIQVrL1w9THy9Kt1cwqxm6L+1V0IYGmd
         haUT9jOITElIZz/nbJ9NR9U5DS6aQ3J8z+yl4yJuQvPK4YRtFXKLjS9Ekq7je5Hq+FU8
         ikuIDmrYOmhZCujRSLueBzl72whtHq7pOLbwQ=
In-Reply-To: <2e35683f0809161742l1bac0340qca83a3ff3da6029@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Bhikkhu Mettavihari <draketools@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

I think that are lot of ways, but this one should work:

1) Get the file with stream urls:

wget -O videos "http://switch3.castup.net/cunet/gm.asp?ai=3D214&ar=3D10=
50wmv&ak=3DTY"

PS: The contents will be saved in file "videos"

2) Extract the stream urls:

cat videos | grep "mms://" | sed "s/<ref href=3D\"\(.*\)\".*/\1/" > url=
s

3) Now file "urls" contains each stream url

4) You can save the stream with Mplayer:

mplayer -dumpstream
"mms://s95wm.castup.net/server12/39182686-61.wmv?ct=3DBR&rg=3DNA&aid=3D=
214&st=3D0&ts=3D0&cu=3D77D67414-0C4A-4A7E-A3EE-41600FDA4131"

PS: Do not forget to put the stream url in double quotes :)

Cheers;

Ren=EA

On Tue, Sep 16, 2008 at 9:42 PM, Bhikkhu Mettavihari
<draketools@gmail.com> wrote:
> Hi Ren=EA and Ben
>
> Thank you for the reply's
>
> On Wed, Sep 17, 2008 at 12:22 AM, Ren=EA <rene@grad.icmc.usp.br> wrot=
e:
>> Are you getting this error because address contains the & character,
>> that it's used by shell to start proccess in background,
>> you can easily download file with wget by putting double quotes in a=
ddress:
>>
>> wget "http://switch3.castup.net/cunet/gm.asp?ai=3D214&ar=3D1050wmv&a=
k=3DTY"
>>
>> or use \& instead &, like this:
>>
>> wget http://switch3.castup.net/cunet/gm.asp?ai=3D214\&ar=3D1050wmv\&=
ak=3DTY
>
> Thank you so much. I do get the file that wget is asking for.
> But as you might know I am trying to download the video file that is
> referenced to in this file
> If any one of you can help with that would be great.
>
> regards
> Mettavihari
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
