From: Jim Reimer <jdr@wa5rrh.org>
Subject: Re: A few questions
Date: Mon, 02 Dec 2002 09:31:38 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DEB7CDA.7090809@wa5rrh.org>
References: <200212012032.22587.Adam@Luchjenbroers.com> <200212021626.08487.Adam@Luchjenbroers.com> <Pine.LNX.4.50.0212020923080.900-100000@athame.gmpexpress.net> <200212030023.37632.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212030023.37632.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Adam@Luchjenbroers.com
Cc: linux-newbie@vger.kernel.org

Adam Luchjenbroers wrote:
> On Monday 02 Dec 2002 11:56 pm, dashielljt wrote:
> 
>>You'd want to do more than one tar command of the form:
>>tar zcvf user1.tar.gz /home/user1/
>>tar zcvf user2.tar.gz /home/user2/
>>and so on.  You'd have to specify the path of user1.tar.gz like where it
>>was going to go and the same for the other archive files too.
> 
> 
> Home directories are on a seperate partition, what I want to back up is the 
> actual password/account list.
> 
> /etc/passwd seems to hold some of this, but it doesn't appear to show the 
> actual password hashes (unless cat is programmed to replace them all with a 
> 'x').

The 'x' indicates that you have passwords shadowed (they are held in a
seperate file readable only by root).

You can either unshadow the passwords while you do the backup
(man pwconv) or just backup the shadow file along with everything
else, which is probably less trouble.  You need to save these files:

/etc/passwd
/etc/group
/etc/shadow
/etc/gshadow

Since the shadow files are readable only by root, you'll obviously
have to be logged in as root to do the backup.

-jdr-





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
