From: James Mohr <linux-newbie@jimmo.com>
Subject: Re: Question about "find -exec"
Date: Thu, 25 Jul 2002 08:05:02 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207250805.02603.linux-newbie@jimmo.com>
References: <Pine.LNX.4.21.0207250114250.2569-100000@hestia.rdrs.net>
Reply-To: linux-newbie@jimmo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0207250114250.2569-100000@hestia.rdrs.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thursday 25 July 2002 01:26, mailing-lists@xs4all.nl wrote:
> Hello,.....
>
> On Wed, 24 Jul 2002, James Mohr wrote:
> > On Wednesday 24 July 2002 09:07, Mike Castle wrote:
> > > In article <200207190752.38161.linux-newbie@jimmo.com>,
> > >
> > > James Mohr  <linux-newbie@jimmo.com> wrote:
> > > >You need to tell -exec which file to process. This is done with curly
> > > > braces:
> > > >
> > > >find /mnt/c/ -name *.snm -exec ls {} \;
> > > >
> > > >However, without the -exec, your command will simply list the files
> > > > anyway. I am assuming that this is just an example, and you would
> > > > want to do more than just list the file name. You could exand this
> > > > concept and use the curly
> > >
> > > Also, you should realize that for each file processed, there is the
> > > overhead of fork()/exec() calls.
> > >
> > > You would probably find something like:
> > >
> > > find /mnt/c -name '*.snm' | xargs -r ls -l
>
> Why preform an extra call to `xargs' if you can use the `-printf format'
> or `-ls' option with `find'? e.g
>     (find /mnt/c -name -regex ".*\.snm" -ls),
>     (find /mnt/c -name -regex ".*\.snm" -printf "%f %b\n")

You wouldn't. At least I wouldn't. As I said in my original answer:

"I am assuming that this is just an example, and you would want to do more 
than just list the file name."

I was simply trying to answer the question why the command was not working as 
expected and provide additional information on the use of find -exec. Mike 
was trying to explain why the find -exec is not always the best solution. I 
don't think either of us would use either of these just to list the file 
names.  

Actually, I often use ls -lR or just ls -R and pipe to grep looking for files. 
I don't think either way is intrinsically "better" (at least not in an 
absolute sense). 

Regards,

jimmo
-- 

---------------------------------------
"Be more concerned with your character than with your reputation. Your
character is what you really are while your reputation is merely what others
thing you are." -- John Wooden
---------------------------------------
Be sure to visit the Linux Tutorial:  http://www.linux-tutorial.info
---------------------------------------
NOTE: All messages sent to me in response to my posts to newsgroups or forums
are subject to reposting.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
