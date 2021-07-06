From: Alex Gaynor <alex.gaynor@gmail.com>
Subject: Re: Assisting with kernel Rust development
Date: Tue, 6 Jul 2021 13:23:03 -0400
Message-ID: <CAFRnB2WMuOjP0S5vvCa9w1Wi67K+3XcBsZ+QxxQ2gvo4-2mOEw@mail.gmail.com>
References: <f2f6fb7d-18cb-3256-b6c3-2d09905b02ca@student.cerritos.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=CEnGgs396px3IOlqYQv25XAQKPa7tvqxKzSEGryKztU=;
        b=nptC2NzvR5nIM0zHk9uWFjfy8uBWjRviFRtpdP7Tn73xuyx8UGBhbZVwvk4L7GOihJ
         aMXCyS1/7Bfn3DC1qBYwvuWgHTHwEhCYBcKgkL3xEM0RZWXw5TkXG6D9Wt5g/1YUsUV0
         rwUdLx3xqGDZE4RRJg0jAspDS57kg9vTyoecARKOgO3GL2h90yPNcBZvwWg/3zIljVnv
         iu3pRguo652YLcbBIDzDGPDhorGy7WIdBw/Jz5sYtxc8gvK8BemQpyAoMikHL3QOZHFI
         icGhsHnYGjAPP898Oo1nedQdhit9u252Z7uKuGlIlebgu9f3s9P+0KaoVroTxzDTx2vv
         K7NA==
In-Reply-To: <f2f6fb7d-18cb-3256-b6c3-2d09905b02ca@student.cerritos.edu>
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Amy Parker <apark0006@student.cerritos.edu>
Cc: linux-newbie@vger.kernel.org, rust-for-linux <rust-for-linux@vger.kernel.org>

Hi Amy,

Glad to hear you're interested! We've got a whole bunch of open bugs
on https://github.com/Rust-for-Linux/linux/issues, so that's always a
starting point for looking for things to work on.

Cheers,
Alex

On Tue, Jul 6, 2021 at 1:19 PM Amy Parker
<apark0006@student.cerritos.edu> wrote:
>
> Hello!
>
> My name is Amy Parker. You may have seen me on the kernel forums before u=
nder my previous email address <enbyamy@gmail.com>.
>
> It's been a while since I've attempted to contribute to the kernel, so I =
figured I'd post here. My previous attempt had been under Matthew Wilcox's =
direction to modify the DAX driver for NVDIMMs to use XA_ZERO_ENTRY to repr=
esent a zero page instead of DAX_ZERO_PAGE (allowing us to save a constant)=
 - but this failed since the ascending values of other flags conflicted wit=
h the value presented by XA_ZERO_ENTRY.
>
> I saw the recent patch sequence adding Rust support to the kernel. As a R=
ust developer, I figured I could get back into kernel development because o=
f this, and was wondering how I could help. Are there any active objectives=
 that need work?
>


--=20
All that is necessary for evil to succeed is for good people to do nothing.
