From: Beolach <beolach@comcast.net>
Subject: Re: LILO configuration
Date: Thu, 04 Mar 2004 20:39:08 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4047F65C.2070502@comcast.net>
References: <3.0.16.20040304224818.480f894c@mail1.abac.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3.0.16.20040304224818.480f894c@mail1.abac.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: David Tiefenbrunn <davidtief@abac.com>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

David Tiefenbrunn wrote:
| Hi, all.
|
| I bought a (used) computer that came with SuSe linux installed.  I would
| like to set it up so I can boot either Linux or WIN98 (I know, yuck, but I
| still have some stuff that I need to use there)
|
| The HD is currently set up as one 20gig partition.  Can I split it or do I
| have to start all over from the beginning?  Of course, I don't have the
| linux install CD.
|

There is a program called GNU Parted that should allow you to resize the
partition, depending on what filesystem it was formatted with.  See it's
homepage at <http://www.gnu.org/software/parted/parted.html> for more
details.

After resizing the existing partition, create a new partition with the
free space & install windows there.  Note that installing windows will
overwrite the master boot record, making the Linux partition unbootable,
so make sure you have a boot floppy created before installing windows.
After installing windows, boot to Linux with the floppy boot disk, and
reconfigure /etc/lilo.conf to boot either the Linux or Windows
partition, and reinstall lilo on the MBR with /sbin/lilo.

Hope this helps,
Conway S. Smith
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFAR/ZcGL3AU+cCPDERAqusAJ4wlFJD7IoPp5nclH3z4u41jLIdKQCg6jth
aub9iUPTgm6jTQNjKfv8/j0=
=P0DO
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
