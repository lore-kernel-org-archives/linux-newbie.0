From: Ray Olszewski <ray@comarre.com>
Subject: Re: Graphical client for SSH2?
Date: Fri, 20 Feb 2004 16:29:56 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040220160443.01f9ede8@celine>
References: <5F84A09ECDD5D411973000508BE32470266025BA@exnyc07.lehman.com> <GNEPLLCIIBHICCOGIAKPOECFCGAA.eatley@wow-corp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPOECFCGAA.eatley@wow-corp.com>
References: <5F84A09ECDD5D411973000508BE32470266025BA@exnyc07.lehman.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie <linux-newbie@vger.kernel.org>

At 06:39 PM 2/20/2004 -0800, Eve Atley wrote:

>Hi,
>I currently have Cygwin running on my Windows laptop as a test enviroment to
>log in with SSH2. Now, sure you can run it from the command line in Cygwin,
>but these are users who aren't real savvy with technology, and probably
>won't have the patience to learn the CLI.
>
>Therefore, I tried installing WinSCP. While I am asked for my passphrase in
>Cygwin, the same doesn't occur in WinSCP - I can log in with my user
>password, even when I have loaded my public key.
>
>Anyone?

What's the question? Since this is a Linux list, not a Windows list, I'll 
start with the ssh server on the far end, presumably on a Linux machine.

An ssh server can permit multiple login options. The common Linux sshd uses 
a config file (probably /etc/ssh/sshd_config ... I don't know if this 
location is standard or varies from distro to distro) to specify what login 
options are available. Standard userid/password authentication is governed 
by this line:

         # To disable tunneled clear text passwords, change to no here!
         PasswordAuthentication yes

I believe public-key authentication is governed by these lines (which one 
matters depends on which type of key you are using):

         RSAAuthentication yes
         PubkeyAuthentication yes
         #AuthorizedKeysFile     %h/.ssh/authorized_keys

In your case, I expect that what is happening behind the curtain is that 
WinSCP tries to make a connection, does not find a private key to send, so 
asks the remote sshd to permit userid/password login ... which it does.

I looked quickly at the Website for WInSCP 
(http://winscp.sourceforge.net/eng/) and it says that WinSCP does support 
both RSA and DSA keys. it doesn't include the details of how to set up keys 
with this app ... only a general reference to using the keygen program from 
PuTTY ... but I imagine the docs that come with the WinSCP download have 
this information ... I would not assume WinSCP can find keyfiles generated 
by Cygwin apps.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
