From: Amin <raihan@citech-bd.com>
Subject: Re: Can't run links as non root user
Date: Mon, 26 May 2003 09:57:11 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030526095711.A849@localhost.localdomain>
References: <baptsp$gmm$1@main.gmane.org> <20030525191518.E7065@neutrino.particles.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030525191518.E7065@neutrino.particles.org>; from elathan@phys.uoa.gr on Sun, May 25, 2003 at 22:15:18 +0600
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; 
To: linux-newbie@vger.kernel.org

On May 25 22:15 2003 Elias Athanasopoulos wrote:
> On Sun, May 25, 2003 at 06:14:11PM +1000, Robert wrote:
> > When I try to run links in graphical mode I get the
> message:
> >
> > svgalib: cannot get I/O permissions
> 
> If you mean links, the console based Web browser, what
> version do you use?
> I am in 0.97 and there is no svgalib depedency and I'm
> curious to find out
> why links needs svgalib. Do they [links developers] have
> added any inline
> graphics support, such as the one w3m uses?

I don't know about dependencies, but I thought ``links'' 
had been superceded by ``elinks''?  In any case, doing an 
``rpm -q elinks'' gives me

	Elinks 0.3.2 - Lynx-like text WWW browser

Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
