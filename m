From: "Mulyadi Santosa" <mulyadi.santosa@gmail.com>
Subject: Re: Location of syscall wrappers
Date: Thu, 7 Feb 2008 22:40:01 +0700
Message-ID: <f284c33d0802070740i29ff633bn95963585b69648f9@mail.gmail.com>
References: <f5524d840802062248v2311b6at1dc22bc30ece3b60@mail.gmail.com>
	 <C86899CCB10A6C4E93D5978DCB232D4B07A66B7D@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=tYtKes2MvhshTb78ntRqjNiFlJ/5qbYCURhhdeQ2YgE=;
        b=HkK18i1Qw0CTZnqlzAMTGygQHmWLavmOuF9q2hJnWzWBzzjL/RKAh23YGdqmOW77WirKcWEVu/5Fc8AfD0hhkaa2jEbZOj6xjIv8x72LX54KJNrSQWE24CNxEmhTsknEVROb0aQvCMFjVBWQCtLVHuHSn1REtHIi7WH/vhe8SqY=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B07A66B7D@GDCMX01.igglobal.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: Sachin Gaikwad <sachin.kernel@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi...

On Feb 7, 2008 3:42 PM, Rajat Jain <Rajat.Jain@infogain.com> wrote:
> Who is supposed to provide syscall()?? C library? Where do I find its definition (not declaration)?

I think it could be the C kernel headers. I mean something like
/usr/include/asm...

> What is an application supposed to do if it does not want to use the library?

by calling sysenter or int 0x80 and put related parameters in certain registers?

regards,

Mulyadi.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
