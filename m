From: Bhikkhu Mettavihari <linuxmet@col7.metta.lk>
Subject: Incoming Dial-up error
Date: Wed, 14 Apr 2004 07:38:09 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040414073809.A10979@col7.metta.lk>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Dear All,

I have a problem that has come up in my server.
I provide a small free popserver in Sri Lanka.

To give you a bit more details,
My server crassed with bad power supply.
I reinstalled on a new hard disk with the same version, 
recovered data on the old hard disk
copied over /home/* /etc/passwrd /etc/groups /etc/shadow
and it is up and working from the console.

Hardware: 
P-I (mail-server)
Cyclades 8 port board to handle modem lines.
4 external modems attached to port ttyC0, 1, 2, 3

Software:
RH 7.2
Qmail + Autoturn + pop
Cyclades driver instalation 

Problem:
Pop-user login via a modem and is disconnected 
with this error in my log file:
IPCP: timeout sending Config-Requests

pop + smtp is working via the Lan.
Where do I look for more details ?
Sorry for the large log file below.

I do not know what the error IPCP.... is

with metta
Mettavihari


/var/log/messages - error
Apr 13 06:15:01 narada pppd[4545]: Using interface ppp0
Apr 13 06:15:01 narada pppd[4545]: Connect: ppp0 <--> /dev/ttyC3
Apr 13 06:15:04 narada ppp(pam_unix)[4545]: session opened for user dileepa by LOGIN(uid=0)
Apr 13 06:15:04 narada pppd[4545]: user dileepa logged in
Apr 13 06:15:34 narada pppd[4545]: IPCP: timeout sending Config-Requests
                                   ^^^^
Apr 13 06:15:35 narada pppd[4545]: Hangup (SIGHUP)
Apr 13 06:15:35 narada pppd[4545]: Modem hangup
Apr 13 06:15:35 narada ppp(pam_unix)[4545]: session closed for user dileepa
Apr 13 06:15:35 narada pppd[4545]: Connection terminated.
Apr 13 06:15:35 narada pppd[4545]: Connect time 0.6 minutes.
Apr 13 06:15:35 narada pppd[4545]: Sent 310 bytes, received 0 bytes.
Apr 13 06:15:35 narada pppd[4545]: Exit.

/var/log/mgetty.tty3 - debug details of mgetty
-------------------

04/13 05:17:24 yC3   removing lock file
04/13 05:17:24 yC3  waiting...
04/13 06:14:40 yC3    select returned 1
04/13 06:14:40 yC3   checking lockfiles, locking the line
04/13 06:14:40 yC3   makelock(ttyC3) called
04/13 06:14:40 yC3   do_makelock: lock='/var/lock/LCK..ttyC3'
04/13 06:14:40 yC3   lock made
04/13 06:14:40 yC3  wfr: waiting for ``RING''
04/13 06:14:40 yC3   got: [0d][0a]RING[0d]
04/13 06:14:40 yC3    CND: RING
04/13 06:14:40 yC3   wfr: rc=0, drn=0
04/13 06:14:40 yC3    CND: check no: 'none'
04/13 06:14:40 yC3  send: ATA[0d]
04/13 06:14:40 yC3  waiting for ``CONNECT''
04/13 06:14:40 yC3   got: ATA[0d]
04/13 06:14:40 yC3    CND: OKATA[0d][0a]CONNECT ** found **
04/13 06:14:58 yC3  send: 
04/13 06:14:58 yC3  waiting for ``_''
04/13 06:14:58 yC3   got:  57600[0d]
04/13 06:14:58 yC3    CND: CONNECT 57600
04/13 06:14:58 yC3    CND: found: 57600[0a] ** found **
04/13 06:14:58 yC3   waiting for line to clear (VTIME), read: ~[ff]}#[c0]!}!} } 2}"}&} } } } }%}&M}!p[b4]}'}"}(}"}-}#}&}1}$}&N}3}7}!}6D[e8]%[b4][ed]Jp[b4][80][c6]}4,[be][ba]O} } } } =[84]~
04/13 06:14:59 yC3    looking for utmp entry... (my PID: 982)
04/13 06:14:59 yC3   utmp + wtmp entry made
04/13 06:14:59 yC3   tio_set_flow_control( HARD )
04/13 06:14:59 yC3   print welcome banner (/etc/issue)
04/13 06:14:59 yC3   getlogname (AUTO_PPP), read:~[ff]}#[c0]!
04/13 06:15:00 yC3   input finished with '\r', setting ICRNL ONLCR
04/13 06:15:00 yC3   tio_get_rs232_lines: status: RTS CTS DSR DTR DCD RI
04/13 06:15:00 yC3    login: use login config file /etc/mgetty+sendfax/login.config
04/13 06:15:00 yC3   match: user='/AutoPPP/', key=''
04/13 06:15:00 yC3   match: user='/AutoPPP/', key=''
04/13 06:15:00 yC3   match: user='/AutoPPP/', key='/AutoPPP/'*** hit!
04/13 06:15:00 yC3   calling login: cmd='/etc/ppp/ppplogin', argv[]='ppplogin debug'
04/13 06:15:00 ##### data dev=ttyC3, pid=982, caller='none', conn='57600', name='', cmd='/etc/ppp/ppplogin', user='/AutoPPP/'

04/13 06:15:00 yC3   setenv: 'CALLER_ID=none'
04/13 06:15:00 yC3   setenv: 'CALLED_ID='
04/13 06:15:00 yC3   setenv: 'CONNECT=57600'
04/13 06:15:00 yC3   setenv: 'DEVICE=ttyC3'
--
////re-initialsation of modem

04/13 06:15:35 yC3  mgetty: experimental test release 1.1.26-Apr16
04/13 06:15:35 yC3   mgetty.c compiled at Jul 24 2001, 18:57:33
04/13 06:15:35 yC3   user id: 0, parent pid: 1
04/13 06:15:35 yC3   reading configuration data for port 'ttyC3'
04/13 06:15:35 yC3   reading /etc/mgetty+sendfax/mgetty.config...
04/13 06:15:35 yC3   conf lib: read: 'debug 9'
04/13 06:15:35 yC3   conf lib: read: 'port ttyC0'
04/13 06:15:35 yC3   section: port ttyC0, ignore
04/13 06:15:35 yC3   conf lib: read: 'debug 9'
04/13 06:15:35 yC3   conf lib: read: 'data-only y'
04/13 06:15:35 yC3   conf lib: read: 'speed 38400'
04/13 06:15:35 yC3   conf lib: read: 'port ttyC1'
04/13 06:15:35 yC3   section: port ttyC1, ignore
04/13 06:15:35 yC3   conf lib: read: 'debug 9'
04/13 06:15:35 yC3   conf lib: read: 'data-only y'
04/13 06:15:35 yC3   conf lib: read: 'speed 57600'
04/13 06:15:35 yC3   conf lib: read: 'port ttyC2'
04/13 06:15:35 yC3   section: port ttyC2, ignore
04/13 06:15:35 yC3   conf lib: read: 'debug 9'
04/13 06:15:35 yC3   conf lib: read: 'data-only y'
04/13 06:15:35 yC3   conf lib: read: 'speed 57600'
04/13 06:15:35 yC3   conf lib: read: 'port ttyC3'
04/13 06:15:35 yC3   section: port ttyC3, **found**
04/13 06:15:35 yC3   conf lib: read: 'debug 9'
04/13 06:15:35 yC3   conf lib: read: 'data-only y'
04/13 06:15:35 yC3   conf lib: read: 'speed 57600'
04/13 06:15:35 yC3   key: 'speed', type=0, flags=3, data=57600
04/13 06:15:35 yC3   key: 'switchbd', type=0, flags=1, data=0
04/13 06:15:35 yC3   key: 'direct', type=3, flags=1, data=FALSE
04/13 06:15:35 yC3   key: 'blocking', type=3, flags=1, data=FALSE
04/13 06:15:35 yC3   key: 'port-owner', type=1, flags=1, data=uucp
04/13 06:15:35 yC3   key: 'port-group', type=1, flags=1, data=uucp
04/13 06:15:35 yC3   key: 'port-mode', type=0, flags=1, data=432
04/13 06:15:35 yC3   key: 'toggle-dtr', type=3, flags=1, data=TRUE
04/13 06:15:35 yC3   key: 'toggle-dtr-waittime', type=0, flags=1, data=500
04/13 06:15:35 yC3   key: 'need-dsr', type=3, flags=1, data=FALSE
04/13 06:15:35 yC3   key: 'data-only', type=3, flags=3, data=TRUE
04/13 06:15:35 yC3   key: 'fax-only', type=3, flags=1, data=FALSE
04/13 06:15:35 yC3   key: 'modem-type', type=1, flags=1, data=auto
04/13 06:15:35 yC3   key: 'modem-quirks', type=0, flags=0, data=(empty)
04/13 06:15:35 yC3   key: 'init-chat', type=2, flags=1, data= \dATQ0V1H0 OK ATS0=0Q0&D3&C1 OK 
04/13 06:15:35 yC3   key: 'force-init-chat', type=2, flags=1, data= \d\d\d\d+++\d\d\d
\dATQ0V1H0 OK 
04/13 06:15:35 yC3   key: 'post-init-chat', type=2, flags=0, data=(empty)
04/13 06:15:35 yC3   key: 'data-flow', type=4, flags=1, data=1
04/13 06:15:35 yC3   key: 'fax-send-flow', type=4, flags=1, data=7
04/13 06:15:35 yC3   key: 'fax-rec-flow', type=4, flags=1, data=7
04/13 06:15:35 yC3   key: 'modem-check-time', type=0, flags=1, data=3600
04/13 06:15:35 yC3   key: 'rings', type=0, flags=1, data=1
04/13 06:15:35 yC3   key: 'msn-list', type=2, flags=0, data=(empty)
04/13 06:15:35 yC3   key: 'get-cnd-chat', type=2, flags=0, data=(empty)
04/13 06:15:35 yC3   key: 'cnd-program', type=1, flags=0, data=(empty)
04/13 06:15:35 yC3   key: 'answer-chat', type=2, flags=1, data= ATA CONNECT \c 
04/13 06:15:35 yC3   key: 'answer-chat-timeout', type=0, flags=1, data=80
04/13 06:15:35 yC3   key: 'autobauding', type=3, flags=1, data=FALSE
04/13 06:15:35 yC3   key: 'ringback', type=3, flags=1, data=FALSE
04/13 06:15:35 yC3   key: 'ringback-time', type=0, flags=1, data=30
04/13 06:15:35 yC3   key: 'ignore-carrier', type=3, flags=1, data=FALSE
04/13 06:15:35 yC3   key: 'issue-file', type=1, flags=1, data=/etc/issue
04/13 06:15:35 yC3   key: 'prompt-waittime', type=0, flags=1, data=500
04/13 06:15:35 yC3   key: 'login-prompt', type=1, flags=1, data=@ login: 
04/13 06:15:35 yC3   key: 'login-time', type=0, flags=1, data=240
04/13 06:15:35 yC3   key: 'fido-send-emsi', type=3, flags=1, data=TRUE
04/13 06:15:35 yC3   key: 'login-conf-file', type=1, flags=1, data=login.config
04/13 06:15:35 yC3   key: 'fax-id', type=1, flags=1, data=49 115 xxxxxxxx
04/13 06:15:35 yC3   key: 'fax-min-speed', type=0, flags=1, data=0
04/13 06:15:35 yC3   key: 'fax-max-speed', type=0, flags=1, data=14400
04/13 06:15:35 yC3   key: 'fax-server-file', type=1, flags=0, data=(empty)
04/13 06:15:35 yC3   key: 'diskspace', type=0, flags=1, data=1024
04/13 06:15:35 yC3   key: 'notify', type=1, flags=1, data=faxadmin
04/13 06:15:35 yC3   key: 'fax-owner', type=1, flags=1, data=uucp
04/13 06:15:35 yC3   key: 'fax-group', type=1, flags=0, data=(empty)
04/13 06:15:35 yC3   key: 'fax-mode', type=0, flags=1, data=432
04/13 06:15:35 yC3   key: 'fax-spool-in', type=1, flags=1, data=/var/spool/fax/incoming:/tmp
04/13 06:15:35 yC3   key: 'debug', type=0, flags=2, data=9
04/13 06:15:35 yC3   key: 'statistics-chat', type=2, flags=0, data=(empty)
04/13 06:15:35 yC3   key: 'statistics-file', type=1, flags=0, data=(empty)
04/13 06:15:35 yC3   key: 'gettydefs', type=1, flags=1, data=n
04/13 06:15:35 yC3   key: 'term', type=1, flags=0, data=(empty)
04/13 06:15:35 yC3  check for lockfiles
04/13 06:15:35 yC3   checklock: no active process has lock, will remove
04/13 06:15:35 yC3  locking the line
04/13 06:15:35 yC3   makelock(ttyC3) called
04/13 06:15:35 yC3   do_makelock: lock='/var/lock/LCK..ttyC3'
04/13 06:15:35 yC3   lock made
04/13 06:15:35 yC3   tio_get_rs232_lines: status: RTS CTS DSR DTR RI
04/13 06:15:35 yC3  lowering DTR to reset Modem
04/13 06:15:36 yC3   tss: set speed to 57600 (10001)
04/13 06:15:36 yC3   tio_set_flow_control( HARD )
04/13 06:15:36 yC3   waiting for line to clear (VTIME), read: 
04/13 06:15:36 yC3  send: \dATQ0V1H0[0d]
04/13 06:15:37 yC3  waiting for ``OK''
04/13 06:15:37 yC3   got: [0d][0a]NO CARRIER
04/13 06:15:37 yC3  found action string: ``NO CARRIER''
04/13 06:15:37 yC3  init chat failed, exiting...: Invalid argument
04/13 06:15:37 ##### failed in mg_init_data, dev=ttyC3, pid=4560

04/13 06:15:37 yC3   removing lock file
--

I have checked the hardware and it is OK.
I can login to the Internet on all 4 lines and transfer mail normally.

/var/log/messages Dial out to my Linux server and getting mail is working.
------------------------------------------------------
Apr 13 07:55:31 narada pppd[6495]: pppd 2.4.1 started by root, uid 0
Apr 13 07:55:32 narada chat[6497]: send (AT^M)
Apr 13 07:55:33 narada chat[6497]: expect (OK)
Apr 13 07:55:33 narada chat[6497]: AT^M^M
Apr 13 07:55:33 narada chat[6497]: OK
Apr 13 07:55:33 narada chat[6497]:  -- got it 
Apr 13 07:55:33 narada chat[6499]: abort on (\nBUSY\r)
Apr 13 07:55:33 narada chat[6499]: abort on (\nNO ANSWER\r)
Apr 13 07:55:33 narada chat[6499]: abort on (\nRINGING\r\n\r\nRINGING\r)
Apr 13 07:55:33 narada chat[6499]: send (ATDT4719672^M)
Apr 13 07:55:33 narada chat[6499]: expect (CONNECT)
Apr 13 07:55:33 narada chat[6499]: ^M
Apr 13 07:56:01 narada chat[6499]: ATDT4719672^M^M
Apr 13 07:56:01 narada chat[6499]: CONNECT
Apr 13 07:56:01 narada chat[6499]:  -- got it 
Apr 13 07:56:01 narada chat[6499]: send (^M)
Apr 13 07:56:01 narada chat[6499]: expect (ogin:)
Apr 13 07:56:01 narada chat[6499]:  57600^M
Apr 13 07:56:02 narada chat[6499]: ^M
Apr 13 07:56:02 narada chat[6499]: ^MRed Hat Linux release 6.0 (Hedwig)
Apr 13 07:56:02 narada chat[6499]: ^MKernel 2.2.5-15 on an i586
Apr 13 07:56:02 narada chat[6499]: ^M
Apr 13 07:56:02 narada chat[6499]: ^M^M
Apr 13 07:56:02 narada chat[6499]: dhamma.metta.lk login:
Apr 13 07:56:02 narada chat[6499]:  -- got it 
Apr 13 07:56:02 narada chat[6499]: send (xxxxxx^M)
Apr 13 07:56:03 narada chat[6499]: expect (assword:)
Apr 13 07:56:03 narada chat[6499]:  col7-net^M
Apr 13 07:56:03 narada chat[6499]: Password:
Apr 13 07:56:03 narada chat[6499]:  -- got it 
Apr 13 07:56:03 narada chat[6499]: send (sxsxsxsxsx^M)
Apr 13 07:56:03 narada pppd[6495]: Serial connection established.
Apr 13 07:56:03 narada pppd[6495]: Using interface ppp0
Apr 13 07:56:03 narada pppd[6495]: Connect: ppp0 <--> /dev/ttyC1
Apr 13 07:56:06 narada pppd[6495]: not replacing existing default route to eth0 [172.16.1.2]
Apr 13 07:56:06 narada pppd[6495]: local  IP address 172.16.1.1
Apr 13 07:56:06 narada pppd[6495]: remote IP address 203.115.29.130
Apr 13 07:58:45 narada pppd[6495]: Terminating connection due to lack of activity.
Apr 13 07:58:45 narada pppd[6495]: Connection terminated.
Apr 13 07:58:45 narada pppd[6495]: Connect time 2.7 minutes.
Apr 13 07:58:45 narada pppd[6495]: Sent 37353 bytes, received 358055 bytes.
Apr 13 07:58:47 narada pppd[6495]: Exit.
--------------------------


----- End forwarded message -----

-- 
A saying of the Buddha from http://metta.lk/ 
A man who gives way to pleasure will be swept away by craving and his thoughts will make him suffer, like waves. 
Random Dhammapada Verse 339  
 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
