From: Luis Chamberlain <mcgrof-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: INVALID ELF STRUCTURES
Date: Tue, 21 Dec 2021 13:44:54 -0800
Message-ID: <YcJK1rPwQVu/pX+S@bombadil.infradead.org>
References: <CAD9KO1=gjhe1sc3MNyc3QawQgJAgwptFgsTZE903PCi3_DEyPg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-modules-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=g1DkaflNqTMfxBW6qRpkoRfxi8Y3JweVReOmR5YEtKQ=; b=WZU3q5IjyNqsUUkfGy2TwqqGkk
        I2pvMTNamhaxV1g9GOWAAtC04k5Td7tN8h3NmdaEnwMw3DykrIpeRjyUmqElwo4Cz1iZB1owVndni
        Bk1HwV8OryLhaFFA3UcFMf9qfqhK9AEOIrYBW25XnscPA8gpl4S13OH4SOMl3HuCi4e4FFI7j+5ht
        O+FZg3EWyZJlMmd7HjC0TfGNxf0UUFsTZUhqEntmSCnJv+/st63pi9BsRRbzEueVKI2L3HkQkuMYl
        ZuEUGWLvGWMcQBT3kBOWILToGdxouPtbxfMaK3nvCIu589QYawrnHY/+4JrQUH7wj4AtNjq4Szkfz
        /KTHSopA==;
Content-Disposition: inline
In-Reply-To: <CAD9KO1=gjhe1sc3MNyc3QawQgJAgwptFgsTZE903PCi3_DEyPg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: Luis Chamberlain <mcgrof-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eliyam Levy <eliyamlevy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-modules-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-newbie-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, Dec 21, 2021 at 11:54:09AM -0500, Eliyam Levy wrote:
> Hi,
> 
> I'm on Ubuntu 20.04 with kernel version 5.11 and I keep hitting the
> "Module has invalid ELF structures" error on a kernel module I'm
> building. I know this is related to the "harden ELF info handling"
> patch that was introduced. Are there any useful ways to debug this? Is
> there anything I should be mindful of when building the kernel module
> to avoid this?

Look for the already merged patch, "module: change to print useful
messages from elf_validity_check()".

$ git describe --contains 7fd982f394c42f25a73fe9dfbf1e6b11fa26b40a
v5.16-rc1~95^2    

  Luis
