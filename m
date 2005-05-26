From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Change permissions of files to -xw +r for all other users
Date: Thu, 26 May 2005 23:00:22 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0505262256060.1601-100000@hestia>
References: <200505262021.43348.rhys@rhyshardwick.co.uk>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200505262021.43348.rhys@rhyshardwick.co.uk>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 26 May 2005, Rhys Hardwick wrote:

> I was just using chmod.  This helps.  I can use find to only select files, not 
> directories, and change the permissions.  However, the real question is how 
> to make chmod not alter the permissions for the files owner, but to remove 
> write and exectute permissions for group and others.  


> That is the bit that has stumped me.  

Ok, I was just reading your message again.. and I got it this time, You
are mixing up symbolic mode with the octal mode.. oeff.. Sorry.. I'ts late
here already..  ;-)

the command:
~: chmod o-rwx todo.txt

Will remove rwx from the third field e.g. others or `the world' . The `-'
hyphen does not signal an option but stands for remove, instead of the
hyphen `-' you could als use the plus `+' sign to add rights.
The first character in this case is the `o' of others.. you could also use
the u etc.. that's explained in the manual page..

~: chmod u-rwx todo.txt

J.

> Cheers,
> 
> Rhys
> 
> 
> On Thursday 26 May 2005 19:36, J. wrote:
> > On Thu, 26 May 2005, Rhys Hardwick wrote:
> > > Hey there,
> > >
> > > I know this may be a case of RTM, but I am getting confused on it.
> > >
> > > I want to change the permissions of all the files in my home folder to
> > > read only for all users but myself, but to leave directories executable
> > > so that they can be opened.  I have had difficulty doing this for only
> > > other users, and have ended up -xw for myself as well, even tyring many
> > > variations of the -o tag.  Any help would be fantastic.
> >
> > What program are you talking about ? The program `find` perhaps ? Or using
> > just `chmod` ?
> >
> > If you want to find any file in the current directory not owned by you
> > then:
> >
> > ~: find . -type f ! -user imyselfandi -maxdepth 1
> >
> > The `!' exclamation mark means NOT .
> >
> > If you want to change the permission of all files which were found by the
> > previous command you could tell find to exec chmod with the desired
> > permissions, for example:
> >
> > ~: find . -type f ! -user imyselfandi -maxdepth 1 -exec chmod 0744 '{}' \;
> >
> > Or you could use a command line shell filter:
> >
> > ~: find . -type f ! -user imyselfandi -maxdepth 1 | while read FILE ; do
> > chmod 0744 ${FILE} ; done
> >
> > Note; the command is actualy one line, the format breaks because of the
> > text width in the e-mail message..
> >
> > Hope this answers your question ...
> >
> > > --
> > >  Rhys Hardwick
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
> 
> -- 
>  Rhys Hardwick
>  
>  -----------------------------------------------------
> | rhys@rhyshardwick.co.uk  |  www.rhyshardwick.co.uk  |
> | PGP-id - 0x63AB126D      |                          |
> |=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=|
> |       Windows: Just another pain in the glass.      | 
>  *****************************************************
> 
> 	
> 	
> 		
> ___________________________________________________________ 
> Yahoo! Messenger - NEW crystal clear PC to PC calling worldwide with voicemail http://uk.messenger.yahoo.com
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

Thursday, May 26 22:56:06



-- 
Don't worry Ma'am. We're university students, - we know what we're doing.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
