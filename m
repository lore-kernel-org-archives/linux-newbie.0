From: Colin Charles <byte@aeon.com.my>
Subject: RE: Kernel 2.6.10 Can't Open Initial Console on FC3
Date: Mon, 03 Jan 2005 11:09:28 +0800
Message-ID: <1104721768.32006.180.camel@localhost.localdomain>
References: <3k77vr$fs05t3@mxip08a.cluster1.charter.net>
Reply-To: Development discussions related to Fedora Core <fedora-devel-list@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <fedora-devel-list-bounces@redhat.com>
In-Reply-To: <3k77vr$fs05t3@mxip08a.cluster1.charter.net>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <http://www.redhat.com/mailman/listinfo/fedora-devel-list>, 
	<mailto:fedora-devel-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/fedora-devel-list>
List-Post: <mailto:fedora-devel-list@redhat.com>
List-Help: <mailto:fedora-devel-list-request@redhat.com?subject=help>
List-Subscribe: <http://www.redhat.com/mailman/listinfo/fedora-devel-list>,
	<mailto:fedora-devel-list-request@redhat.com?subject=subscribe>
Sender: fedora-devel-list-bounces@redhat.com
Errors-To: fedora-devel-list-bounces@redhat.com
Content-Type: text/plain; charset="us-ascii"
To: Development discussions related to Fedora Core <fedora-devel-list@redhat.com>
Cc: mikeserv@bmts.com, Fedora List <fedora-list@redhat.com>, jwendel10@comcast.net, zaitcev@redhat.com, Linux Newbie <linux-newbie@vger.kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>

On Sat, 2005-01-01 at 10:05 -0600, Joseph D. Wagner wrote:
> They tell me there's a way to make it work without initrd, but it's
> ugly, messy, and not recommended:
> 
> http://fedora.redhat.com/docs/udev/
> 
> I haven't yet tested to see if it works with initrd and without
> support for hotplug devices, but from the documentation I've read my
> money is on no.

It does work. For quite a while on the PPC tree, we ended up doing some
manual MAKEDEVs to make it work. IIRC, booting with selinux=0 might have
been required as well

(this was in the pre-FC-3 rawhide days)
-- 
Colin Charles, byte@aeon.com.my
http://www.bytebot.net/
"First they ignore you, then they laugh at you, then they fight you, 
then you win." -- Mohandas Gandhi

-- 
fedora-devel-list mailing list
fedora-devel-list@redhat.com
http://www.redhat.com/mailman/listinfo/fedora-devel-list
