From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: Different root passwords
Date: Mon, 13 Dec 2004 14:10:08 -0800
Message-ID: <41BE1340.4020108@bcgreen.com>
References: <41B8B632.5060608@netual.pt> <20041209205720.GA20454@jbrown.mylinuxbox.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041209205720.GA20454@jbrown.mylinuxbox.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Jim C. Brown" <jbrown106@phreaker.net>, linux-newbie <linux-newbie@vger.kernel.org>

Jim C. Brown wrote:
> On Thu, Dec 09, 2004 at 08:31:46PM +0000, M?rio Gamito wrote:
> 
>>Hi,
>>
>>Is it possible to have in Linux different root passwords, for the same 
>>machine: one for accessing it inside the intranet and another for 
>>accessing through the internet ?
> 
> 
> I suppose one way to do this would be to set up 2 root accounts. This is done
> by adding another user, and then manually changing the uid in /etc/passwd for
> that user to 0. The 2 users (one of which will probably be called 'root') can
> have different passwords.

or: useradd -o -u0 secondroot

Far better than allowing users to remotely login as root is to
allow specific NON-root users to login and execute root-perm
commands via the sudo command functionality.

Generally, if you allow remote root logins, you should do so via
rsa key logins... This requires people doing remote logins to have
both an authorized ssh key and the the password to decrypt it.

When you have SSH keys, you can also permit that key to only execute
specific commands (which makes life much safer).
  ( `man sshd` for more info on the authorized_keys file)

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
