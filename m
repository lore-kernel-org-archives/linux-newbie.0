From: "Mulyadi Santosa" <mulyadi.santosa@gmail.com>
Subject: Re: Location of syscall wrappers
Date: Thu, 7 Feb 2008 22:51:48 +0700
Message-ID: <f284c33d0802070751l33c0a27aq65b3fb2bba7693dc@mail.gmail.com>
References: <f5524d840802062248v2311b6at1dc22bc30ece3b60@mail.gmail.com>
	 <C86899CCB10A6C4E93D5978DCB232D4B07A66B7D@GDCMX01.igglobal.com>
	 <f284c33d0802070740i29ff633bn95963585b69648f9@mail.gmail.com>
	 <47AB2965.4080101@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=37dlvzpMlPJ20jySgZsmakXwKYx6gqETYbbpp0CrM34=;
        b=piWbn2yJQs9SRL7XTPtTHyqe7HRyjlgmJkj3fgiAM88Nn7YBpndrSQiXL8iYTf0n3DbDNSrunh7zO0uuBxRIy4t6G0s+AVllyQH6QIMZakkgqz0hpe0zml0wqtx94K5fg3gdNgHUzh+fkEeF5PyowIc2b083hIPO62CQbsmlxnE=
In-Reply-To: <47AB2965.4080101@gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Scott Lovenberg <scott.lovenberg@gmail.com>
Cc: Rajat Jain <Rajat.Jain@infogain.com>, Sachin Gaikwad <sachin.kernel@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi..

On Feb 7, 2008 10:53 PM, Scott Lovenberg <scott.lovenberg@gmail.com> wrote:
>  for 64 bit:
>  /usr/include/asm-x86_64/ioctls.h
>  /usr/include/bits/ioctls.h
>
>  so, for all machines:
>  /usr/include/asm-%arch%/ioctls.h
>

Thank you for the clarification.

regards,

Mulyadi.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
