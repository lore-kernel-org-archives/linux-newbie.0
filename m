From: "Armen Kaleshian" <akaleshian@kriation.com>
Subject: RE: Kernel seems to be blocking messages
Date: Sat, 21 Feb 2004 10:11:35 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <S261571AbUBUPJD/20040221150903Z+23777@vger.kernel.org>
References: <1077324339.11565.7.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1077324339.11565.7.camel@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Paulo Jorge de Oliveira Cantante de Matos' <pocm@netvisao.pt>
Cc: 'Linux-Newbie' <linux-newbie@vger.kernel.org>

Paulo...

As Asterr suggested, you might have a iptable rules that are preventing data
to go through. To clear those rules, try the following:
Iptables -F
Iptables -X
Iptables -P INPUT ACCEPT
Iptables -P OUTPUT ACCEPT
Iptables -P FORWARD ACCEPT

The above wipes out any instance of any rules existing for the time being.
If you restart the server, they'll appear again. In that case, disable
iptables from starting by using chkconfig.

Good Luck! =D

--Armen 

: -----Original Message-----
: From: linux-admin-owner@vger.kernel.org 
: [mailto:linux-admin-owner@vger.kernel.org] On Behalf Of Paulo 
: Jorge de Oliveira Cantante de Matos
: Sent: Friday, 20 February, 2004 19:46
: To: linux-admin@vger.kernel.org; linux-newbie@vger.kernel.org
: Subject: Kernel seems to be blocking messages
: 
: Hi all,
: I have a server running 2.6.2-rc1, and I was happily 
: installing vpopmail and reading the vpopmail gentoo guide 
: (www.gentoo.org). Somehow (don't ask me
: why) every net connections seem to stop and get blocked. Now 
: I cannot make any socket connection. For example: 
: 
: # ping localhost
: PING descartes.geniousdomain (127.0.0.1) 56(84) bytes of data. 
: ping: sendmsg: Operation not permitted
: ...
: 
: Any ideas on how to unblock the situation? 
: 
: Cheers,
: -- 
: 
: Paulo J. Matos : pocm [_at_] mega . ist . utl . pt Instituto 
: Superior Tecnico - Lisbon Computer and Software Eng. - A.I.
:  - > http://mega.ist.utl.pt/~pocm
: ---
:         -> God had a deadline...
:                 So, he wrote it all in Lisp!
: 
: -
: To unsubscribe from this list: send the line "unsubscribe 
: linux-admin" in the body of a message to 
: majordomo@vger.kernel.org More majordomo info at  
: http://vger.kernel.org/majordomo-info.html
: 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
