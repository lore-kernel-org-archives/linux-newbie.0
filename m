From: Hatem Nassrat <hnassrat@gmail.com>
Subject: Re: Manipulating Environment Variables of an Already running process
Date: Wed, 13 Oct 2010 22:21:56 -0300
Message-ID: <AANLkTi=butQPXUjQWohQjN9cqki1va5jNwr2PwegAx3Y@mail.gmail.com>
References: <AANLkTikXvokjr9NGRRpPRQg0ci6wv+QCytR5_07x+Sag@mail.gmail.com> <AANLkTinv0hs7uLa2c-NbgxQr9q4_RuG19rU27qXc60G=@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:in-reply-to
         :references:from:date:message-id:subject:to:cc:content-type;
        bh=L861CvZQQ6xhgjaa20KAO5p9yxIVcF6m7ZSHnmkmDok=;
        b=fBmWKslyNVRjR/0lGIAF2gwFnH7dy9PFcvRC2wgemTIlgs/qXGbzvnet9mWfAnUHS2
         Wj1ApMG81ylOMyAGkcVtQvNrGL7J8+0+wAjyW8ItfawmIPeGy7d+G9zr2cQhXXHK0ucX
         zxs0ompRh7I/pk4WY89AVgfSJLuS12A36qTFA=
In-Reply-To: <AANLkTinv0hs7uLa2c-NbgxQr9q4_RuG19rU27qXc60G=@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Joel Fernandes <agnel.joel@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Wed, Oct 13, 2010 at 7:40 PM, Joel Fernandes <agnel.joel@gmail.com> wrote:
> You could probably do it with ptrace(2) with request = PTRACE_POKEDATA

I think thats it! I have been playing around with gdb thanks to this
hint. I have attached to a running bash terminal and trying to mess
with it, not getting very far but I think this is how it can be done
:)

-- 
Hatem Nassrat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
