From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Some users locked out of ssh and sftp?
Date: Mon, 14 Mar 2005 14:17:24 -0500
Message-ID: <00b801c528ca$745576b0$4f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050311152407.01f6ecc0@celine>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <5.1.0.14.1.20050311152407.01f6ecc0@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org


>>OK. Now though you call it a "session" password, this is just the same 
>>password that the user has already entered in as "password1" (from below).

>>Right?

In this case, they should be able to log in as, say, jean/password1, as you
say. This is entered in the winscp fields, ie. testing locally:

Host name: 192.168.10.57
Port number: 22
User name: jean
Password: password1

>         ... if I enter the correct password in the password box, then it 
>logs me on without any fuss.

Yeah, that's how it *should* work. :)

>         ... if I enter the wrong password in the password box, then it 
>prompts me for a password (probably what you call the "session" password).

Still prompts me, no matter what I enter, right or wrong. I have reset the
password on jean several times from the Linux box; then tried reentering the
password each time and it still prompts me and denies jean access.

>Second, still in Winscp3, check in Advanced Options->Authentication and 
>make sure "Attempt keyboard-active authentication" and "Respond with 
>password to the first prompt" are both checked.

Checked.

>Third, still in Winscp3, check in SSH to make sure SSH2 is the only, or at 
>least the preferred, connection method.

Done.

>Last, I've assumed we are in all cases talking about connecting to the same

>server. You certainly seem to be saying that.  But if I've misunderstood 
>you ... might there be differences in the sshd implementations between 
>servers that do and do not prompt for the password? This could be an SSH1 
>versus SSH2 issue, for example.

My test environment is simply this. I try connecting to a variety of users
from my own machine, to the same machine in all cases. So, whereas
credentials for 'eve' work, credentials for 'jean' do not. So it's not a
client setup issue that I can see...quite possibly the way the user is set
up, though how so I can't place.

Now, I wondered if the known_hosts problem may clue me into something, but
here's my return when I locate known_hosts:
/root/.ssh/known_hosts
/home/kolt/.ssh/known_hosts
/home/eve/.ssh/known_hosts
/home/edwin/.ssh/known_hosts
/home/navneet/.ssh/known_hosts
/home/vaibhav/.ssh/known_hosts

This translates to: eve can log in as well as all the others shown
here...but so can Gagan, who has no such known_hosts file.

So I tried copying one of these known_hosts to /home/keyur/.ssh/known_hosts.
When I next try a locate for known_hosts, keyur never actually appears in
the listing.
/root/.ssh/known_hosts
/home/kolt/.ssh/known_hosts
/home/eve/.ssh/known_hosts
/home/edwin/.ssh/known_hosts
/home/navneet/.ssh/known_hosts
/home/vaibhav/.ssh/known_hosts
...even when ensuring permissions are set the same as Gagan.


- Eve




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
