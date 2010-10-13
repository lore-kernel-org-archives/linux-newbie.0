From: Joel Fernandes <agnel.joel@gmail.com>
Subject: Re: Manipulating Environment Variables of an Already running process
Date: Wed, 13 Oct 2010 17:40:45 -0500
Message-ID: <AANLkTinv0hs7uLa2c-NbgxQr9q4_RuG19rU27qXc60G=@mail.gmail.com>
References: <AANLkTikXvokjr9NGRRpPRQg0ci6wv+QCytR5_07x+Sag@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=qJQnNQuWJPOOipAtYb3MJBTJCgl9WVKKAVewY9j2Jnc=;
        b=hr5z/Qc29z45NcUmqFvbaUMaOax/CBtiMs9mwSNPYNCFFsLVRdo519GjgTbYEhSVzo
         cUqfTeFKqtNEuuL/FoEzLDqP3QpxtELWFydO1k7IHjJT1gtqAK7QBPldx29c+fPts1sg
         BgZlrUWCyAZ3C4sSJ8GkHjDOxN3RURZUP1GTA=
In-Reply-To: <AANLkTikXvokjr9NGRRpPRQg0ci6wv+QCytR5_07x+Sag@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Hatem Nassrat <hnassrat@gmail.com>
Cc: linux-newbie@vger.kernel.org

You could probably do it with ptrace(2) with request =3D PTRACE_POKEDAT=
A

thanks,
Joel

On Tue, Oct 12, 2010 at 3:05 PM, Hatem Nassrat <hnassrat@gmail.com> wro=
te:
> Is it possible to, manipulate an environment variables of an already
> running process (using a current linux distro, and not a self hacked
> kernel)?
>
> A usecase, changing the PS1 environement var of an already running
> bash process from another bash process.
>
> Any ideas?
>
> --
> Hatem Nassrat
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
