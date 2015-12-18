From: Rajat Jain <rajatxjain@gmail.com>
Subject: Re: Char device question: cdev_del()
Date: Fri, 18 Dec 2015 11:41:28 -0800
Message-ID: <CAA93t1oBCT=MhViFV1GR9myb4K9fdeYWU=u-8a2euws7SDYLiw@mail.gmail.com>
References: <CAA93t1qNPqMvSk9Cq4g5FzGOoD+r=SaiQ_dP9VwQ90ON5gXG2A@mail.gmail.com>
Reply-To: rajatxjain@gmail.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:content-type;
        bh=NNjcdm1g+98Lak/TYj2QidzEcf0pbaZoNCNljX3GXGA=;
        b=yHuhYHBPtnStu1gYKrU7xga4f5DmcckjvGgqwNXCXh2ZlPowOFJUItnuzMVOGcx7ij
         EpaBEseNV6fhmkyCXWNHyUiCR971N6hDRJhCJ99MP8GK226Tsyn+YEmBSOkzIRIi/VRE
         u14U6RKNy8Tw6F5RfxnV2q+JMz/TZzP7LOCnD/XnV3y0QqtU8epA1DJvpmKjCY1msdv5
         r1uRWZBdYbn0kv3CBZs0I1DTeEQ9/vVgVsdo5vuKkVLUDpQSx7eaxdTgGpgrQ9uvTdEl
         cA16R2TVyEp4krH8zNla2oIxfZOYvcQU2YaOjky9TUgwCZDXo3ACtA+PimDozpsIX3nS
         NRrA==
In-Reply-To: <CAA93t1qNPqMvSk9Cq4g5FzGOoD+r=SaiQ_dP9VwQ90ON5gXG2A@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, kernelnewbies@kernelnewbies.org

On Fri, Dec 18, 2015 at 11:40 AM, Rajat Jain <rajatxjain@gmail.com> wrote:
> Hi,
>
> What happens if the driver calls cdev_del() while one of the character
> device is being used (i.e. for. e.g. some process is in the middle of
> the ioctl call for that character device).
>
> Does the cdev_del() wait for that call to get completed? Is the driver
> guaranteed that once the cdev_del() returns, none of the driver
> character device operations are in use?
>
> Thanks,
>
> Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
