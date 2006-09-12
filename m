From: Ray Olszewski <ray@comarre.com>
Subject: Re: syntax problems with scp/rsync
Date: Mon, 11 Sep 2006 23:58:25 -0700
Message-ID: <45065A91.5000803@comarre.com>
References: <Pine.LNX.4.44.0609111110430.23966-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0609111110430.23966-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:
> Hello,
> 
> I seem to be having some difficulty using scp and rsync with the most
> basic commands giving me problems:
> 
> $ scp kvh1@godzilla.acpub.duke.edu:FN* .
> usage: scp [-1246BCpqrv] [-c cipher] [-F ssh_config] [-i identity_file]
>            [-l limit] [-o ssh_option] [-P port] [-S program]
>            [[user@]host1:]file1 [...] [[user@]host2:]file2
> 
> $ rsync kvh1@godzilla.acpub.duke.edu:FN* .
> rsync  version 2.6.6  protocol version 29
> ...
> rsync error: syntax or usage error (code 1) at main.c(897)
> 
> However, both commands (listed below) work fine: 
> $ scp t* kvh1@godzilla.acpub.duke.edu:
> $ rsync t* kvh1@godzilla.acpub.duke.edu:
> 
> 
> What is going on to cause the incorrect syntax in attempting to retrieve 
> files from the remote host? 

I don't use rsync here so focused on scp.

After verifying that I could use similar syntax here on my LAN with no 
errors, I went ahead and tried what you have above:

autovcr@firefly:~$ scp kvh1@godzilla.acpub.duke.edu:FN* .
The authenticity of host 'godzilla.acpub.duke.edu (152.3.233.25)' can't 
be established.
RSA key fingerprint is 04:53:67:16:20:e4:61:88:61:a8:25:f0:ff:54:7a:73.
Are you sure you want to continue connecting (yes/no)? no
Host key verification failed.

In other words, it worked fine for me. That's using OpenSSH 1:4.3p2-3
from Debian-Sid, from bash on a vt.

So I'd suspect one of three things:

	1. a non-printing character in the command string. Likely only if you 
didn't actually retype the "kvh1@godzilla.acpub.duke.edu:FN* ." part 
between the two tries.

	2. a problem with your shell.

	3. You are using a non-standard ssh/scp program. Unlikely, since the 
error response matches exactly.

Some programs fail if wildcards expand ambiguously in the pwd (find is 
notorious for that, as an example), but I tested that here and scp 
doesn't do that.

Sorry I can't offer more help.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
