From: Eliyam Levy <eliyamlevy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: INVALID ELF STRUCTURES
Date: Tue, 21 Dec 2021 11:54:09 -0500
Message-ID: <CAD9KO1=gjhe1sc3MNyc3QawQgJAgwptFgsTZE903PCi3_DEyPg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-modules-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=KCvhpJrfd87tVOnD0A4Hg8GgQh1m8G6/1P2LKgguHGE=;
        b=MW9wOHdyKM6/klOEZnSYPvxHeW2YexYs9lWW0cUw1Uo7Gc4B8XFcuPenoOysQJXO5M
         Od5GpIElrcjQfXxJhcGmBjyzazMf0u5bxPH5bPYYvYk8JFhUtY9eUH4TepaxMoQqXfXG
         DHqMnqAjSjuhNV2WQ0aMONZjkqZuBt4B63tL5Tq3/10+YfzVzFgGkz9dELGt97+UmU5i
         lGhLf+i7N9Ad7DF0QR2sERpjeKMr+rwNsKjSUSeERLVmsJI6YvmZVU6Ng5gzf8IWhpre
         chP65ewpC+XqgsfOSilNZcWoBrvYQi0ikLVLNVkrXrQO4rv9N2kYwgewFUWblEXF67MU
         NYbQ==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-modules-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-newbie-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi,

I'm on Ubuntu 20.04 with kernel version 5.11 and I keep hitting the
"Module has invalid ELF structures" error on a kernel module I'm
building. I know this is related to the "harden ELF info handling"
patch that was introduced. Are there any useful ways to debug this? Is
there anything I should be mindful of when building the kernel module
to avoid this?

Best,
Eliyam
