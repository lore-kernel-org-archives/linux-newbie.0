From: "joy merwin monteiro" <joy.merwin@gmail.com>
Subject: Re: passwd-less ssh without public keys
Date: Sat, 26 Jul 2008 07:52:13 +0530
Message-ID: <4b0d6e0d0807251922s7960e5e7wf5a1e3c60f785b87@mail.gmail.com>
References: <Pine.LNX.4.64.0807252109200.24751@localhost>
Reply-To: joy.merwin@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:reply-to
         :to:subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=wOM6PjqSRBjohM3SYxDfnCiqJwpvasOj2mGthvGhNWQ=;
        b=l+qRam7FajZGpgklSPz2AhILI17jYVCJ7sZXxrpV6qI+L9lPEJwnj30lcTBxPkw+8G
         HfSyNGGK2njg7qlsKtHfKytNVwTebooxtFDQbDPyQxpypeMj4kRWvFeI1aHvnZ6NlYIX
         uJSrcrAwE89vmz7IKjCh9bRy0lGXZq71lEZz0=
In-Reply-To: <Pine.LNX.4.64.0807252109200.24751@localhost>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: karthikv@alum.dartmouth.org
Cc: Newbie List <linux-newbie@vger.kernel.org>

Have you tried out expect ?
http://en.wikipedia.org/wiki/Expect

On Sat, Jul 26, 2008 at 6:42 AM, Karthik Vishwanath
<karthikv@alum.dartmouth.org> wrote:
> Hello,
>
> I was wondering if there were any other ways of logging into a remote
> machine via ssh without typing in a passwd and without using the
> public/private key authorizations?
>
> I would be open to having the passwd stored in a temporary file on the
> client in order to enable such behavior. As usual, all input is appreciated.
>
>
> Thanks,
>
> -K
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>



-- 
"...For there is no freedom if it is not secured by the state; and
conversely, only a state which is controlled by free citizens can
offer them any reasonable security at all"

 -- Karl Popper in "Open Society and its Enemies,
 discussing balance of freedom and state control.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
