From: qwms-avib@dea.spamcon.org
Subject: Re: Getting ls results in text file - Charset issue
Date: Wed, 22 Dec 2004 17:20:08 +1300
Message-ID: <20041222172008.57513cc0.qwms-avib@dea.spamcon.org>
References: <cqa80n$6q6$1@sea.gmane.org>
	<4b0d6e0d04122120055263ef80@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4b0d6e0d04122120055263ef80@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: jxhh-cw74@dea.spamcon.org
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

joy merwin monteiro wrote:
>
> these characters look more like ANSI escape sequences 
> (everything prefixed with an ESC (^[ ) ) 
>
> > ^[[00m^[[01;34mcxoffice^[[00m/
> > ^[[01;34mDesktop^[[00m/
> > ^[[01;34mGNUstep^[[00m/
> > ^[[01;34mkde^[[00m/
> > ^[[01;34mLogs^[[00m/

They are color codes.  34m = blue.  00m = off.

Cheers,
Steven

____________________________
http://www.basiclinux.com.ru
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
