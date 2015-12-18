From: Rajat Jain <rajatxjain@gmail.com>
Subject: Char device question: cdev_del()
Date: Fri, 18 Dec 2015 11:40:14 -0800
Message-ID: <CAA93t1qNPqMvSk9Cq4g5FzGOoD+r=SaiQ_dP9VwQ90ON5gXG2A@mail.gmail.com>
Reply-To: rajatxjain@gmail.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:date:message-id:subject:from:to:content-type;
        bh=hZ27d6xfpo2o7WwcZPPj1WzcA4I7b6tE/3N0WjbsyWY=;
        b=kKxzZ4aVKmQoZOk/FklgH2UE5A1cqZlA083jTdpfGbgJuemt7e6gAkEK5l3/pna2Mz
         gzsjJFVuGJiQ/sYwmRb5IMQcKZqnxVPuNXhyODpKNxhNkr8Zhnh5fZ7stxo4UAWday0v
         z1nSoKLuFu41vse/QandCrf0p+E509x91zprUjJ7gVGLyFiawy1hS7Zlqx28DBCLkBtu
         vj3N/GkyvN8Ff5H8cHCsJvEvS9hVWGFDg4qepwIJwZ50CDhdTfZO/8w+n0MTYKLnIWpY
         /Fqx29/zRegfXeBgoIArgBkmwavXtcHuqFG4qxYdI7h372tVeoye7N1mjpZdPjxGxJRc
         P4Nw==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi,

What happens if the driver calls cdev_del() while one of the character
device is being used (i.e. for. e.g. some process is in the middle of
the ioctl call for that character device).

Does the cdev_del() wait for that call to get completed? Is the driver
guaranteed that once the cdev_del() returns, none of the driver
character device operations are in use?

Thanks,

Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
