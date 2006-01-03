From: joy merwin monteiro <joy.merwin@gmail.com>
Subject: Re: making connexant BIPAC 7000 work on linux
Date: Tue, 3 Jan 2006 19:15:11 +0530
Message-ID: <4b0d6e0d0601030545g7d42fcc4n9e6c6fed6569398f@mail.gmail.com>
References: <287dc6990601022149n59c7166qd131fe16140744c5@mail.gmail.com>
	 <43BA4CAC.1050702@arrakis.es>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43BA4CAC.1050702@arrakis.es>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

RH9, by default does not have support for pppoe, if you are in india,
that is the most likely thing you will encounter.

you will need a kernel recompile and a few packages, people
with more experience will prolly be of more help :D

regards,

Joy

On 1/3/06, Andrew <ald2@arrakis.es> wrote:
> Neha Narkhede wrote:
>
> > Hi..
> >     I want to configure my ADSL USB (connexant BIPAC 7000) modem on
> > linux. Right now I have red hat 9(Shrike).
> > I would like to know if I should install another version of linux to
> > get this modem working on it.
> > Also, I dont know what to do to make the modem work.
> > Please help.
> >
> > Regards,
> > Neha
>
> It all depends on your kernel and your ISP.
>
> Perhaps the first step would be to check that your kernel supports:
>
> USB (almost certain)
> PPP (probable)
> PPPOE or PPOATM (according to what protocol your ISP uses)
> CXACRU (I think is the module for your modem)
>
> If not, you either recompile the kernel or install a new one. (I use the
> 2.6.13). 'uname -r' will tell you what yours is. I don't know redhat but
> you probably have a kernel config file in /boot which will tell you what
> support is configured in.
>
> Have you done any reading? Try:
>
> http://www.tldp.org/HOWTO/DSL-HOWTO
> http://accessrunner.sourceforge.net/ <http://accessrunner.sourceforge.net>
>
> When you have a bit more information available there is more chance of
> winning.
>
> Andrew
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>


--
Only time will tell, but are we listening ? :)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
