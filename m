From: "Jim Johnson" <jim@kc4hw.net>
Subject: Re: Network and Apache Question
Date: Wed, 22 May 2002 14:40:02 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205221839.g4MIdxpu028062@smtp-server2.tampabay.rr.com>
References: <5.1.0.14.1.20020522094113.02746ad0@celine>
Reply-To: jim@kc4hw.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0205221820151Q.27213@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello Everyone, 

With Ray's advise and help, I have got it working now.  I changed the 
httpd.conf for port 80 to 8080 and with the correct url 
http://www.kc4hw.homelinux.net:8080 is comes up fine.  

I would like to thank everyone for their help! 



On 22 May 02, at 18:20, Richard Adams wrote:

> On Wednesday 22 May 2002 16:44, Ray Olszewski wrote:
> > At 06:21 AM 5/22/02 -0400, Jim Johnson wrote:
> > [...]
> >
> > > > If the problem is with rr.com, try running the service on a high port
> > > > (8080 is a common choice) and port-forwarding that port to apache
> > > > (either port 80 or port 8080 internally, depending on how flexible
> > > > the Linksys router is about port forwarding).
> > >
> > >The Linksys allows port forwarding.  But this machine is enable as a DMZ
> > >Host in the router.
> > >
> > >So if I enabled port 8080 (or another port) in httpd.conf, then it would
> > >serve pages upon request to http://www.kc4hw.homelinux.net:8080?
> 
> Jim, i tryed the above URL, its working i got the standard apache "Its
> working page"..
> 
> >
> > It should, if the Linksys is not set to block port 8080 and if all the
> > other Apache settings are correct. At least the requests should *reach*
> > the Apache server, and if they fail, you can consult the Apache logs (and
> > this list) to figure out any remaining problems.
> >
> >
> >
> >
> > --
> > -----------------------------------------------"Never tell me the
> > odds!"--------------
> > Ray Olszewski					     -- Han Solo
> > Palo Alto, California, USA				ray@comarre.com
> > -------------------------------------------------------------------------
> > --
> >----------------
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie"
> > in the body of a message to majordomo@vger.kernel.org More majordomo info
> > at  http://vger.kernel.org/majordomo-info.html Please read the FAQ at
> > http://www.linux-learn.org/faqs
> 
> -- 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> 


Jim Johnson, Melbourne, Florida
jim@kc4hw.net - http://www.kc4hw.net
DXCluster RF Connection: 144.97
Telnet://kc4hw.homelinux.net:8000
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
