From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: C compiler cannot create executables
Date: Sat, 22 Jun 2002 11:07:41 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020622110741.A1128@neutrino.particles.org>
References: <200206210859.g5L8xRc02729@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200206210859.g5L8xRc02729@philonline.com>; from pfheiss@philonline.com on Fri, Jun 21, 2002 at 04:59:27PM +0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

On Fri, Jun 21, 2002 at 04:59:27PM +0800, Peter wrote:
> Hi,
>  trying to configure a program I get the following message and .configure 
> stops.
> 
> checking for C compiler default output... configure: error: C compiler cannot 
> create executables
> 
> What has to be done to correct this?

Do this:

% echo "int main(void) { return 1; }" > foo.c && gcc foo.c -o foo ; ./foo

If you get any errors check for your gcc installation.

Elias  

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
