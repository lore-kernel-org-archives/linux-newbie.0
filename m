From: Matti Aarnio <matti.aarnio@zmailer.org>
Subject: Re: newbie
Date: Tue, 20 Aug 2002 10:32:36 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020820073236.GB32427@mea-ext.zmailer.org>
References: <20020819223018.79961.qmail@web40015.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020819223018.79961.qmail@web40015.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Venkat Raghu <venkatraghu2002@yahoo.com>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

On Mon, Aug 19, 2002 at 03:30:18PM -0700, Venkat Raghu wrote:
> Hi,
> 
> I have a bash script which modifies some environment
> variables and does some other housekeeping things.
> But problem is that when script finishes running,
> new values of environment variables are no longer
> visible in parent shell. So what should I do so that
> these new values are visible in parent. I don't want
> to run as ". file.sh". I have to run it as "file.sh"
> only.

  The things you do in child process environments are
  inheritable only to their childs, never to parent.
  If they were, there would be massive security problems,
  just to mention one consequence...

  If you want your current shell to get the new values,
  you have to do:  . file.sh

> Kindly mail me at venkatraghu2002@yahoo.com
> 
> Regards
> Venkat.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
