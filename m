From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: recovering files after rm
Date: Mon, 31 Mar 2003 20:27:13 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03033120271307.04308@unix.pa3gcu>
References: <20030331083633.29504.qmail@webmail35.rediffmail.com> <03033119343201.04308@unix.pa3gcu> <20030331230759.D1195@neutrino.particles.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030331230759.D1195@neutrino.particles.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Elias Athanasopoulos <elathan@phys.uoa.gr>
Cc: n mishra <mishra_nn@rediffmail.com>, linux-newbie@vger.kernel.org

On Monday 31 March 2003 20:07, Elias Athanasopoulos wrote:
> On Mon, Mar 31, 2003 at 07:34:32PM +0000, pa3gcu wrote:
> > On Monday 31 March 2003 13:28, Elias Athanasopoulos wrote:
> > > He asked for rm.
> >
> > Yes indeed he did, i gave an answer concerning "files" deleted with the
> > 'rm' command. So what is your point,?????
> >
> > Most all of the hits one gets in google from "deleted files" concerns
> > files deleted with the 'rm' command. Now what did i misread and where did
> > i go wrong.??? Please enlighten me.!!!!!
>
> The google's hits you mention do what I said in my last paragraph (first
> post).
>
> Recall that I said: In *general* there is no way. Noone of these tools can
> succeed in all cases. And this is becuase Unix - and Linux based OSes in
> our case - are multi-user Operating Systems. A free i-node can be used by
> another user's process the next second you rm your file.

Even DOS or widows cannot always recover deleted files, one has to do quite 
complicated things, your approach saying in "General" there is no way is 
simply NOT true period. I still dont quite understand your origanal statement,
i quote;

" If you are lucky, you can dump using dd your partition's data in a file
and then search in the file for the missing data, but again this is not
trivial and doesn't work 100%. "

Just what do you mean dump with dd, i am not saying it is not a possability, 
but there are far more reliable ways of retriving deleted files out there you 
know and No i am not saying other ways are 100% but the chances are files 
"are" recoverable.
One point, the longer one waits before trying to recover deleted files the 
less chance there is of retriving them.

> Elias

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
