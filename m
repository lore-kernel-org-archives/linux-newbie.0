From: tom arnall <kloro2006@gmail.com>
Subject: Re: system hangs momentarily every 4 mins 2 secs
Date: Sun, 27 Aug 2006 13:46:52 -0700
Message-ID: <200608271346.52659.kloro2006@gmail.com>
References: <20060817141403.10351.qmail@web81707.mail.mud.yahoo.com> <200608261255.33306.kloro2006@gmail.com> <20060827012228.5549032E99@kevin.kevino.org>
Reply-To: kloro2006@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060827012228.5549032E99@kevin.kevino.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: mike@kevino.org
Cc: linux-newbie@vger.kernel.org

On Saturday 26 August 2006 18:22, mike@kevino.org wrote:
> On Sat, 26 Aug 2006 12:55:33 -0700
>
> tom arnall <kloro2006@gmail.com> wrote:
> > My system hangs momentarily every 4 mins 2 secs. The event coincides with
> > a 'top' entry in which 'events/0' grabs 50-95% of cpu capacity. How can I
> > determine what is causing the event?
>
> First of all, I'm a newbie. But I'm interested in your subject.
> What about trying 'pstree'
>
> $ pstree -p
> <example output>
>
>  |--events/0(3)--|-aio/0(44)
>  |
>                  |-kacpid(5)
>                  |-kblockd/0(31)
>                  |-khelper(4)
>                  |-pdflush(41)
>                  |-pdflush(42)
>
> <example output>
>
> Then take the pid's and use top to monitor them.
>
> $ top -p3,44,5,31,4,41,42
>
> I don't know if the subtrees will show you anything, but maybe worth a try.
>
> Mike

-- 
thanks,

tom arnall
north spit, ca
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
