From: Ray Olszewski <ray@comarre.com>
Subject: RE: Some users locked out of ssh and sftp?
Date: Mon, 14 Mar 2005 11:45:14 -0800
Message-ID: <5.1.0.14.1.20050314113523.01f4ed18@celine>
References: <5.1.0.14.1.20050311152407.01f6ecc0@celine> <00b801c528ca$745576b0$4f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <00b801c528ca$745576b0$4f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050311152407.01f6ecc0@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: eatley@wowcorp.com, linux-newbie@vger.kernel.org

I have to think about the message in general, but I wanted to correct one 
small error in your procedure right away.

At 02:17 PM 3/14/2005 -0500, Eve Atley wrote:
[...]
>So I tried copying one of these known_hosts to /home/keyur/.ssh/known_hosts.
>When I next try a locate for known_hosts, keyur never actually appears in
>the listing.

The command "locate" checks a database on the system and, by taking that 
approach, can respond VERY quickly. But the database is updated as a batch 
job ("updatedb") run through cron, usually whenever cron.daily runs 
(between 6 and 7 AM local time is typical ... mine runs at 6:25). So right 
after you make a change, it will not show up in "locate" searches.

To detect new files immediately after creation, use the "find" command 
instead. It actually walks the filesystem tree to find matches (so is 
slower but more current). Example usage:

         find / -name known_hosts

The man page is pretty clear on usage options; the only tricky thing is the 
need, sometimes, to enclose wildcarded filespecs in quotes.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
