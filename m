From: "ogut" <frans@acbi.co.id>
Subject: RE: ADSL connection failed
Date: Mon, 21 Feb 2005 12:05:56 +0700
Message-ID: <000201c517d3$09632d00$6510ea0a@acbi.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: ray@comarre.com

# fx > and
# fx > how is that application sending it? And what does "222.154.xx.xx" 
# fx > refer to 
This is one of the actual rebounce report ( I tried sending from several
machines/senders/places ), from the system administrator : 

Your message did not reach some or all of the intended recipients.
      Subject:	
      Sent:	2/18/2005 12:30 PM
The following recipient(s) could not be reached:
      Ray Olszewski on 2/18/2005 12:30 PM
            450 4.7.1 <ray@comarre.com>... Relaying temporarily denied.
Cannot resolve PTR record for 222.124.57.160
      Linux newbie list on 2/18/2005 12:30 PM
            450 4.7.1 <linux-newbie@vger.kernel.org>... Relaying temporarily
denied. Cannot resolve PTR record for 222.124.57.160

( 222.124.xxx.xxx is off-LAN address )

# fx > ... what host has that IP address? And *where* does "it" say this ...
# fx > in an 
# fx > alert box that pops up? In a mail-bounce message? Someplace else? 
In a rebounce report. In other reports, it mentioned other IP address if I
sent to other name addresses.

# fx > With so little info, I can only guess really, but my best guess is 
# fx > that you 
# fx > are getting this message from your ISP's SMTP server in an app (a Web
# fx > browser, maybe ... I've never used Ximian Evolution and don't know 
# fx > what it 
# fx > is) that uses it directly to send e-mail. That SMTP server thinks you
# fx > are 
# fx > sending the e-mail from 222.154.xx.xx and it objects to relaying SMTP
# fx > traffic from that IP address. The "Can't resolve PTR record" piece 
# fx > means 
# fx > that the SMTP server is unable to do a reverse lookup of the address
# fx > (find 
# fx > the FQDN associated with it), which might be a DNS problem or might 
# fx > just 
# fx > mean that whoever is authoritative for that address hasn't created a
# fx > PTR 
# fx > record for it. (Try the command "host 222.154.xx.xx", with the real 
# fx > address 
I think you are right, but, I can't prove. Pinging to 222.124.57.160, just
didn't resolve the name. All sent, no loss. OK, but, no real name . . .


# fx > of course, and see it it resolves ... I'd try it here for you if you
# fx > hadn't 
# fx > elected to conceal the C and D quads in your report to the list.) 
I didn't conceal, it's just that I forgot ( remember, I was sending the
e-mail from outside machine in other place ). 

Regards, 


Frans t.
( this time, I'm sending via my windowz, with SMTP server authentification
checked in outlook )

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
