From: "Ola Theander" <ola.theander@otsystem.com>
Subject: HowTo: Set enviroment variables to be availiable during boot?
Date: Sat, 23 Nov 2002 14:16:15 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000001c292f2$83e57870$6efdfea9@c0002>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Dear subscribers.

On my Linux server I try to start the Tomcat server during boot. The
problem is that Tomcat requires the JAVA_HOME environment variable to be
set. I've tried to set this variable in the profile.local file but it
seems like this file isn't evaluated until I log on to the server.
Therefore I searched on the Internet and found that the environment
variable should probably be stored in the rc.local file which is
evaluated during boot. The problem is that my SuSE 8.1 installation
doesn't have an rc.local file, so I'm kind of stuck.

Any help on this matter would be greatly appreciated.

Kind regards, Ola Theander


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
