From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: recursively removing directories
Date: Sun, 30 Jun 2002 08:26:37 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206300826.37779.pa3gcu@zeelandnet.nl>
References: <20020629.214414.-257403.0.matthewstapleton@juno.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020629.214414.-257403.0.matthewstapleton@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Matthew Stapleton <matthewstapleton@juno.com>, linux-newbie@vger.kernel.org

On Sunday 30 June 2002 01:44, Matthew Stapleton wrote:
> How do I recursively remove all the subdirectories and contents of a
> particular directory in Linux? I know of 'rmdir', but this only works for
> empty directories.  I need something like DOS's 'deltree'.

You got 2 other answers to your question, one mentioned the need to be "very 
carefull" with rm, what they did not say is you can wipe out your complete 
system with rm and its options.
I would strongly advise you to use 'mc' the linux answer to 
midnight-commander.
You will have more oversight as to what you are deleting and will not be faced 
with the same problem we saw here a few days ago when someone asked how he 
could recover his system after he made a mistake with rm -rf.


>
> Thanks,
> Matthew Stapleton

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
