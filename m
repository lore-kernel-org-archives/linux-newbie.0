From: Ray Olszewski <ray@comarre.com>
Subject: Re: remote login for Red Hat 7.2
Date: Mon, 10 Jun 2002 17:45:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020610173740.020b6960@celine>
References: <200206102237.g5AMbZC1006568@smtp-server1.tampabay.rr.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200206102237.g5AMbZC1006568@smtp-server1.tampabay.rr.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: jim@kc4hw.net, linux-newbie@vger.kernel.org

At 06:37 PM 6/10/02 -0400, Jim Johnson wrote:
>Hello Everyone,
>
>I would like to be able to remote login into my Red Hat 7.2 via ssh.  Don't
>really know where to start.

Well ... you need to install an ssh server on the RH system. That's 
probably a standard set of Red Hat RPMs. Then set up your init sequence so 
it starts the sshd server, preferably in standalone mode (that gives a 
quicker response than running it through inetd).

The usual ssh server for Linux is OpenSSH. Assuming you use that, RH 
probably follows the practice of putting its config files in /etc/ssh . 
Easiest way to get started is to set it up to use userid/password logins .. 
which you do with the line "PasswordAuthentication yes" in sshd_config.

Then run any decent ssh client (e.g., the OpenSSH one on Linux systems; 
puTTY on Windows systems). The first time you connect, the client should 
warn you that the system is not already known to it, so you'll have to 
confirm that you want to connect to it anyway.

Be sure you use an up-to-date version of OpenSSH. A security hole was found 
in OpenSSH about 18 months ago (or thereabouts; this is from memory), so 
older versions are vulnerable.

For more systematic instruction, I'm sure there is still an SSH HowTo. Try 
www.linuxdoc.org if you don't have it on your system in convenient form.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
