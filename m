From: John Porter <j.porter@starpower.net>
Subject: Re: [SLE] Changing Text
Date: Fri, 16 Aug 2002 17:49:05 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5236.48587191037$1029535169@news.gmane.org>
References: <200208161802.56488.James.Hatridge@epost.de>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200208161802.56488.James.Hatridge@epost.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: SuSE List <suse-linux-e@suse.com>, Linux Newbies <linux-newbie@vger.kernel.org>

James Hatridge wrote:
> Rates as of 2002.08.13 20:25:28 UTC (GMT). Base currency is EUR.
> USD United States Dollars                 1.01756               0.982743    
> GBP United Kingdom Pounds                 1.56297               0.639808    
> AUD Australia Dollars                     0.546791              1.82885     
> 
> What I want is this;
> 
> 2002.08.13 	USD 	1.01756  	0.982743    
> 2002.08.13 	GBP 	1.56297   	0.639808    
> 2002.08.13 	AUD 	0.546791  	1.82885     

Here's a nifty little perl script that does it.
(It's a filter: reads from stdin, writes to stdout.)


  my $date = '(no date)';
  $, = "\t";
  $\ = "\n";
  while (<>)
  {
    /^Rates as of (\S+)/
      ? $date = $1
      : print $date, /^(...).*(\d+\.\d+).*(\d+\.\d+)/
  }



-- 
John Douglas Porter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
