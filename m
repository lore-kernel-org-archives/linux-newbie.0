From: Paul Brook <paul@codesourcery.com>
Subject: Re: [Qemu-devel] Transforming stdin and stdout pair into a socket
Date: Tue, 12 May 2009 00:07:23 +0100
Message-ID: <200905120007.24881.paul@codesourcery.com>
References: <8e04b5820905101119u39ae84bfp1bae24be6e057086@mail.gmail.com> <4A0813D6.3050609@codemonkey.ws> <8e04b5820905110632q1a3b9ad4u49d4f3208d994755@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <8e04b5820905110632q1a3b9ad4u49d4f3208d994755@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: qemu-devel@nongnu.org
Cc: "Ciprian Dorin, Craciun" <ciprian.craciun@gmail.com>, Anthony Liguori <anthony@codemonkey.ws>, nbd-general@lists.sourceforge.net, linux-newbie@vger.kernel.org

>     I've seen socat, and I could use it as you described. My only
> objection to this solution is that there is an unneeded process in the
> middle that just pipes data around...
>
>    (Instead of socat, I think it would be more efficient to just write
> a simple application that uses the "new" Linux syscall "splice" that
> I've just found by mistake yesterday...)

In that case you need to fix socat to use splice() when available. I have a 
hard time believing socat adds measurable overhead, especially if you're 
already tunnelling over ssh.

Paul
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
