From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: AbiWord, Text and HTML??
Date: Mon, 13 Feb 2006 14:10:07 -0500
Message-ID: <20060213191007.GA7329@lnx2.w8mch.ampr.org>
References: <20060212181536.GA2276@lnx2.w8mch.ampr.org> <20060213110952.5cab507e.peterg@fishinternet.com.au>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20060213110952.5cab507e.peterg@fishinternet.com.au>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: peterg@fishinternet.com.au, ray@comarre.com
Cc: linux-newbie@vger.kernel.org


> On Sun, 12 Feb 2006 13:15:36 -0500
> Hal MacArgle <haltec@kvinet.com> wrote:
> 
> > 
> > Greetings: A problem importing a previously composed ascii text file
> > with jstar (joe) or, probably, any standard Linux text editor:
> > 
> > I had a single need to convert this to html and found that AbiWord
> > was quite easy: ((Note: But not completely satisfactory.))
> 
> [snip]


> What about "txt2html" ? I imagine it's available for Slackware... 

	I couldn't find it at w3.linuxpackages.net, but fetched the
strange, to me, tarball and flailed away not knowing a thing about
PERL and CPAN, modules..

	I, honestly, don't know what I did but I ended up with two
files: txt2html and TextToHTML.pm, both 0644, that worked perfectly
as long as I had the paths right... The latter file wants to be in
/HTML/ up from the current working directory..

	Invoking 'perl txt2html filename.txt > filename.html' does
the job flawlessly.. It even created a link when it saw
"http://............" And the html file size was realistic; only 4X
compared to 10X for the Abiword conversion..

	I'm happy.. Thanks Ray and Peter.. Now on to the next crisis,
eh??

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
