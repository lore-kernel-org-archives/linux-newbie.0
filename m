From: "Adam Luchjenbroers" <adam@luchjenbroers.com>
Subject: skystar2\mt312 driver does not timeout under kernel 2.6.6
Date: Thu, 20 May 2004 0:35:47 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200405200435.AAA87673@m1.name2host.com>
Reply-To: "Adam Luchjenbroers" <adam@luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Under kernel 2.6.6 (modules dvbcore, mt312, skystar2 loaded) dvbtune enters
an infinite polling loop, as shown below.

polling....
Getting frontend event
FE_STATUS:
polling....
Getting frontend event
FE_STATUS: FE_HAS_CARRIER
polling....
Getting frontend event
FE_STATUS:
polling....
Getting frontend event
FE_STATUS: FE_HAS_CARRIER
polling....
Getting frontend event
...

Under 2.4.20 it simply pauses a few seconds then
receives an FE_TIMEDOUT and stops.

The following code has been identified in dvbtune, and it looks simply like
the driver is not responding with an FE_TIMEDOUT where perhaps it should be.

while (((event.status & FE_TIMEDOUT)==0) && ((event.status &
FE_HAS_LOCK)==0)) {
fprintf(stderr,"polling....\n");
if (poll(pfd,1,10000)){
if (pfd[0].revents & POLLIN){
fprintf(stderr,"Getting frontend event\n");
if ((status = ioctl(fd_frontend, FE_GET_EVENT, &event)) < 0){
if (errno != EOVERFLOW) {
perror("FE_GET_EVENT");
fprintf(stderr,"status = %d\n", status);
fprintf(stderr,"errno = %d\n", errno);
return -1;
}
else fprintf(stderr,"Overflow error, trying again (status = %d, errno =
%d)", status, errno);
}
}
print_status(stderr,event.status);
}
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
