From: < (Ted Harding) Ted.Harding@nessie.mcc.ac.uk>
Subject: RE: [SLE] Changing Text
Date: Fri, 16 Aug 2002 21:36:07 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <XFMail.020816213607.Ted.Harding@nessie.mcc.ac.uk>
References: <200208161802.56488.James.Hatridge@epost.de>
Reply-To: Ted.Harding@nessie.mcc.ac.uk
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208161802.56488.James.Hatridge@epost.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Hatridge <James.Hatridge@epost.de>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>, SuSE List <suse-linux-e@suse.com>

On 16-Aug-02 James Hatridge wrote:
> Hi all..

Hi Jim..

> OK, here's the problem I've got a file that looks like this:
> 
> Rates as of 2002.08.13 20:25:28 UTC (GMT). Base currency is EUR.
> USD United States Dollars                 1.01756              
> 0.982743    
> GBP United Kingdom Pounds                 1.56297              
> 0.639808    
> AUD Australia Dollars                     0.546791              1.82885
> 
> What I want is this;
> 
> 2002.08.13    USD     1.01756         0.982743    
> 2002.08.13    GBP     1.56297         0.639808    
> 2002.08.13    AUD     0.546791        1.82885     

  cat file | awk '
      /Rates/{D=$4 ; next}
      {n=NF; print D "     " $1 "     " $(n-1) "     " $(n)} '

(or similar).

Cheers,
Ted.


--------------------------------------------------------------------
E-Mail: (Ted Harding) <Ted.Harding@nessie.mcc.ac.uk>
Fax-to-email: +44 (0)870 167 1972
Date: 16-Aug-02                                       Time: 21:36:07
------------------------------ XFMail ------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
