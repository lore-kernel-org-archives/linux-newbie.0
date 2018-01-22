From: Drew <drew.kay@gmail.com>
Subject: Re: What is the meaning of [PATCH v3 0/3] things in mail subject
Date: Mon, 22 Jan 2018 07:14:30 -0800
Message-ID: <CACJz6QvvVPSiQaS++ZH_pvQbD--Yu+TJkmXZopd760YSJwXfLA@mail.gmail.com>
References: <20180122143607.GA33742@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=H//aNQDP6I0a4u6rJ/bJLBxdg3VInDe2j8Q6ZGnhkK8=;
        b=dWSj88Dbo/W30vKHJ1EjqPJ8bmpprjX3XFCTg0QfDR4PehI9AsKhcVVDpua8oLI5qQ
         KwHx6tyuEg80SX1Q8mFva7ZQAAsh9f+23XcdIIeUBTYpE/73xaYehm5bK+WBoUeuVe9p
         12Y6sJyYcUSqh8xydR/8mjAkQOhpsZJkieX9jMWGB6xnEH/XLROOe77uN3Dpq+IwH2tF
         h+u/E92+fIqeO0xHsNxGrhDE1CnhiwI5rdhrUEnU4/5c7x/7szNJhXNbxVr+Hul1alD1
         HP74h8jkAGFPtCQS4V2AFTkJzzlz0+TY+8iueVPcdC0ghL/+eycwafdzuctsNvbvzxlV
         bW3w==
In-Reply-To: <20180122143607.GA33742@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: wuzhouhui <wuzhouhui14@mails.ucas.ac.cn>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Mon, Jan 22, 2018 at 6:36 AM, wuzhouhui <wuzhouhui14@mails.ucas.ac.cn> wrote:
> In linux kernel mail list, I often see such string in mail subject:
>     [PATCH V3 3/3]
> or
>     [PATCH 0/8]
>
> What's meaning of "V3", "3/3" and "0/8"?

As I understand it, the 0/8, 2/3, 3/5, 4/4 indicate the patch in the
message is part of a sequence of related patches. So 3/5 means that is
patch three of six related patches (patch 0 is usually the patch that
contains the details about what the patches do) that belong together.

The V1, V2, V3 etc usually indicates the patch set is a revision,
often times due to some part of the patch being either rejected, or in
the case of experimental patches, an updated patch set that supersedes
and earlier one.


-- 
Drew

"Nothing in life is to be feared. It is only to be understood."
--Marie Curie

"This started out as a hobby and spun horribly out of control."
-Unknown
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
