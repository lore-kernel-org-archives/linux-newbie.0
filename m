From: Gavin Laking <me@gavinlaking.co.uk>
Subject: Re: PPP connection TO ISP with PAP authentication
Date: Mon, 8 Jul 2002 01:07:27 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020708010727.5a1b2386.me@gavinlaking.co.uk>
References: <000001c22531$4bdfab50$8f6a07d5@prester>
Reply-To: me@gavinlaking.co.uk
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c22531$4bdfab50$8f6a07d5@prester>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Axel Siebenwirth <axel@hh59.org>
Cc: linux-newbie@vger.kernel.org

On Sat, 6 Jul 2002 23:08:36 +0200
"Axel Siebenwirth" <axel@hh59.org> wrote:

> So now I have asked myself what I would need to do to set up a PPP
> connection with PAP auth to my ISP "manually" i.e. without using any
> tools. I'd like to know what is involved in that. I know about
> pap-secrets file. I do not know how to dial, establish ppp connection,
> do PAP authentication.
> So I'd be really glad if someone could help in that direction. I also
> know C, so if I would need to write some program myself, I could do so.
> I just need to about the things that need to be done.

Hi Axel,

First of all, learn to like reading 'man pppd', it has loads of lovely
explanations for various options you'll find yourself either requiring,
using, or simply adding to your '/etc/ppp/options-isp' file that I'm going
to *try* to teach you how to build.

Right. I'm using Mandrake v8.1 and kernel 2.4.18, but those pieces of
information are hopefully irrelevant to you, since by following my
instructions we should get a connection working for you. At this point,
I'd like to request to other reading this that they comment, add notes and
correct me where required- my way of dialling in with this modem is not
perfect, as it doesn't connect first time everytime, but I'm not sure if
that is my fault or my ISPs.

Lets have a look in our '/etc/ppp' folder (cd /etc/ppp). There should be a
bunch of files in there, but we need to create a few more and edit some of
them too. First create an 'options-ispname' file and a 'chat-ispname'
file: (You my have to be root)

touch options-ispname;touch chat-ispname

Now, we need to edit those files to set some basic configuration and
options: (Use your favourite editor- mine is 'nano')

nano chat-ispname

ABORT   BUSY
ABORT   VOICE
ABORT   "NO CARRIER"
ABORT   "NO DIALTONE"
ABORT   "NO ANSWER"
SAY     "\n"
SAY     "Initializing Modem...\n\n"
""	ATZ
OK	"ATQ0 V1 E1 S0=0 &C1 &D2 S11=55 +FCLASS=0"
SAY     "Dialling ISPs PHONE NUMBER (ISPNAME)\n\n"
OK	ATDT00001234567
CONNECT ""
SAY     "Connecting to ISPNAME\n\n"

Where I have placed the OK, followed by the ATQ0 etc etc line, you need to
place the string that wvdial gives you for initialising your modem. I
included mine from my Thinkpad 600, yours may be different. The 'SAY'
commands just print pretty messages to your terminal or console- making
the dialling-in process "less-traumatic" :-) They are not required, but
they don't hurt. ISPNAME is just the name of your ISP which you may want
to include if you have more than one account.

Next, we shall edit the 'options-ispname' file:

nano options-ispname

connect "/usr/sbin/chat -v -f /etc/ppp/chat-ispname"
/dev/modem
noauth
defaultroute
lock
#deflate 11
bsdcomp 12
lcp-max-configure 2
ipcp-accept-local
ipcp-accept-remote
usepeerdns
crtscts
debug
name "your-username"

All of the options I have set in there are easily explained in 'man pppd',
please have a quick read as you might see te benefits or detriment of
these options on your connection. Having created and edited these two
files, we must now edit just three more. First we will edit 'pap-secrets'
and then 'chap-secrets'. I noticed in your original message that you are
using PAP to connect, but adding the configuration to CHAP doesn't hurt
just incase your ISP changes their mind later without telling you.

nano pap-secrets

# client	server	secret		IP addresses
usernamehere	*	passwordhere

Now, 'chap-secrets'

nano chap-secrets

# client	server	secret		IP addresses
usernamehere	*	passwordhere

After we have done that, we simply need to edit our 'resolv.conf' file, to
add a DNS server (or two) so that we can resolve our domain names. Please
ask your ISP for their nameserver IP addresses, or consult their
[presumably] online literature regarding this.

nano resolv.conf

nameserver xxx.yyy.zzz.aaa
nameserver xxx.yyy.zzz.aaa

Now, hopefully, if my mini-tutorial has been successful, we should be able
to test the dialup:

/usr/sbin/pppd file /etc/ppp/options-ispname -detach

If this dials in okay then jump for joys, we've won! But if it doesn't...
then please grab a coffee- you earned it anyway. Then write us
(linux-newbie@vger.kernel.org) a quick email with all the pertinent
details and hopefully, either me or somebody actually competent will help
you troubleshoot your connection.

There are other things you can do to make life easier for yourself if you
do get this working. Something I did was make a small one line script
containing the '/usr/blah blah' line above, and place it in a new
directory called 'connect' off my /home/myusername directory. The script
name was 'ispname' and I chmod'd it to 0755 so that it could be executed.
Now I simply type:

connect/ispname

And it dials my connection. Nothing like saving yourself some typing. :-)

Best Regards,

G

--
 Gavin Laking
 
 12:35am  up 7 days, 15:48,  6 users,  load average: 0.06, 0.08, 0.07

 http://www.gavinlaking.co.uk/
--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
