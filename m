From: G Anna <drguruolai@eth.net>
Subject: Re: Make a phone call (repeat)
Date: 19 May 2002 09:54:54 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m33cwoahnt.fsf@wobble.eth.net>
References: <2.2.32.20020518165939.03d27178@[192.168.1.23]>
Reply-To: anna7sept@linuxmail.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2.2.32.20020518165939.03d27178@[192.168.1.23]>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


> Date: Sat, 18 May 2002 09:59:39 -0700
> From: Ray Olszewski <ray@comarre.com>
> Subj: Re: Make a phone call (repeat)

(snip)

> you'll have to consult the docs that came with the modem to try to
> track down the needed command.

I have got hold of the manual provided with my modem.  I am perusing
the manual for the past half an hour or so, but am not very sure about
what to look for.  There is no mention of mike anywhere in the manual.
(But there are a handful of commands for the speaker.)

I am quoting here two appendices from the manual, which I think might
contain the relevant information.  Could you please help me to figure
out, which of these AT commands are for the mike?  Or is the relevant
information not available in the quoted text?

If any of you think that you can help me with this, kindly let me
know.  I'll send you the entire manual in PDF off-list (260384 bytes).

(begin-quote)

Appendix 1 Specifications

Modulation standard       : V.90, X2, V.34, V.32bis, V.32, V.29, V.27ter,
                              V.22bis, V.23,V.22, V.21,V.17, Bell212/103
Compression               : V.42bis, MNP Class 5
Error Correction          : V.42, MNP Class 2-4
Host Interface            : ISA 16 bit bus
COM ports                 : 1, 2, 3, 4
IRQ lines                 : 3, 4, 5, 7, 10, 11, 12
FAX Group                 : Group III
FAX Command               : EIA/TIA 578 class 1
VOICE Command             : IS - 101
Transmit level            : -10 dBm +/- 1 dB
Sensitivity               : -43 dBm
UART                      : 16550 compatible
Power                     : 0.75 W max
Temperature               : 0 to 55 degrees C, operating; -20 to 80
                            degrees C, non-operating

Appendix 2 AT command set

Executing commands
Your modem is in Command Mode upon power-on and is ready to re-
ceive and execute AT commands. The modem remains in Command
Mode until it makes a connection with a remote modem. Commands
may be sent to the modem from an attached terminal or a PC running a
communication program. This modem is designed to operate at com-
mon DTE speeds ranging from 115.2 Kbps to 300 bps. All commands
and data must be issued to the modem using one of the valid DTE speeds.


AT commands and format
All commands must begin with the AT prefix, followed by the command
letter and ended with the ENTER key. All default settings are printed in
bold text. Spaces are allowed in the command string to increase com-
mand line readability but are ignored by the modem during command
execution.  All commands may be typed in either upper or lower case,
but not mixed. A command issued without any parameters is considered
as specifying the same command with a parameter of "0".
        Example:       ATL [ENTER]
This command causes your modem to lower its speaker volume.

AT Command Summary
All default settings are printed in bold and italic text.
        AT             Command prefix
        A/             Repeat last command
        A              Answer
        B0             Select V.22/V.21
        B1             Select B212A/B103
        B2             Select V.23 only; Dial modem transmit @ 75 BPS,
                       receive @ 1200 BPS;Answer modem receive @ 75
                       BPS, transmit @ 1200 BPS
        B3             Select V.23 only; Dial modem transmit @ 1200 BPS,
                       receive @ 75 BPS;Answer modem receive @ 1200
                       BPS, transmit @ 75 BPS
        D              Dial
              0 - 9            Dialing digits
              ABCD*#           Tone dial characters
              P                Pulse dial
              T                Tone dial
              R                The modem goes into answer mode directly
                               after finish dialing
              S=n              Dial stored telephone number n


      W          Wait for dial tone
      ,          Pause the time specified in S-register S8
      !          Flash hook
      @          Wait for quiet answer
      ;          Return to command mode
E0         Disables echo
E          Enables echo
H0         Hangs up the telephone line
H1         Picks up the telephone line
I0         Reports product code
I1         Reports modem chip firmware version
I2         Verifies ROM checksum
I3         Report chipset name
L0         Low speaker volume
L1         Low speaker volume
L2         Medium speaker volume
L3         High speaker volume
M0         Speaker always off
M1         Speaker on until carrier present
M2         Speaker always on
M3         Speaker off during dialing; speaker on until carrier
           present
N0         Handshake only at DTE speed
N1         Begin handshake at DTE speed and falls to
           highest compatible speed
O0         Return to data mode
O1         Retrain and return to data mode
P          Select pulse dialing
Q0         Enables result code
Q1         Disables result code
Sn         Select S-register n; refer to S-register summary for
           the details


       Sn=x     Write x to S-register n; refer to S-register summary
                for the details
       Sn?      Read from S-register n; refer to S-register summary
                for the details
       T        Select tone dialing
       V0       Choose numeric form result code
       V1       Choose verbose form result code
       W0       Reports DTE connect speed result code
       W1       Reports DTE connect speed result code
       W2       Reports DCE connect speed result code
       W3       Reports DTE connect speed result code with
                error correct and data compression Information
       W4       Reports error correction, data compression and DCE
                speed
       X0       Enables result code 0-4; disables dial tone and busy
                tone detection
       X1       Enables result code 0-5,10 and above; disables dial
                tone and busy tone detection
       X2       Enables result code 0-6, 10 and above; enables dial
                tone detection and disables busy tone detection
       X3       Enables result code 0-5,7,10 and above; disables dial
                tone detection and enables busy tone detection
       X4       Enables result code 0-7, 10 and above; enables
                dial tone and busy tone detection
       Y0       Disables long space disconnect
       Y1       Enables long space disconnect
       Z0       Reset modem and recalls user profile 0
       Z1       Reset modem and recalls user profile 1
       &C0      Ignores carrier status; CD always ON
       &C1      CD set according to carrier status
       &D0      Ignores DTR

&D1    Modem switches from data mode to command mode
       when an ON-to-OFF transition of DTR occurs
&D2    When DTR switches OFF , the modem goes on-hook
       and disables auto-answer
&D3    Reset modem and recall user profile when DTR
       switches OFF
&F     Load factory defaults
&G0    Disables guard tone
&G1    Enables 550 Hz guard tone
&G2    Enables 1800 Hz guard tone
&J0    Auxiliary relay never operated
&J1    Activates auxiliary relay when modem is off-hook
&K0    Disable flow control
&K3    Enables CTS/RTS hardware flow control
&K4    Enables XON/XOFF software flow control
&M0    Select asynchronous operation mode
&P0    Select 10 pps pulse dial with 39%/61% make/break
       ratio
&P1    Select 10 pps pulse dial with 33%/67% make/break
       ratio
&Q0    Select asynchronous operation mode
&S0    DSR always ON
&S1    DSR ON only during handshaking and when carrier
       is lost
&T0    Terminates test in progress
&T1    Initiates local analog loop-back (LAL)
&T3    Initiates local digital loop-back
&T4    Grants RDL request from remote modem
&T5    Denies RDL requests from remote modem
&T6    Initiates remote digital loopback(RDL)
&T7    Initiates RDL with self-test
&T8    Initiates LAL with self-test


       &U0        Enables trellis coding
       &U1        Disables trellis coding
       &V0        View active profile, stored user profile 0 and stored
                  telephone number
       &V1        View active profile, stored user profile 1 and stored
                  telephone number
       &W0        Stores active profile into user profile 0
       &W1        Stores active profile into user profile 1
       &Y0        Recall user profile 0 on power-up
       &Y1        Recall user profile 1 on power-up
       &Zn=x      Stores telephone number x(up to 30 digits) to
                  location n(0-3)
       %E0        Disables auto-retrain
       %E1        Enables auto-retrain
       %G0        Disables rate-renegotiation
       %G1        Enables rate-renegotiation
       -C0        Disables calling tone
       -C1        Enables 1300 Hz calling tone
       -C2        Enables V.8 calling tone for V.34 and 1300 Hz call
                  ing tone for others
       +MS=<carrier>,<automode>,<min rate>,<max rate>
                  This command set the type of modulation used and
                  the transmit and receive speeds. The defaults is V90,
                  1,0,0
                  <carrier> the string parameter specifies the type of
                  modulation used.
                           V21 V.21 300 bps
                           V22 V.22 1200 bps
                           V22B V.22bis 1200/2400 bps
                           V23C V.23 1200/75 bps
                           V32 V.32 4800/9600 bps
                           V32B V.32bis 7200-14400 bps


      V34 V.34 asymmetrical 2400-33600 bps
      V34S V.34 symmetrical 2400-33600 bps
      V34B V.34 extended asymmetrical 2400-
              33600 bps
      V34BS V.34 extended symmetrical 2400-
              33600 bps
      X2      X2 asymmetrical transmit 4800 - 31200
              bps and receive 33333 - 53333 bps
      V90 V.90 asymmetrical transmit 4800-31200
              bps and receive 33333-53333 bps
<automode> control the modem to negotiate
modulation automatically.
      If <automode>=0 Disabled
      If <automode>=1 Enabled
<min rate>
      If <min rate> = 0 The lowest data rate = 300
                             when<automode>= 1.The
                             lowest data rate = lowest
                             modulation data rate when
                             <automode> = 0
      If <min rate>    0     The parameter specifies
                             the lowest data rate.
                             Range = 0,300,1200,2400,
                             4800,7200,9600,
                             12000,14400,16800,
                             19200,21600,24000,
                             26400,28800,31200,
                             33600



                <max rate>.
                          If <max rate> = 0 The highest data rate = the
                                             highest modulation rate
                                             that less than or equal to
                                             DTE speed
                          If <max rate>   0 The parameter specifies
                                             the highest
                                             Connection Speed Range
                                             =0,300,1200, 2400,4800,
                                             7200,9600,12000,14400,
                                             16800,19200,21600,
                                             24000,26400,28800,
                                             31200,33333,33600,
                                             37333,41333,42666,
                                             44000,45333,46666,
                                             48000,49333,50666,
                                             52000,53333,54666,
                                             56000,57333
       %An      Set auto-reliable fallback character (n=0-127, default
                is 13)
       %C0      Disables data compression
       %C1      Enables MNP5 data compression
       %L       Report receive line signal level
       \A0      Set maximum MNP block size to 64 characters
       \A1      Set maximum MNP block size to 128 characters
       \A2      Set maximum MNP block size to 192 characters
       \A3      Set maximum MNP block size to 256 characters
       \Bn      Transmit break in n*100ms (n = 0-9)
       \C0      Disables auto-reliable mode data buffering
       \C1      4 seconds buffer until 200 characters in the buffer or
                detec tion of a
                SYN character


\C2    No buffering, connect non-V.42 modem to V.42 mo
       dem
\G0    Disables XON/XOFF flow control between local
       and remote modems
\G1    Enables XON/XOFF flow control between local and
       remote modems
\J0    Disables DTE speed adjust
\J1    Enables DTE speed adjust
\Kn    Set break control (n=0-5, default is 5)
\N0    Select normal mode
\N1    Select normal mode
\N2    Select MNP reliable mode
\N3    Select V.42 auto-reliable mode
\N4    Select V.42 reliable mode
\Q0    Disables flow control
\Q1    Enables XON/XOFF software flow control
\Q2    Enables CTS hardware flow control
\Q3    Enables CTS/RTS hardware flow control
\Tn    Set inactivity timer (n=0-90, default is 0)
\X0    Process XON/XOFF character as flow control
       character only
\X1    Process XON/XOFF character as flow control char
       acter and pass through to local DTE or remote
       modem
-J0    Disables V.42 detect phase
-J1    Enables V.42 detect phase
"H0    Disables V.42bis data compression
"H1    Enables V.42bis data compression at transmit
       direction
"H2    Enables V.42bis data compression at receive
       direction


         "H3                 Enables V.42bis data compression at both trans
                             mit and receive direction
         "On                 Set V.42bis string length (n=6-250,default is 32)


(end-quote)

Thank you for your help.

Cheers,
anna


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
