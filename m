From: Kev <savage-garden@hanikamail.com>
Subject: Re[2]: Linux Help
Date: Tue, 20 Jul 2004 00:08:00 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040720000602.4847.SAVAGE-GARDEN@hanikamail.com>
References: <20040719230846.4833.SAVAGE-GARDEN@hanikamail.com> <5.1.0.14.1.20040719101312.01fb9c70@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040719101312.01fb9c70@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hi Ray...

Thanks agane for the reply,

Relay mean to relay mail to my local email server that will be running
behind the gateway box. and to relay the email from the email server to
the internet as a smart host.



On Mon, 19 Jul 2004 10:59:38 -0700
Ray Olszewski <ray@comarre.com> wrote:

>--> Responses interspersed below.
>--> 
>--> At 11:09 PM 7/19/2004 +0600, Kev wrote:
>--> >Hi,
>--> >
>--> >I'm new to Linux, so i'm paling to install a gateway, with the following,
>--> >
>--> >1. Firewall
>--> >2. DNS
>--> >3. DHCP
>--> >4. SMTP (relay only)
>--> >5. Email Virus Scaning
>--> >6. Gray Listing (email)
>--> >7. NAT
>--> >8 Web Cashing
>--> >9. Web Based Configuration tool for all above.
>--> >
>--> >can any one tell me the best Linux version to use, (RedHat, Debian, etc)
>--> 
>--> No. Or, put another way, everyone can tell you the "best" distro to use, 
>--> but there will be no consensus among the answers.
>--> 
>--> One can easily argue pros and cons, strengths and weaknesses of particular 
>--> distros, but in the end they are all quite similar. I favor Debian myself, 
>--> but not because I have any illusion about its being "best" ... simply 
>--> because I've used it for years and am used to its particular quirks. The 
>--> folks who will recommend Slackware, or Red Hat, or Gentoo, or whatever, 
>--> really have the same sorts of biases.
>--> 
>--> If you are really a rank beginner, the "best" distro for you is the one 
>--> used by your friend who knows Linux and who will help you out when you get 
>--> in a jam.
>--> 
>--> Whatever distro you use, though, there are two constants:
>--> 
>--> 1. Use an up-to-date version.
>--> 2. Use whatever system it has for tracking and installing security updates.
>--> 
>--> There are specialized small distros, like LEAF (leaf.sourceforge.net) and 
>--> Coyote (DK the URL), that are designed with firewalling in mind. But you 
>--> want a bit more then they easilt provide ... your items 5, 6, 8, and maybe 
>--> 4 ... so you are right, I think, to be looking at full-strength distros.
>--> 
>--> One advantage I will note for Debian is that it is designed to be 
>--> distributed for free. That means that all users get good support as regards 
>--> security. (The concomitant downside is that there is no fallback to a paid 
>--> system of tech support if you run into bigger problems than you can get 
>--> free help for.) Commercial distros tend (not surprisingly) to offer better 
>--> support to paying customers than to freeloaders. So if anyone recommends a 
>--> commercial distro, you might want to ask if that person's experience is 
>--> with a free or a paid version of the distro.
>--> 
>--> >and the software i can use, like DNS = BIND, some thing simple to use...
>--> 
>--> OK. Item by item ...
>--> 
>--> >1. Firewall
>--> 
>--> Firewalling capability is built into the Linux kernel, using (for modern 
>--> kernels) iptables/netfilter. You may want a firewall configuration package 
>--> to make setting your firewall up easier. The best known, and probably 
>--> actual best, package is Shorewall (shorewall.sourceforge.net, I think, but 
>--> you can Google it if my memory is wrong).
>--> 
>--> >2. DNS
>--> 
>--> The standard package for DNS is BIND (named). Small distros use other, 
>--> specialized packages, like dnscache and tinydns, but they are sufficiently 
>--> quirky that you'd do better to stay with the standard on any full-size distro.
>--> 
>--> >3. DHCP
>--> 
>--> Server or client?
>--> 
>--> If you want the host to assign IP addresses, and related info, to its LAN 
>--> clients via DHCP, then it needs to run a server. dhcpd (DHCP Daemon) is the 
>--> standard one for full-size distros. There is also the smaller udhcpd.
>--> 
>--> If yout router needs to get its IP Address, and related info, from your ISP 
>--> using DHCP, then it needs to run a DHCP client. The common ones are pump, 
>--> dhclient, dhcpcd, and udhcpc ... I know of no particular favorite among them.
>--> 
>--> >4. SMTP (relay only)
>--> 
>--> People get into fights over this one. The standard smtp servers for Linux 
>--> distros include sendmail, smail, exim, and qmail. Debian uses exim by 
>--> default, and I find it works well for me. You should probably use whatever 
>--> your chosen distro's default is, or whatever your experienced friend uses.
>--> 
>--> I assume you mean by "relay only" then you expect the system to send mail, 
>--> but not to receive it. That is, you will get your e-mail via POP or IMAP. 
>--> If I've misunderstood you, you need to explain your meaning more clearly.
>--> 
>--> >5. Email Virus Scaning
>--> 
>--> I don't know of any packages that do this on Linux. Perhaps someone else 
>--> can jump in here. (I did just search the Debian packae list, and I saw 
>--> several possibilities there, but I'm not familiar with any of them in detail.)
>--> 
>--> In any case, what you do here depends on how you are receiving e-mail, and 
>--> your "relay only" comment above leave me uncertain about what you want to 
>--> accomplish.
>--> 
>--> >6. Gray Listing (email)
>--> 
>--> Please explain this one better. I'm used to grey lists working as part of 
>--> an smtp aemon setup. But if you get your e-mail via POP or IMAP (again, 
>--> that "relay only" comment leaves me at a loss), I don't know what you want 
>--> "grey listing" to do.
>--> 
>--> >7. NAT
>--> 
>--> This is part of the iptables/netfilter code in the kernel. Setup packages 
>--> like Shorewall will help you to configure it.
>--> 
>--> >8 Web Cashing
>--> 
>--> I'm a bit out of date here. The usual way to do this is with a caching (not 
>--> "cashing") proxy server like junkbuster or squid. There are a lot of them 
>--> around; squid is probably still the standard.
>--> 
>--> >9. Web Based Configuration tool for all above.
>--> 
>--> Good luck. One place where Linux is weak is on unified configuration 
>--> systems of any sort, and Web-based ones in partcular. In any case, 
>--> Web-based configuration requires Web access to the host, and you won't get 
>--> that out of the box with any distro ... they all require some console-based 
>--> setup, if only to assign the IP address to the internal interface.
>--> 
>--> >the Box will be a P2 with 256MB ram but if i can get it to work on a P1
>--> >166Mhz that would be great....
>--> 
>--> Probably a P1 will serve ... at least if we are talking about typical 
>--> connection speeds (an external interface between 100 Kbps and 1.5 Mbps) and 
>--> a 100 Mbps LAN. Here, for example, I've used a 486 with 32 MB RAM as 
>--> dedicated firewall for years. Just a NAT'ing firewall, though ... no SMTP 
>--> relay or Web caching.
>--> 
>--> Issues that might arise for you are:
>--> 
>--> 1. Complexity of the firewall ruleset. Longer rulesets take more time to 
>--> scan, and every packet has to traverse them until it matches a rule (or 
>--> reaches the end). This is likely to be a problem only with very complex 
>--> rulesets and high traffic volume.
>--> 
>--> 2. Size of the Web cache. More RAM will matter here more than CPU type and 
>--> speed. And if you're caching to a hard disk, you'll want one with DMA 
>--> support (standard on modern systems, but I don't know about old P1s).
>--> 
>--> 3. The SMTP stuff. Since I don't have a clear understanding of your setup 
>--> plans here, or the likely mail volumes, I cannot comment substantively.
>--> 
>--> 4. NAT overload. A firewall can NAT only so many active connections at a 
>--> time ... several thousand, but not an unlimited number. This is rarely a 
>--> problem, and when it is, better hardware doesn't solve it. But it is a 
>--> problem that Linux NAT'ing firewall users (actually, all NAT'ing firewall 
>--> users) occasionally run into.
>--> 
>--> 
>--> >thanks
>--> >Kev
>--> [advertising deleted]
>--> 
>--> 
>--> 
>--> -
>--> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>--> the body of a message to majordomo@vger.kernel.org
>--> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>--> Please read the FAQ at http://www.linux-learn.org/faqs
>--> 

------- 
Web Hosting at cheep price, stating at $1 per moth with your own domain, .COM, .NET, .LK, .ORG etc..
PHP, CGI, Perl, MySQL, Cpanel 9, POP3, POP3s, SMTP, IMAP, FTP,
http://www.orbitsl.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
