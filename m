From: whitnl73@juno.com
Subject: Re: Delete certain text in multiple files (sed/awk/?)
Date: Sat, 4 Jan 2003 20:01:32 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030104.200530.134684296.1.whitnl73@juno.com>
References: <20030104212856.GB15354@neon.pearbough.net>
Mime-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="-1463810562-862586505-1041728492=:7843"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030104212856.GB15354@neon.pearbough.net>
List-Id: <linux-newbie.vger.kernel.org>
To: axel@pearbough.net
Cc: whitnl73@juno.com, linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
  Send mail to mime@docserver.cac.washington.edu for more info.

---1463810562-862586505-1041728492=:7843
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 4 Jan 2003 axel@pearbough.net wrote:

> Hi Lawson!
>
> On Sat, 04 Jan 2003, whitnl73@juno.com wrote:
>
> > This also seems to work:
> >
> > find -name 'Makefile'|xargs -i perl -pi -e 's/-Werror//g' {}
>
> First off thank you very much! It worked fine.
> But now I still want to understand it ;)
>
> What I dont understand is the:
>
> 1) "-i perl" option
> 	man page says:
> 	--replace[=replace-str], -i[replace-str]
>               Replace occurences of replace-str  in  the  initial
>               arguments  with  names  read  from  standard input.
>               Also, unquoted blanks do not  terminate  arguments.
>               If  replace-str  is  omitted,  it  defaults to "{}"
>               (like for `find -exec').  Implies -x and -l 1.

the first -i is an option to xargs, so it will run the command
perl -pi -e 's/-Werror//g' {}
once for each filename find found, with the filename substituted for the
{}
I should have said find -type f -name ... in case you had any
directories named Makefile.
>
>    As I understand this it calls perl and executes the regexp on a file.
> 	The explanation of the -i option in man page of xargs and that it
> 	calls perl doesnt fit together in my understanding.

calls perl once for each file.
>
> 2) "-pi" option
> 	"-p" runs the "program" first through the C preprocessor, right? But
> 	what for?

No, that is -P
-p couses perl to execute the command on each line of each named file.
I'll attach an excerpt from man perlrun that describes it.
> 	
> 	"-i" means that the file is edited in-place? What does that mean?

The changed file replaces the original file.
>
> 3) What is the {} for?
>
The default --replace-string for xargs.
>
> Thank you very much,
> Axel
>

--
---oops---

---1463810562-862586505-1041728492=:7843
Content-Type: TEXT/PLAIN; charset=US-ASCII; name=p
Content-Transfer-Encoding: BASE64
Content-ID: <Pine.LNX.4.21.0301042001320.7843@giftie.alien.org>
Content-Description: 
Content-Disposition: attachment; filename=p

ICAgICAgIC1wICAgY2F1c2VzIFBlcmwgdG8gYXNzdW1lIHRoZSBmb2xsb3dp
bmcgbG9vcCBhcm91bmQgeW91cg0KICAgICAgICAgICAgcHJvZ3JhbSwgd2hp
Y2ggbWFrZXMgaXQgaXRlcmF0ZSBvdmVyIGZpbGVuYW1lIGFyZ3UtDQogICAg
ICAgICAgICBtZW50cyBzb21ld2hhdCBsaWtlIHNlZDoNCg0KICAgICAgICAg
ICAgICBMSU5FOg0KICAgICAgICAgICAgICAgIHdoaWxlICg8Pikgew0KICAg
ICAgICAgICAgICAgICAgICAuLi4gICAgICAgICAgICAgIyB5b3VyIHByb2dy
YW0gZ29lcyBoZXJlDQogICAgICAgICAgICAgICAgfSBjb250aW51ZSB7DQog
ICAgICAgICAgICAgICAgICAgIHByaW50IG9yIGRpZSAiLXAgZGVzdGluYXRp
b246ICQhXG4iOw0KICAgICAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAg
SWYgYSBmaWxlIG5hbWVkIGJ5IGFuIGFyZ3VtZW50IGNhbm5vdCBiZSBvcGVu
ZWQgZm9yDQogICAgICAgICAgICBzb21lIHJlYXNvbiwgUGVybCB3YXJucyB5
b3UgYWJvdXQgaXQsIGFuZCBtb3ZlcyBvbiB0bw0KICAgICAgICAgICAgdGhl
IG5leHQgZmlsZS4gIE5vdGUgdGhhdCB0aGUgbGluZXMgYXJlIHByaW50ZWQg
YXV0by0NCiAgICAgICAgICAgIG1hdGljYWxseS4gIEFuIGVycm9yIG9jY3Vy
cmluZyBkdXJpbmcgcHJpbnRpbmcgaXMNCiAgICAgICAgICAgIHRyZWF0ZWQg
YXMgZmF0YWwuICBUbyBzdXBwcmVzcyBwcmludGluZyB1c2UgdGhlIC1uDQog
ICAgICAgICAgICBzd2l0Y2guICBBIC1wIG92ZXJyaWRlcyBhIC1uIHN3aXRj
aC4NCg0KICAgICAgICAgICAgYEJFR0lOJyBhbmQgYEVORCcgYmxvY2tzIG1h
eSBiZSB1c2VkIHRvIGNhcHR1cmUgY29uLQ0KICAgICAgICAgICAgdHJvbCBi
ZWZvcmUgb3IgYWZ0ZXIgdGhlIGltcGxpY2l0IGxvb3AsIGp1c3QgYXMgaW4N
CiAgICAgICAgICAgIGF3ay4NCg0KICAgICAgIC1QICAgY2F1c2VzIHlvdXIg
cHJvZ3JhbSB0byBiZSBydW4gdGhyb3VnaCB0aGUgQyBwcmVwcm8tDQogICAg
ICAgICAgICBjZXNzb3IgYmVmb3JlIGNvbXBpbGF0aW9uIGJ5IFBlcmwuICAo
QmVjYXVzZSBib3RoDQogICAgICAgICAgICBjb21tZW50cyBhbmQgY3BwIGRp
cmVjdGl2ZXMgYmVnaW4gd2l0aCB0aGUgIyBjaGFyYWMtDQogICAgICAgICAg
ICB0ZXIsIHlvdSBzaG91bGQgYXZvaWQgc3RhcnRpbmcgY29tbWVudHMgd2l0
aCBhbnkNCiAgICAgICAgICAgIHdvcmRzIHJlY29nbml6ZWQgYnkgdGhlIEMg
cHJlcHJvY2Vzc29yIHN1Y2ggYXMgImlmIiwNCg==
---1463810562-862586505-1041728492=:7843--


________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
