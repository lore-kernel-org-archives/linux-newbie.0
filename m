From: Ray Olszewski <ray@comarre.com>
Subject: Re: Setting quota on user's home folders?
Date: Wed, 16 Mar 2005 16:31:33 -0800
Message-ID: <5.1.0.14.1.20050316155238.01f4fb98@celine>
References: <20050316021308.55227.qmail@web53610.mail.yahoo.com> <000001c52a82$0685e340$4f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <000001c52a82$0685e340$4f0aa8c0@lanadmin>
References: <20050316021308.55227.qmail@web53610.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:43 PM 3/16/2005 -0500, Eve Atley wrote:

>Is there a way to set a quota limit on user's home folders? EG. say I have
>/home/joe, /home/jane, and want to set it so they can have no more than 5GB
>in their folders?

The general answer is yes, and it's called ... wait for it ... quotas. The 
"yes" assumes you are using ext2 filesystems (probably ext3 works too, but 
I don't know that, and maybe other journaling filesystems like reiserfs).

For quotas to work, they have to be enabled in your kernel. Stock kernels 
usually do not include quota capability, so this means a local compile. (If 
you do it with "make menuconfig", quotas are the first choice in the File 
Systems submenu; if you edit .config by hand, you're looking for the line 
"# CONFIG_QUOTA is not set", which you'll change to "CONFIG_QUOTA=y".)

Once you have a kernel that supports quotas, you'll use the "quota" command 
to set actual quotas. Getting this command will probably mean downloading 
an RPM. And there are a few other details that are covered in the link below.

For more background on quotas, look here:

         http://www.asenec.com/quota.html

If all this sounds like too much trouble ... I don't know how comfortable 
you are with custom kernel compiles, say ... you might look for a simpler 
option. Whether some other approach will work depends on what your real 
requirements are.

For example, way back when I admin'd several Unix and Linux systems at a 
school, I just ran this command daily ...

         du -s /home/*  |  sort -nr

... to get a listing that started with the largest home directories. Then I 
told people whose directories were too big to cut back. Not ideal, but it 
was good enough, back in the days when I was sufficiently inexperienced 
that I didn't want to figure out how to enable quotas on Linux 1.something, 
HP-UX, and Solaris.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
