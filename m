From: Eve Atley <eatley@wow-corp.com>
Subject: Re: Connecting externally via SSH
Date: Tue, 24 Feb 2004 21:07:12 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BC616D80.1988%eatley@wow-corp.com>
References: <5.1.0.14.1.20040224160107.038640b8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040224160107.038640b8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Ray and others,

Sorry, I should have explained more thoroughly. My SSHD Daemon is already
installed, and I have had users generate key pairs using a combination of
OpenSSH for Windows and WinSCP3, in order to connect to our RH9 Linux server
from their home computers. I am not certain if the SSH daemon itself has a
key pair assigned to it - where might I check this and how?

In my testing, I ran everything internally only, assuming I could jump to
external connections later as I learned more about SSH. Therefore, I am able
to connect internally after setup using the aforementioned client, and after
some fanagling, getting key pairs to work. In this case, I set up the keys
in each user's directory, their default start directory.

What I didn't realize, and have since figured out as of my last email, is
that for external connections, /etc/hosts.allow must have entries for EACH
IP address for which we will open external secure shell access. IE, if my
external is 180.169.32.123, then an entry in hosts.allow would read as
SSHD: 180.169.32.123

So far so good. I am no longer being asked for a mystery password. However,
now I am being asked for my directory password; I want to be asked for my
key pair passphrase instead, and am never prompted for such. Where might I
find - or put, after creation if none exists - a key pair for this external
connection? Does this still reside in each user's directory? I am not sure
of this since the fingerprint is entirely different from the ones I
*thought* I knew. Where does this one come from?

Thanks,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
