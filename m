From: ACario <acario@wanadoo.fr>
Subject: Re: Getting ls results in text file - Charset issue
Date: Wed, 22 Dec 2004 12:07:57 +0100
Message-ID: <cqbklt$tbl$1@sea.gmane.org>
References: <cqa80n$6q6$1@sea.gmane.org> <20041222165533.37332c64.qwms-avib@dea.spamcon.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041222165533.37332c64.qwms-avib@dea.spamcon.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org



qwms-avib@dea.spamcon.org wrote:
> ACario wrote:
> 
>>I'm running following command in a console:
>>ls > out.csv
>>Then I open the file "out.cvs" in vi and here is what I get
>>^[[00m^[[01;34mcxoffice^[[00m/
>>^[[01;34mDesktop^[[00m/
>>^[[01;34mGNUstep^[[00m/
>>^[[01;34mkde^[[00m/
>>^[[01;34mLogs^[[00m/
> 
> 
> It appears your ls is aliased to show colors.  
> You could unalias it or try the following:
> -----------------
> /bin/ls > out.csv
> -----------------

Exaclty! Thanks for the info.

Cheers

ACario

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
