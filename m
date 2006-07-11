From: "Jesper Juhl" <jesper.juhl@gmail.com>
Subject: Re: versions numbering confusion - regarding development & stable versions
Date: Tue, 11 Jul 2006 11:36:49 +0200
Message-ID: <9a8748490607110236n7f9a27afpfa03d31c231e1f44@mail.gmail.com>
References: <292693080607102352y5830dd97we1a0a9591818fe53@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080607102352y5830dd97we1a0a9591818fe53@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org

On 11/07/06, Daniel Rodrick <daniel.rodrick@gmail.com> wrote:
> Hi list,
>
> I have a very basic query regarding the kernel versioning. I read that
> the even numbered versions (like 2.6.x) are stable versions, where as
> odd numbered versions (like 2.5.x) are development versions.
>
> I now see only 2.6.x versions coming out (on kernel.org). I don't see
> any development version 2.7.x coming out.
>
> Is currently all the development going on directly in the 2.6.x series
> and hence no 2.7.x series?
>
Correct.

The development model changed a while back. What happens now is this :

All development happens against the latest 2.6 kernel.
Intrusive changes or changes that need to stabilize first /need lots
of testing are merged into Andrew Mortons -mm tree and tested there.
Once a patch has proven itself in -mm it is merged into mainline.
Some patches go directly to mainline.

Whenever a new stable 2.6.x kernel is released a two week merge window
opens. During these two weeks new stuff is merged into Linus's git
tree and after two weeks the window closes and Linus releasesan -rc1
kernel. Then work is focused on stabilizing the first release
candidate and new release candidates are released regularly for as
long as Linus deems nessecary. Once the new kernel is regarded as
sufficiently stable a new 2.6.x kernel is released, a new merge windo
opens and the cycle repeats...

If critical bugs are discovered in the current stable 2.6.x kernel,
then a 2.6.x.y -stable kernel is released with a hotfix. This goes on
until the next 2.6.x kernel comes out.

For more information see these documents :

 http://sosdg.org/~coywolf/lxr/source/Documentation/stable_kernel_rules.txt

 http://sosdg.org/~coywolf/lxr/source/Documentation/applying-patches.txt
 (you can start reading at the "The 2.6.x kernels" section and skip
the first part of the document)

 http://sosdg.org/~coywolf/lxr/source/Documentation/HOWTO


-- 
Jesper Juhl <jesper.juhl@gmail.com>
Don't top-post  http://www.catb.org/~esr/jargon/html/T/top-post.html
Plain text mails only, please      http://www.expita.com/nomime.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
