From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Re: mmaping device memory into userspace.
Date: Wed, 28 Mar 2007 22:17:50 +0530
Message-ID: <292693080703280947q1138fd31wb684fe473adaf49a@mail.gmail.com>
References: <292693080703272115m335f5b0yf071007697aee6aa@mail.gmail.com>
	 <20070328102938.GA5109@gateway.home>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=i6ExnjV8S444Jrmn3TKKriqJic5MwGmw8XaaslaVjgi3tAY0XL95Oo3AGb6ETXYurqfW9ngHBZbJmKImikbl+cPA+21hTag0AqmmRqB3bHhqDJOOEBRp+q5gGdVz6AcVUm7hik2uiL2VpDZWDGxJ14jkYNCVMDGIrfoJWGIxVOc=
In-Reply-To: <20070328102938.GA5109@gateway.home>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Erik Mouw <mouw@nl.linux.org>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>

On 3/28/07, Erik Mouw <mouw@nl.linux.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> On Wed, Mar 28, 2007 at 09:45:52AM +0530, Daniel Rodrick wrote:
> > If we map device memory into user space using mmap(), the user will be
> > able to do read / write into device using normal memory handling
> > routines, right?
>
> Right.
>
> > But as mentioned in LDD3, should appropriate readb() / writeb()
> > routines be actually used to read / write into device memory?
>
> LDD3 is right (as usual :).
>

So using mmap() to map device memory into user space, and then reading
/ writing to device memory in same way as normal memory isn't correct?

Thanks,

Dan.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
