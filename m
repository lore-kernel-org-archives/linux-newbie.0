From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Xinetd compared to /etc/rc.d/init.d
Date: Wed, 18 Sep 2002 19:21:38 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0209181921380G.03392@unix.pa3gcu>
References: <008d01c25f3b$793e9950$64fea8c0@pkrausxp>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <008d01c25f3b$793e9950$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

On Wednesday 18 September 2002 17:47, Paul Kraus wrote:
> What is xinetd used for. I thought it was used to start services but
> have read on some newsgroups to avoid it. Does it work with the startup
> files in /etc/rc.d/init.d/ folder, is it actually a step up from those
> scripts and a possible replacement. How do the two work in relation to
> each other.

Ray has explained just about everything, however i think i can contirbute 
with examples of for's and against's.

Slackware being one of the few distro's that do not use SysV-init startup 
scripts, it uses inetd, inetd according to its man page is the internet 
``super-server''.

The user of a system which uses inetd has control over  "sockets" Ray said 
ports, now it all depends how one looks at it, Ray is correct in saying 
ports, but the real word is sockets, inetd listens, not the program, inetd 
listens for connections directed at certain sockets, it then (if confgured to 
do so) calls the appropriate program and that program then does the 
connection on a certain port.

Anyway, the point of my mail is not to discuss that but to explain the way 
both work in detailed configuration.

Inetd is configured by "one" file, /etc/inetd.conf in that file one defines 
which programs will answer connect requests for certain services, a typical 
line to define our ftp server would be;

ftp     stream  tcp     nowait  root    /usr/sbin/tcpd  proftpd

The ftp program does the rest, (one may configure the program via its own 
config file if applicable. In this case /etc/ftpaccess etc etc etc. 
Another file in /etc which concerns inetd is /etc/services, we define on 
which "port" a service will be provided.

Now if we take the ftp server on a system which use's xinetd /etc/inetd.conf 
is just a few lines, it "only defines" how many children xinetd may have 
default=60 and a few other things like where it can find configuration files.

We have a complete directory tree contining "many" files one for each service.
/etc/xinet.d/wu-ftp
Is then our equivilant.

# default: on
# description: The wu-ftpd FTP server serves FTP connections. It uses \
#       normal, unencrypted usernames and passwords for authentication.
service ftp
{
        socket_type             = stream
        wait                    = no
        user                    = root
        server                  = /usr/sbin/in.ftpd
        server_args             = -l -a
        log_on_success          += DURATION USERID
        log_on_failure          += USERID
        nice                    = 10
        disable                 = yes
}

It says basicly all the things our /etc/inetd.conf said on our other system.

Disadvantages are, one cant "simply" change a port number like one can with 
inetd, an example is "telnet" on slackware with inetd, if i want telnet to 
listen on port 24 i change the default port in /etc/services and rename it, 
create a matching entry in /etc/inetd.conf and a restart of the inetd process 
that is all that is needed, i have done it with redhat but i had to do several
more things than i did in slackware.

Now as to which one is best i am not going to comment on, what i will comment 
on is that i feel that inetd is more simple and IMHO more effective and esay 
to understand, now i cant say that for xinetd at all. (My personal option).

I could rant on and on, but i think you will see the differance between the 
two.
 
>
> On a side not what is up with all the filename.d's.

I rather think you mean directorys.d's dont you.?
The .d is normally for a daemon proces configuration just like xinetD.

>
> Thanks,
>
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
