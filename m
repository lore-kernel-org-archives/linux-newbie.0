From: ramzez <r4mz3z@yahoo.es>
Subject: trivial question about script
Date: Sun, 9 Feb 2003 11:32:59 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302091133.07720.r4mz3z@yahoo.es>
Reply-To: r4mz3z@yahoo.es
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi friends...
  How do I can output each fiel below other in his column? I mean; when use 
somethin like: "cat /etc/fstab |  awk '{print $1"\t\t\t"$2"\t\t\t"$3}'" y 
recieve this output:
- ----real output -------------
LABEL=/                 /                       ext3
LABEL=/boot                     /boot                   ext3
none                    /dev/pts                        devpts
none                    /proc                   proc
none                    /dev/shm                        tmpfs
/dev/hda5                       swap                    swap
/dev/cdrom                      /mnt/cdrom                      iso9660
/dev/cdrom1                     /mnt/cdrom1                     iso9660
/dev/fd0                        /mnt/floppy                     auto
- -----end ------------------------------------
  But I hope to receive like this:
- ---desired output ------------------
LABEL=/                /                       ext3
LABEL=/boot          /boot                 ext3
none                     /dev/pts             devpts
none                     /proc                 proc
none                     /dev/shm            tmpfs
/dev/hda5              swap                 swap
/dev/cdrom            /mnt/cdrom          iso9660
/dev/cdrom1          /mnt/cdrom1         iso9660
/dev/fd0                /mnt/floppy          auto
- -- 
  Linux User Registered #232544
my GnuPG-key at www.keyserver.net
    --- rm -rf /bin/laden ---
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE+RjxxG3Fqyap52TERAmzoAJ9RN/1azFmLKOLseWCKwpNxRFRR7ACgk5Ng
c6zSQi6FYhCYVD8gnLaOf40=
=TNbP
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
