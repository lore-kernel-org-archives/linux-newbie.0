From: Amy Parker <apark0006@student.cerritos.edu>
Subject: Re: Assisting with kernel Rust development
Date: Tue, 6 Jul 2021 10:39:56 -0700
Message-ID: <CAPOgqxGUYzqxqO83fMY04uL=fUr_OGm3X+s-fBSCQtU1x_ur_Q@mail.gmail.com>
References: <f2f6fb7d-18cb-3256-b6c3-2d09905b02ca@student.cerritos.edu> <CAFRnB2WMuOjP0S5vvCa9w1Wi67K+3XcBsZ+QxxQ2gvo4-2mOEw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-cerritos-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VECzJml5k1hAS1TG8HVcjo85RdI8u0a+vF3JU1M+Re8=;
        b=o4KJCtYhMqkrrzgdzNgeRRJS+pof3hn6ZCN20b5yf6WIIFEB8/LHAdeMbfa3mfb5Is
         7KTGu6SCPjJ808xgHZjX2Vbt0cJrfnf/csinvkbdOaNyTIuS95ilCpFWKuWdEBTpBYrE
         H3lElOc5svi/s6936DcMvdagVwz3Z8VIBsy+nCZSdJbxVgqvv33E76gaCrOwPeZx/Ljl
         reW9w7Yn3ZvbFB2UP4Yvj/bIYxrQtQjeztI3hvegtZtAgRBQ3/BS8ZaUZTOtTu+H1MDz
         Tpucl6qWxLqWSIwrkK6UY5Uo7e7x9kPKvARfXZ+9Yt4xhF+2L++AZtv2gf6YEQmt65dO
         g1rg==
In-Reply-To: <CAFRnB2WMuOjP0S5vvCa9w1Wi67K+3XcBsZ+QxxQ2gvo4-2mOEw@mail.gmail.com>
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alex Gaynor <alex.gaynor@gmail.com>
Cc: linux-newbie@vger.kernel.org, rust-for-linux <rust-for-linux@vger.kernel.org>

On Tue, Jul 6, 2021 at 10:23 AM Alex Gaynor <alex.gaynor@gmail.com> wrote:
>
> Hi Amy,
>
> Glad to hear you're interested! We've got a whole bunch of open bugs
> on https://github.com/Rust-for-Linux/linux/issues, so that's always a
> starting point for looking for things to work on.
>
> Cheers,
> Alex
>
> On Tue, Jul 6, 2021 at 1:19 PM Amy Parker
> <apark0006@student.cerritos.edu> wrote:
> >
> > Hello!
> >
> > My name is Amy Parker. You may have seen me on the kernel forums before=
 under my previous email address <enbyamy@gmail.com>.
> >
> > It's been a while since I've attempted to contribute to the kernel, so =
I figured I'd post here. My previous attempt had been under Matthew Wilcox'=
s direction to modify the DAX driver for NVDIMMs to use XA_ZERO_ENTRY to re=
present a zero page instead of DAX_ZERO_PAGE (allowing us to save a constan=
t) - but this failed since the ascending values of other flags conflicted w=
ith the value presented by XA_ZERO_ENTRY.
> >
> > I saw the recent patch sequence adding Rust support to the kernel. As a=
 Rust developer, I figured I could get back into kernel development because=
 of this, and was wondering how I could help. Are there any active objectiv=
es that need work?
> >
>
>
> --
> All that is necessary for evil to succeed is for good people to do nothin=
g.

Okay, I will!

Thank you.

    -amyip
