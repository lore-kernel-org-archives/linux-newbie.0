From: Ray Olszewski <ray@comarre.com>
Subject: Re: need direction - LAN browse troubleshooting
Date: Mon, 28 Apr 2003 21:58:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030428184326.01fa09c0@celine>
References: <5.1.0.14.1.20030428152449.02d2bb90@pop.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030428152449.02d2bb90@pop.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I don't have magic answers for you or even a pointer to a TS Guide (beyond 
the obvious -- the resources at a Samba mirror site, such as 
http://us3.samba.org/samba/samba.html). My impression is that *free* Samba 
resources (there are books one can buy) do not provide very good help for 
beginner questions or most smb.conf configuration troubleshooting. But I do 
have a couple of thoughts that might help.

First, how does the RH host resolve names? /etc/hosts, an on-host DNS 
server, a remote DNS server? The comment

>   -- I get an error "could not connect to host localhost"

makes me wonder if there is a problem with the resolver, or perhaps with 
the localhost entry in /etc/hosts .

Second, what does the smb.conf block for 'SharePt' actually say? And what 
is the exact exchange that you describe as "Network Path 'not there'."? 
This part sounds like you may have the "path = " entry in the smb.conf 
block wrong.

Third, did you create entries in the Samba password file, using 
"smbpasswd"? See its man page for the details. I'm guessing you did not; 
your password failures are consistent with skipping this step.

Fourth, regarding DHCP, the 'send host-name "name";' line is a standard 
option in DHCP, but I've never tried to use it to get a client to tell a 
server its name. Since the hostname info needs to be passed to a DNS 
resolver, not to an DHCP server, I doubt it will accomplish what you want 
(at least not with a Linux-based dhcpd server ... but I don't really know 
Windows well enough to be sure). In any case, trying to figure out how a 
vaguely described Debian system does something is a bit much to ask us ... 
ask the friend with the system how it gets its IP address and if, just 
perhaps, it gets its hostname from the DHCP server instead of the other way 
around. Or just try using the line ... it should not break anything, even 
if it is not helpful.

So ... I hope this is some help for starters. If you need to post again, 
please quote the relevant sections of smb.conf exactly (concerlaing only 
password info ... though offhand I cannot think of anyplace insmb.conf 
where password info appears).

At 04:25 PM 4/28/2003 -0600, James Ferris wrote:
>Hello list,
>Sorry to ask what should be a simple question. I simply have not yet found
>an answer, or a resource to solve this myself.
>(have looked thru RH docs, some samba docs, lists from both)
>It seems this should be easy from the docs I've read (do X + Y, and restart).
>I think what I need is a 'troubleshooting guide'.
>... with 'F' problems, look 'here' kind-of-thing.
>note I'm not a programmer - more of an experienced w2k user trying to learn
>
>So here's where I am:
>- new build of RedHat 8 with rhn updates, including samba
>- eth0 set to dhcp client with local domain hostname
>- iptables set to not start at boot
>- samba set to start at boot (RunLevel 3 & 5); smb.conf has:
>   -- w2k workgroup name; hostname shows in w2k Network browse list
>   -- some basic [global] permission settings
>   -- printer share for public and guest access; opens and viewable
>   -- homes share for users access; asks for auth but no-go
>   -- SharePt share for general access; does not accept access attempts
>   -- each share includes an entry with:
>      --- [name], comment, path, writable or readonly
>
>- when I try to browse the LAN via the RH box by Konqueror, LAN browser:
>   -- I get an error "could not connect to host localhost"
>
>So to get a better idea of samba, I examined a friends box that 'works'.
>(it's debian, but all basic samba settings should be (?) similar).  Still...
>
>I'm not able to connect to any of the shares showing on the RH box.
>(I've stopped and restarted smb service since my smb.conf changes.)
>'homes' shares ask for a password, but will not accept any of the set
>user passwords, and the 'SharePt' responds as Network Path 'not there'.
>Printer share is openable.
>___________________________________________________________
>Any thoughts for where to check would be very-much appreciated.
>___________________________________________________________
>
>aside: The RH host-name shows up in my w2k WINS server,
>... but the RH host-name does not show in my w2k dns server.
>The debian host-name shows in both WINS and dns servers under w2k.
>
>Is there some way to get RH 8 to automatically update its hostname
>  and IP into a w2k dns server? I found a reference in the debian system to
>'send host-name "name";' within file dhclient.conf. Is this what's making
>that work? Where might I insert such for a static IP workstation?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
