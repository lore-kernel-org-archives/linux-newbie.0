From: Ray Olszewski <ray@comarre.com>
Subject: Re: Connecting externally via SSH
Date: Tue, 24 Feb 2004 16:17:54 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040224160107.038640b8@celine>
References: <GNEPLLCIIBHICCOGIAKPOEFJCGAA.eatley@wow-corp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPOEFJCGAA.eatley@wow-corp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:19 PM 2/24/2004 -0800, Eve Atley wrote:

>Hi folks,
>
>I'm trying to open up our Linux box for external SSH connections. We have a
>shared T1 line with another company. I know the DNS addresses, and it was
>indicated I should peek at the /etc/hosts.allow and /etc/hosts.deny files.
>So... what next? Do I add our DNS address as an SSHD entry and all is hunky
>dory? I tried this using the DNS address, and the server keeps asking for
>some password along with my own password.

You are going to have to clarify the bit about "the server keeps asking for 
some password along with my own password". For that matter, I am not very 
sure of the "this" that you "tried", what you mean by "an SSHD entry", and 
what you mean by "our DNS address" (the server's IP address, perhaps?) either.

Do you mean that you ssh to the server from some remote host, and you get 
two different password queries? If so, is the one for "my own password" the 
first or the second of them? What is the EXACT wording of the other one?

To make the server available for ssh connections, you need to do, roughly, 
the following:

1. Install and run an sshd daemon. The sshd process itself needs a 
public-private keypair, and if the install process doesn't generate one 
automatically, you'll need to do that, using ssh-keygen .

2. Have entries in /etc/hosts.allow and /etc/hosts.deny that are consistent 
with the sshd daemon accepting connections from whatever host you want to 
connect from.

3. Make sure you have no firewalling in place (at either end) that blocks 
sshd connections from wherever you are connecting from to the server.

4. Decide on authentication scheme -- standard userid/password is the 
easiest -- and make sure sshd is set up to use it (in its config file, 
probably /etc/ssh/sshd_config).

5. Make a connection using a compatible ssh client (there are many). The 
first time you do this, you may get a warning from the client that this is 
a new host you are connecting to, so you can confirm that you want to make 
the connection. If you get that message -- it is asking you to accept 
receipt of the server's public key, in effect -- say YES. Then is should 
ask you for a regular Unix password.

Having written this outline, I surmise that you are getting the "new host" 
confirmation message in (5) and mistaking that confirmation request for a 
request for "some password". The other possibility is that you are using 
keypair authentication for users, and you are being asked for the 
passphrase that protects your (user-level) private key ... but that would 
be instead of, not in addition to, your regular password.

In any case, if this ramble doesn't give you the clue you need, please post 
a followup in which you descirbe things more completely and exactly, and 
I'll see if I can help.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
