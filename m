From: Ray Olszewski <ray@comarre.com>
Subject: Re: Connecting externally via SSH
Date: Tue, 24 Feb 2004 18:37:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040224181150.02006ea8@celine>
References: <5.1.0.14.1.20040224160107.038640b8@celine> <BC616D80.1988%eatley@wow-corp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BC616D80.1988%eatley@wow-corp.com>
References: <5.1.0.14.1.20040224160107.038640b8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:07 PM 2/24/2004 -0500, Eve Atley wrote:
>Ray and others,
>
>Sorry, I should have explained more thoroughly. My SSHD Daemon is already
>installed, and I have had users generate key pairs using a combination of
>OpenSSH for Windows and WinSCP3, in order to connect to our RH9 Linux server
>from their home computers. I am not certain if the SSH daemon itself has a
>key pair assigned to it - where might I check this and how?

If you are getting ANY response from sshd, then you have a server keypair 
created. It is what sshd uses at the very beginning of the connection. But 
to answer the question you actually asked ... it should be wherver your 
other ssh config stuff is ... probably /etc/ssh/ ... in a pair called 
ssh_host_?sa_key and and ssh_host_?sa_key.pub (where ? = d or r, depending 
on which type of key you chose to use ... or you may have both).

>In my testing, I ran everything internally only, assuming I could jump to
>external connections later as I learned more about SSH. Therefore, I am able
>to connect internally after setup using the aforementioned client, and after
>some fanagling, getting key pairs to work. In this case, I set up the keys
>in each user's directory, their default start directory.

Does "internally" mean you are running an ssh client on the same server 
that runs sshd? Or does "internally" mean from a different host on the LAN 
(rather than the Internet)? In the rest of my response, I'll assume you 
meant the first.

>What I didn't realize, and have since figured out as of my last email, is
>that for external connections, /etc/hosts.allow must have entries for EACH
>IP address for which we will open external secure shell access. IE, if my
>external is 180.169.32.123, then an entry in hosts.allow would read as
>SSHD: 180.169.32.123

Nah. That's one way to do it, but not the best, unless you want to allow 
connections from a very small number of machines. Read "man 5 hosts_access" 
for the other options. Personally, I wouldn't use hosts control for ssh; 
I'd use SSHD: ALL in hosts.allow .

>So far so good. I am no longer being asked for a mystery password. However,
>now I am being asked for my directory password; I want to be asked for my
>key pair passphrase instead, and am never prompted for such.

When you say "directory password", do you mean your normal Unix password? 
(If not, what do you mean?) Below, I assume this is the case.

>Where might I
>find - or put, after creation if none exists - a key pair for this external
>connection? Does this still reside in each user's directory?

Yes, unless you change the sshd config file to something different (see one 
of the excerpts below). That is, you put the public-key half in the file 
$HOME/.ssh/authorized_keys; the private half stays on the client end (and I 
believe that usual practice is to generate these keypairs on the clients, 
then put only the public-key halves on the server.)

>I am not sure
>of this since the fingerprint is entirely different from the ones I
>*thought* I knew. Where does this one come from?

I don't know what this means ... neither these two sentences as a whole nor 
the specific "this" in the second one.

In the sshd config file (probably /etc/ssh/sshd_config), what 
authentication options did you enable? To do passphrase authentication (not 
the right technical term, BTW), you need to enable (say "yes" for) one or 
both of these:

         RSAAuthentication yes
         PubkeyAuthentication yes
         #AuthorizedKeysFile     %h/.ssh/authorized_keys

Similarly, the ssh client needs to have one or both of these enabled in 
(probably) /etc/ssh/ssh_config . If both sides do not have a usable 
key-based authentication method enabled and keys present, and the server 
does allow userid/password authentication via --

         # To disable tunneled clear text passwords, change to no here!
         PasswordAuthentication yes

-- then authentication will failover to userid/password.

The man pages for ssh and sshd cover all of this stuff pretty well, BTW. I 
referred to them a couple of times in writing this, to get details I tend 
to forget, like exact file names, right.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
