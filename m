From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Write to Windows partition from linux as ordinary user
Date: Thu, 7 Nov 2002 12:52:11 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021107125211.B1136@neutrino.particles.org>
References: <20021106225134.E1142@neutrino.particles.org> <20021106214656.16325.qmail@web13408.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20021106214656.16325.qmail@web13408.mail.yahoo.com>; from abhijit_v@yahoo.com on Wed, Nov 06, 2002 at 01:46:56PM -0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Abhijit Vijay <abhijit_v@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Wed, Nov 06, 2002 at 01:46:56PM -0800, Abhijit Vijay wrote:
> I have a Windows 98 partition mounted on linux. The
> directory, /win98 on which I have done the mount is
> owned by me, as an ordinary user. However, I find that
> I cannot write to the partition except as root. Is
> there any way out, so that I do not need to su before
> writing?

Read the man page of mount. Search for the options 'users' and 'rw'.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
