From: Peter <pfheiss@philonline.com>
Subject: Re: At Loss with Mailing
Date: Tue, 08 Apr 2003 11:20:51 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304080321.h383Kpr03949@philonline.com>
References: <5.1.0.14.1.20030407094724.01e9bd88@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Mon, 07 Apr 2003 10:03:10 MST." 
 <5.1.0.14.1.20030407094724.01e9bd88@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks Ray!

ray@comarre.com said:
> So, based on this, here are several questions:
> 1. How does your system handle DNS? When you switch ISPs, does its
> choice  of DNS servers change? How does your ability to revolve the
> various hosts  (using host or nslookup or dig) change when you switch
> between ISPs? 

When I switch IPSs the switch is reflected in /etc/resolv.conf, the NDS 
changes there.

ray@comarre.com said:
> 2. How is kmail sending mail? Is it using the local MTA (sendmail, it
> seems  from your log entries) or is it somehow sending directly to a
> remote SMTP  server? If the second, does it change servers when the
> ISP changes, and if  yes, how? 

I have set kmail to use smtp for sending mail and have entered 
mail.philonline.com as the host. With kmail, therefore, I can only use this 
ISP to send mail. Using the alternate ISP I get:
It said: sorry, that domain isn't allowed to be relayed thru this MTA (#5.7.1) 
Normally I do not use kmail. I only checked it out this time when I noticed 
that in Slackware where I have not yet set-up exmh, kmail did send the mail. 
And as mentioned kmail leaves no messages in maillog.


ray@comarre.com said:
> 3. Did you make any system changes coincident to the start of the
> failures  2 weeks ago? Do you know if philonline changed anything at
> that time? 

I have not made any changes at all and calling philonline, they claim they did 
neither. They checked the @dw-world.de and claimed the mail is rejected 
because of SPAM. I checked with @dw-world.de they said neither me nor my ISP 
is on there banned list.

Here are the outputs of dig:

; <<>> DiG 9.2.1 <<>> -t MX @philonline.com vger.kernel.org
;; global options:  printcmd
;; Got answer:

;; ANSWER SECTION:
vger.kernel.org.        3539    IN      MX      10 vger.kernel.org.
vger.kernel.org.        3539    IN      MX      200 zeus.kernel.org.

;; AUTHORITY SECTION:
kernel.org.             3539    IN      NS      ns1.kernel.org.
kernel.org.             3539    IN      NS      ns2.q.p80.net.
kernel.org.             3539    IN      NS      ns2.kernel.org.
kernel.org.             3539    IN      NS      zenii.linux.org.uk.
kernel.org.             3539    IN      NS      ns.vger.kernel.org.


; <<>> DiG 9.2.1 <<>> -t MX @skyinet.net vger.kernel.org
;; global options:  printcmd
;; Got answer:

;; ANSWER SECTION:
vger.kernel.org.        3587    IN      MX      10 vger.kernel.org.
vger.kernel.org.        3587    IN      MX      200 zeus.kernel.org.

;; AUTHORITY SECTION:
kernel.org.             3587    IN      NS      ns.vger.kernel.org.
kernel.org.             3587    IN      NS      ns1.kernel.org.
kernel.org.             3587    IN      NS      ns2.q.p80.net.
kernel.org.             3587    IN      NS      ns2.kernel.org.
kernel.org.             3587    IN      NS      zenii.linux.org.uk.


; <<>> DiG 9.2.1 <<>> -t MX @philonline.com redhat.com
;; global options:  printcmd
;; Got answer:

;; ANSWER SECTION:
redhat.com.             580     IN      MX      20 mx2.redhat.com.
redhat.com.             580     IN      MX      10 mx1.redhat.com.

;; AUTHORITY SECTION:
redhat.com.             580     IN      NS      ns3.redhat.com.
redhat.com.             580     IN      NS      ns1.redhat.com.
redhat.com.             580     IN      NS      ns2.redhat.com.


; <<>> DiG 9.2.1 <<>> -t MX @skyinet.net redhat.com
;; global options:  printcmd
;; Got answer:

;; ANSWER SECTION:
redhat.com.             600     IN      MX      20 mx2.redhat.com.
redhat.com.             600     IN      MX      10 mx1.redhat.com.

;; AUTHORITY SECTION:
redhat.com.             600     IN      NS      ns1.redhat.com.
redhat.com.             600     IN      NS      ns2.redhat.com.
redhat.com.             600     IN      NS      ns3.redhat.com.

I would not know how to interpret this. I only see that there is a difference 
in sequence in the AUTHORITY SECTION.

Regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
