From: "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH 1/2] x86: Add getter/setter static inlines for x86 descriptors
Date: Sun, 29 Mar 2009 14:28:00 -0700
Message-ID: <49CFE7E0.80500@zytor.com>
References: <cover.1238361501.git.ice799@gmail.com> <76c37743d20e5737eadc747cbdddbc2beb11f074.1238361501.git.ice799@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <76c37743d20e5737eadc747cbdddbc2beb11f074.1238361501.git.ice799@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Joe Damato <ice799@gmail.com>
Cc: linux-x86_64@vger.kernel.org, w@1wt.eu, mingo@elte.hu, jeremy@goop.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org

Joe Damato wrote:
> Static inline getters/setters have been provided to encourage consumers not to touch the internals of 32bit x86 descriptors directly.
> 
> Signed-off-by: Joe Damato <ice799@gmail.com>

Okay, what is the motivation for this?

This is a serious question.  The x86 descriptors are so complex that
it's not clear to me that this restriction makes the code any more
clear.  Especially not with things like:

-		cpu->arch.gdt[i].b |= 0x00000100;
+		desc_set_hi(tmp,  desc_get_hi(tmp) | 0x00000100);

This isn't an improvement.  If you're doing to so something like this,
you need to actually implement the *intent* here.

	-hpa

-- 
H. Peter Anvin, Intel Open Source Technology Center
I work for Intel.  I don't speak on their behalf.

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
