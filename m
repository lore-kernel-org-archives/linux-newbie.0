From: Richard Genoud <richard.genoud@gmail.com>
Subject: Re: kernel.org 3.0.4 rc version
Date: Wed, 12 Oct 2011 08:45:51 +0200
Message-ID: <CACQ1gAjUw-34BrQvCe-TqoTBwu0hD0aaTvJn1Bux+MRTSm-E7w@mail.gmail.com>
References: <CAG+XuE55j_Xsu0boX9OWsnYXaOXCyaSHnbRfAp_wfztLn30V3A@mail.gmail.com>
 <CAG+XuE7b-rqeoEzT6TvPwtr9CE0mLKRft4vZg4OO5a5PpGhMrg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=sYNXA3IZeAt2ldHFZQIUj8R/PISlzoRrtEnjViiRbKE=;
        b=t9YD0+1ao+iRTuGQo4DZRTWPbY8ZhKs1IWeMJNPpPpAUGRmZvN9jkLD21Ljec/Ubr7
         Y4ij0jPMeows/RzA9Zz6Y1Rp3+BIu3D6huBHxbHchgJxz4+oIQ7WuahiQtrNre9hLd7u
         xqq6Lg8RWN0FWDnUJ8BiWgtZaOmmMa8NAHygs=
In-Reply-To: <CAG+XuE7b-rqeoEzT6TvPwtr9CE0mLKRft4vZg4OO5a5PpGhMrg@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Prashant Batra <prashant0100@gmail.com>
Cc: linux-newbie@vger.kernel.org

2011/10/11 Prashant Batra <prashant0100@gmail.com>:
> Hello,
> I am trying to download stable 3.0 kernel.
> Kernel.org shows 3.0.4 is stable but download is not available from there.
> So, I moved to git, but git seems to store all the repository, so
> wanted to know which version of kernel 3.0-rc<version> is the tagged
> as kernel 3.0.4.
> Is it 3.0-rc4?
>
> Regards,
> Prashant
no, 3.0-rc4 is the release candidate, you should not use it.
to get stable release, you should get the stable tree :
http://git.kernel.org/?p=linux/kernel/git/stable/linux-stable.git;a=summary
There's a tag v3.0.6 in it, that's the one you should use.

richard.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
