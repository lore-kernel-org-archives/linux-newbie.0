From: Arthur Nascimento <tureba@gmail.com>
Subject: Re: System stops because /var/log not found after moving to new partition
Date: Sun, 27 Feb 2005 12:45:44 -0300
Message-ID: <bb529e4050227074525bfadeb@mail.gmail.com>
References: <5.1.0.14.1.20050226185112.0c4db978@celine>
	 <000201c51c84$ba33e0b0$0db3fea9@kath.state.gov>
Reply-To: Arthur Nascimento <tureba@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <000201c51c84$ba33e0b0$0db3fea9@kath.state.gov>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: bhamal@wlink.com.np, linux-newbie@vger.kernel.org

Hi
Maybe you could try not to use symlinks for those folders. Keep them
as real folders and use 'mount --bind /var /mnt/hda5/var' instead
right after hda5 is mounted. Make similar commands for the other
folders and partitions.
I'm not sure it will work, but it is worth the shot.
Good luck!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
