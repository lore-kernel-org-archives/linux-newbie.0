From: Bryan B Whitehead <driver@huey.jpl.nasa.gov>
Subject: Re: leading spaces in a text file.
Date: Fri, 23 Aug 2002 23:30:50 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.GSO.4.21.0208232327500.28938-100000@hooligan.jpl.nasa.gov>
References: <20020823.235123.-3790865.3.matthewstapleton@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020823.235123.-3790865.3.matthewstapleton@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Matthew Stapleton <matthewstapleton@juno.com>
Cc: ray@comarre.com, linux-newbie@vger.kernel.org

sed "s/^ *//" oldfilename > newfilename

Learn regular expressions. ;)


On Fri, 23 Aug 2002, Matthew Stapleton wrote:

> At the beginning of each line there are leading spaces that i wish to get
> rid of.
> 
> Something like the following:
> 
> <leading spaces><line content>
> <leading spaces><line content>
> <leading spaces><line content>
> <leading spaces><line content>
> 
> 
> Matthew Stapleton
> ====================================
> http://webpages.marshall.edu/~staple12
> Resistance is Futile!
> ====================================
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

Bryan Whitehead
SysAdmin - JPL - Interferometry Systems and Technology
Phone: 818 354 2903
driver@jpl.nasa.gov

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
