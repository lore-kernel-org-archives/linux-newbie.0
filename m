From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Change permissions of files to -xw +r for all other users
Date: Thu, 26 May 2005 20:36:46 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0505262026340.1242-100000@hestia>
References: <200505261844.36271.rhys@rhyshardwick.co.uk>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200505261844.36271.rhys@rhyshardwick.co.uk>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 26 May 2005, Rhys Hardwick wrote:

> Hey there,
> 
> I know this may be a case of RTM, but I am getting confused on it.
> 
> I want to change the permissions of all the files in my home folder to read 
> only for all users but myself, but to leave directories executable so that 
> they can be opened.  I have had difficulty doing this for only other users, 
> and have ended up -xw for myself as well, even tyring many variations of the 
> -o tag.  Any help would be fantastic.

What program are you talking about ? The program `find` perhaps ? Or using
just `chmod` ?

If you want to find any file in the current directory not owned by you
then:

~: find . -type f ! -user imyselfandi -maxdepth 1

The `!' exclamation mark means NOT .

If you want to change the permission of all files which were found by the
previous command you could tell find to exec chmod with the desired
permissions, for example:

~: find . -type f ! -user imyselfandi -maxdepth 1 -exec chmod 0744 '{}' \;

Or you could use a command line shell filter:

~: find . -type f ! -user imyselfandi -maxdepth 1 | while read FILE ; do
chmod 0744 ${FILE} ; done 

Note; the command is actualy one line, the format breaks because of the
text width in the e-mail message..

Hope this answers your question ...

> -- 
>  Rhys Hardwick

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
