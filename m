From: SOTL <sotl155360@earthlink.net>
Subject: Re: Some users locked out of ssh and sftp?
Date: Sun, 13 Mar 2005 18:44:27 -0500
Message-ID: <200503131844.27848.sotl155360@earthlink.net>
References: <00be01c5268d$8e50a060$4f0aa8c0@lanadmin> <200503111827.51096.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <200503111827.51096.sotl155360@earthlink.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: eatley@wowcorp.com
Cc: eric@cisu.net, linux-newbie@vger.kernel.org

Hi All

I just spent half a day trying to fix this problem on the wrong computer. In 
justification of the time I was not using SSH directly but fish which uses 
SSH so I was not getting the error messages. Once I tried it connecting using 
SSH I fixed the problem in 5 minutes

In Linux SSH has a computer verification file for computers that have 
permission to log in at /home/<user>/.ssh/known_hosts:2

Explanation. I trashed the HD in one box [a test box with no data in it]. 
After re installation of HD, & configuration I found that I could SSH from 
the  new system but could not SSH from computers which had previously 
connected to the box with the new HD and system. 

I removed contents of above fine saved and was able to immediately log-in.

Hope this helps.

Frank

On Friday 11 March 2005 18:27, SOTL wrote:
> Had the same problem. My problem was solved when I install all the packages
> required for log in in all the computers. Suggest you check upor packages.
>
> PS All packages REQUIRED for login DO NOT have SSH as part of their name.
> Sorry can not remember what the additional names are.
>
> Frank
>
> On Friday 11 March 2005 17:56, Eve Atley wrote:
> > Ok, let me see if I can narrow the problem down a bit. Using the GUI
> > panel, I first create a user and password combination - let's use jean /
> > password1. This autocreates a user home directory (jean) and gives them a
> > bash shell (in this case).
> >
> > Then, via terminal, I 'useradd jean'. Following this, I 'smbpasswd -a
> > jean' and enter the password as prompted (twice). I return to the GUI and
> > uncheck all account expiration, just in case. I then set the user up with
> > access to the groups she should be permitted to (via the GUI).
> >
> > Now, I'm set up this way (eve), as is user Keyur (keyur) and Gagan
> > (gagan). I just set up Jean (jean) this way. Gagan and I can log in;
> > neither of us have a .ssh file located anywhere that we know of, for
> > ourselves. Keyur and Jean cannot, they are prompted for a session
> > password. Gagan and I never are prompted for such.
> >
> > We log in using Winscp3. Locally, as an example, we put in address
> > 192.168.10.x, port 22, username: jean, password: password1. For most of
> > us (I give only 3 examples here), the login is successful. No session
> > password needed.
> >
> > > (BTW, what do you mean by "network" username/password? Does this host
> >
> > We have it set up so that once the user is logged into his computer with
> > his/her user/pass combo, then accessing the network via samba uses the
> > same credentials. Therefore, user/pass combo is same on Windows logon as
> > well as Samba.
> >
> > > (Also, you say "most others" can log in. Is this just caution in
> > > reporting, or do you have other reports of unexplained failures?)
> >
> > See above.
> >
> > >Check the permissions on his/her ~/.ssh directory. If the permissions
> >
> > somehow
> >
> > Again, I see no .ssh directory, at least not for /home/keyur,
> > /home/gagan, /home/jean or /home/eve.
> >
> >
> > - Eve
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie"
> > in the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
