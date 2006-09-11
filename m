From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: syntax problems with scp/rsync
Date: Mon, 11 Sep 2006 11:21:58 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0609111110430.23966-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I seem to be having some difficulty using scp and rsync with the most
basic commands giving me problems:

$ scp kvh1@godzilla.acpub.duke.edu:FN* .
usage: scp [-1246BCpqrv] [-c cipher] [-F ssh_config] [-i identity_file]
           [-l limit] [-o ssh_option] [-P port] [-S program]
           [[user@]host1:]file1 [...] [[user@]host2:]file2

$ rsync kvh1@godzilla.acpub.duke.edu:FN* .
rsync  version 2.6.6  protocol version 29
...
rsync error: syntax or usage error (code 1) at main.c(897)

However, both commands (listed below) work fine: 
$ scp t* kvh1@godzilla.acpub.duke.edu:
$ rsync t* kvh1@godzilla.acpub.duke.edu:


What is going on to cause the incorrect syntax in attempting to retrieve 
files from the remote host? 


Thanks,

-K

--------------
Never express yourself more clearly than you are able to think
- Niels Bohr

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
