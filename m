From: Erik Jakobsen <erik@urbakken.dk>
Subject: Re: checkinstall.
Date: Fri, 20 Sep 2002 08:06:51 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020920080651.3e599fb3.erik@urbakken.dk>
References: <20020919165651.4703598f.erik@urbakken.dk>
	<02091919294303.18645@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02091919294303.18645@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thu, 19 Sep 2002 19:29:43 +0000
pa3gcu <pa3gcu@zeelandnet.nl> wrote:

> On Thursday 19 September 2002 14:56, Erik Jakobsen wrote:
> > Hi.
> >
> > I saw the nice software checkinstall, and would having it installed.
> >
> > Here is the first results.
> >
> > eurit:/home/erik/check/usr/local/sbin # ./checkinstall
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> 
> Thats your problem, run ./checkinstall in its source directory.

Ok.
 
> As far as i am concerned i will stick to what i wrote yesterday about using 
> /usr/local/* for software that i install, i know then where to look.
> 
> I find it misleading when one issues a normal nix command and gets confronted 
> with what Erik got, BUT we all know what the old saying is dont we, "RTFM" 
> even if the README is 21740 bytes long.

:-))
 
> Other than that it seems a handy program for those who want something to do 
> for them that they can really do themselfs.
> 
> >
> > checkinstall 1.5.3, Copyright 2001 Felipe Eduardo Sanchez Diaz Duran
> >            This software is released under the GNU GPL.
> >
> >
> > The package documentation directory ./doc-pak does not exist.
> > Should I create a default set of package docs?  [y]: y
> >
> > Preparing package documentation...OK
> >
> > *** No known documentation files were found. The new package
> > *** won't include a documentation directory.
> >
> > Installing with "make install"...
> >
> > ========================= Installation results ===========================
> > make: *** No rule to make target `install'.  Stop.
> >
> > ****  Installation failed. Aborting package creation.
> >
> > Cleaning up...OK
> >
> > Bye.
> >
> > What is to be done now ?.
> 
> Read the manual ?.

Yes and its friendly RTFM :-)
 
> -- 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
Med venlig hilsen - Best regards - VY73 de OZ4KK
Erik Jakobsen - erik@urbakken.dk
SuSE Linux 8.0 Professional
Registered as user #114875 with the Linux Counter.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
