From: Jiahao XU <jiahaoxu28th@gmail.com>
Subject: Re: when is populate_rootfs called?
Date: Tue, 6 Apr 2021 18:55:52 +1000
Message-ID: <CALJHi=9Bu9XWB7VwmddYxffqY71OZ87Ft9PvePc70vsoRPWW2A@mail.gmail.com>
References: <CALJHi=-VQubwLxjObVmJjAh7A6j0Tm9h028kWcCfbHMo1mCnuQ@mail.gmail.com>
 <81674ed3ac96d789c69d6887ea2bfabb@kolabnow.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=jYAHHbfzQa1YDFz2gHcC+lpHacgiyiIR9bgXkhDtSBU=;
        b=cTvd9Keu3fJsEObEnmW3K7wS8Id3+XoGCsse/PMBbHPWyBBPz3OAeoGstkK4bGEGqz
         2rH0NZoJSb4vRP9bTTJc238NRTkTD9n6QtPbQieda1TA8mnZ7hmBqbVJ52Op/2+7RhY+
         5FRZBXkCPij/mvayvxVNB53RYrYqf9QUQ1Qg50cjsFwGpDyXlZRIeeP1596vwt8J/wi1
         nO3LntQKu9AlcTBCnptbsxXSyYslZGpFsAHIV/sHCyfi6AdvgizAzGbIAsCVNU3H44/c
         i27oPVkHC6mpxvLW1ckqKJCFpG5dIxfAu+SshduL8ch4hiLtyuYwVtX0O0HlTdsy1r4d
         ZmNg==
In-Reply-To: <81674ed3ac96d789c69d6887ea2bfabb@kolabnow.com>
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Cc: linux-newbie@vger.kernel.org

Hi Hubert

Thanks, I'll check it out and try using doxygen to build call graph on x86-=
6.

Regards, Jiahao XU

On Tue, Apr 6, 2021 at 6:06 PM Hubert CHAUMETTE
<hubert.chaumette@kolabnow.com> wrote:
>
> Le 04/04/2021 16:11, Jiahao XU a =C3=A9crit :
> > I am still totally confused at when is `populate_rootfs` called.
>
> Hi Jiahao,
> Have you tried enabling tracing (ftrace IIRC) in the kernel to figure
> that out?
> Another possibility is to use Doxygen's call graphs, make sure you
> restrict the
> analysis to minimum set of files you need (just remove all irrelevant
> architecures and driver directories from doxygen's input, or extract
> them from
> your kernel image. I did some experiments on the topic some time ago, it
> might
> prove useful:
> https://bitbucket.org/hchaumette/linux_doxygen/src/master/.
> Anyone interested can ask for access.)
>
> Hubert
