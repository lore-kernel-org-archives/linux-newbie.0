From: SOTL <sotl155360@earthlink.net>
Subject: Re: SOLVED: Some users locked out of ssh and sftp?
Date: Tue, 15 Mar 2005 08:49:15 -0500
Message-ID: <200503150849.16266.sotl155360@earthlink.net>
References: <20050315092308.63122.qmail@web53603.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <20050315092308.63122.qmail@web53603.mail.yahoo.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Donald Duckie <schipperke2000@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Tuesday 15 March 2005 04:23, Donald Duckie wrote:
> I got this error message as shown below  . . .
> How do I change the /root/.ssh/known_hosts file?
> It seems encrypted . . .
>
>
> @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
> @    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!
>    @
> @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
> IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
> Someone could be eavesdropping on you right now
> (man-in-the-middle attack)!
> It is also possible that the RSA host key has just
> been changed.
> The fingerprint for the RSA key sent by the remote
> host is
> 23:52:d4:e8:6a:75:72:ed:78:cb:31:1f:6a:ff:b4:ea.
> Please contact your system administrator.
> Add correct host key in /root/.ssh/known_hosts to get
> rid of this message.
> Offending key in /root/.ssh/known_hosts:7
> RSA host key for 192.168.0.1 has changed and you have
> requested strict checking.
> Host key verification failed.
>
I posted this to you several days ago.

The file you are seeking is located in the computer you are loging in F=
ROM not=20
the server.

Look at my previous message:

Hi All

I just spent half a day trying to fix this problem on the wrong compute=
r. In=20
justification of the time I was not using SSH directly but fish which u=
ses=20
SSH so I was not getting the error messages. Once I tried it connecting=
 using=20
SSH I fixed the problem in 5 minutes

In Linux SSH has a computer verification file for computers that have=20
permission to log in at /home/<user>/.ssh/known_hosts:2

Explanation. I trashed the HD in one box [a test box with no data in it=
].=20
After re installation of HD, & configuration I found that I could SSH f=
rom=20
the =A0new system but could not SSH from computers which had previously=
=20
connected to the box with the new HD and system.=20

I removed contents of above fine saved and was able to immediately log-=
in.

Hope this helps.

=46rank
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
