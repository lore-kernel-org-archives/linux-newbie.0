From: "Phillip Ames" <phillip.ames@uconn.edu>
Subject: Advice about packages
Date: Wed, 1 Oct 2003 17:18:28 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002901c38861$8ef4d0c0$0da16389@hyperion2>
Reply-To: <phillip.ames@uconn.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
I'm relatively new to using Linux on a daily basis and I was looking for
some information about what the "trends" are for production Linux
machines.  I installed RedHat 9, and have mucked about with rpm and
thought that packages were the greatest thing since sliced bread.
However, in the course of my reading and playing I've noticed that many
places recommend that the binary executables actually be compiled by
your machine (with all its kernel options, etc.) which is sensible.
Everything is well when I ./configure them and then "make install" but
if there is an update to a particular product it seems very inconvenient
to upgrade versions.  An example is the Apache httpd server - 1.3.xx
stores its served files in /var/www/html/ and the actual httpd daemon in
/usr/bin.  Apache 2, however, sets the DocumentRoot as
/usr/local/apache2/htdocs/ and the binaries in /usr/local/apache2/bin/.
I know it's just a simple matter of changing the DocumentRoot entry in
the httpd.conf file for served documents but is there a better/easier
way to go about upgrading the binaries?  Or is the de facto standard to
simply run ./configure --with-prefix=/usr/bin?  Any advice would be
appreciated.  Thanks,


-Phil


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
