From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: Re: recovering files after rm
Date: Mon, 31 Mar 2003 23:07:59 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030331230759.D1195@neutrino.particles.org>
References: <20030331083633.29504.qmail@webmail35.rediffmail.com> <03033113143200.04308@unix.pa3gcu> <20030331162800.B1195@neutrino.particles.org> <03033119343201.04308@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <03033119343201.04308@unix.pa3gcu>; from pa3gcu@zeelandnet.nl on Mon, Mar 31, 2003 at 07:34:32PM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu <pa3gcu@zeelandnet.nl>
Cc: n mishra <mishra_nn@rediffmail.com>, linux-newbie@vger.kernel.org

On Mon, Mar 31, 2003 at 07:34:32PM +0000, pa3gcu wrote:
> On Monday 31 March 2003 13:28, Elias Athanasopoulos wrote:
> >
> > He asked for rm.
> 
> Yes indeed he did, i gave an answer concerning "files" deleted with the 'rm' 
> command. So what is your point,?????
> 
> Most all of the hits one gets in google from "deleted files" concerns files 
> deleted with the 'rm' command. Now what did i misread and where did i go 
> wrong.??? Please enlighten me.!!!!!

The google's hits you mention do what I said in my last paragraph (first
post).

Recall that I said: In *general* there is no way. Noone of these tools can
succeed in all cases. And this is becuase Unix - and Linux based OSes in
our case - are multi-user Operating Systems. A free i-node can be used by 
another user's process the next second you rm your file.

Elias

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
