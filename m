From: "bj" <bhamal@wlink.com.np>
Subject: reconfiguring sound after kernel upgrade
Date: Mon, 28 Feb 2005 11:02:07 +0545
Message-ID: <000d01c51d55$1b6dbf10$0db3fea9@kath.state.gov>
Reply-To: <bhamal@wlink.com.np>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi !

I am using Red Hat 8.0 .

When I installed it , it had kernel 2.4.18-14 .

I downloaded and did a rpm -uvh .

Currently is has kernel version 2.4.20-30.8 legacy .

Now as I try to re-install sound by install the  following , I get library
error .

I have downloaded and unzipped the below files.


alsa-driver-1.0.8
alsa-lib-1.0.8
alsa-oss-1.0.8
alsa-tools-1.0.8
alsa-utils-1.0.8
oss



Now when I run make command it gives the following error.

cd alsa-driver-1.0.8
./configure -->no error
./make ----> the following error

make[1]: *** No rule to make target
`/lib/modules/2.4.18-14/build/include/linux/config.h', needed by
`memalloc.o'.  Stop.
make: *** [compile] Error 1


Running ls command on my /lib/modules gives the following :-
2.4.18-14
2.4.18-19.8.0uml
2.4.20-30.8.legacy
2.4.20-30.8.legacybigmem
2.4.20-30.8.legacyBOOT
2.4.20-30.8.legacysmp

I guess each directory is for the each kernel rpm I ran .

How do I point to make to the library of 2.3.20-30.8 legacy and successfully
install my alsa driver .

Thanks in advance.

cheers,
bj








-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
