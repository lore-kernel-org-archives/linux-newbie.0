From: James Ferris <james_e_ferris@yahoo.ca>
Subject: Re: need direction - LAN browse troubleshooting
Date: Mon, 28 Apr 2003 22:15:27 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030428221018.02d2bb90@pop.mail.yahoo.com>
References: <5.1.0.14.1.20030428152449.02d2bb90@pop.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030428152449.02d2bb90@pop.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 28/04/2003 ; 04:25 PM, you wrote:
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

Hello list,
I've found the solution to the first part of my problem, but nothing more.
I'm now able to connect to the 'home' share as a user.
Missed the smbpasswd file. Like I said, must be a simple error.

Would still appreciate help with the rest of this. Even a 'try looking X'.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
