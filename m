From: Valdis.Kletnieks@vt.edu
Subject: Re: How to find out which part of code is changing a particular data
	structure.
Date: Fri, 08 Nov 2013 09:51:54 -0500
Message-ID: <52596.1383922314@turing-police.cc.vt.edu>
References: <70853dc9fbf84454b3db81630a6ce99e@BLUPR05MB118.namprd05.prod.outlook.com>
	<CAPrYoTG7asmh_Vr-Fr758n17mYtjXms7jjfLECiPuy9xD+DUrw@mail.gmail.com>
	<1383895398.45469.YahooMailNeo@web142703.mail.bf1.yahoo.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1506940823473071567=="
Return-path: <kernelnewbies-bounces@kernelnewbies.org>
In-Reply-To: Your message of "Thu, 07 Nov 2013 23:23:18 -0800."
	<1383895398.45469.YahooMailNeo@web142703.mail.bf1.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>,
	<mailto:kernelnewbies-request@kernelnewbies.org?subject=unsubscribe>
List-Archive: <http://lists.kernelnewbies.org/pipermail/kernelnewbies>
List-Post: <mailto:kernelnewbies@kernelnewbies.org>
List-Help: <mailto:kernelnewbies-request@kernelnewbies.org?subject=help>
List-Subscribe: <http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>,
	<mailto:kernelnewbies-request@kernelnewbies.org?subject=subscribe>
Sender: kernelnewbies-bounces@kernelnewbies.org
Errors-To: kernelnewbies-bounces@kernelnewbies.org
To: kiran kumar <akirank@yahoo.com>
Cc: Rajat Jain <rajatjain@juniper.net>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, "kernelnewbies@kernelnewbies.org" <kernelnewbies@kernelnewbies.org>

--===============1506940823473071567==
Content-Type: multipart/signed; boundary="==_Exmh_1383922314_21518P";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1383922314_21518P
Content-Type: text/plain; charset=us-ascii

On Thu, 07 Nov 2013 23:23:18 -0800, kiran kumar said:
> Can you define that location as read only(i.e constant)?. This is only for
> debug prupose, later you can remove.

Note that this requires 2 things:

1) A kernel built with CONFIG_DEBUG_RODATA=y

2) The structure needs to have a compile-time initializer:

struct foo barbaz = { 5, 3, "quuz"};

Otherwise, your kernel will throw an oops when it tries to initialize
the structure at runtime (which is almost certainly *not* the time that
is causing the actual problem).

Simply declaring it as 'const struct' may or may not help - this will catch
at compile time lots of mistakes, but isn't guaranteed to stop all cases of
buggy uses of miscast pointers, etc....

--==_Exmh_1383922314_21518P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)
Comment: Exmh version 2.5 07/13/2001

iQIVAwUBUnz6igdmEQWDXROgAQLNyhAAru0oXA8izfzvxNEFNFWCx1av/fEU+wIN
3MYkNm1wjcOS8ugTYHHqIOyRKR5ay0gaMwaiVqKvyfziaJdG1K39s2xV+rml+PzS
mNwJcGUy+XtOKNR7HUlOIU9/e7MTt7c0JNDAnlhR/MpnTC8yxaQ+WJ8vI78JI6Ov
0HQTKmhHw2cJWD+YIjfJrhNP0RpUEOzf58VvZY2q9U/XmjIhlclVhEyWV3Jut5pC
/7fV255VoS+dXzwn4rsabKKOOECOKK1RJs5FBU9CEvf5Tb+KsysUE0B94a1yE/HO
sEcA6PxFisZiBGrrbMDF0q6DvKKqRLYOfgPy2szK3l7iH35OMCYtn4FfbSSmOqa9
huIk30uBy3O/wzZgKYcj9QAOUXie9FcuwQrPGiZH9+KgAoJPHS33gyrZ6psCxz2d
T9o4BahjGPYwxblWsZLhnzavXMDLYjJIyWfBNlII0WSD35N5nFyfg4PvdmDz3ipX
o+IleL7Pd2C5dBwaNnTQ++HdGnNXdBSnzWj91Lhwczq/wUSmZkTxlu9png+kxTOX
1ylBrmMmgjNAx197jVvpMUWGP9E2dLU1PvNfa1qxqo8svzvikx1KRByW2CfXNbCj
iIcPPyu/rsldxIeeWAWF17WJgttftWtmnKuMaW4RpsCci3hUurhj2IqxOacgODNA
w9WUXGdetNw=
=PLDq
-----END PGP SIGNATURE-----

--==_Exmh_1383922314_21518P--


--===============1506940823473071567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Kernelnewbies mailing list
Kernelnewbies@kernelnewbies.org
http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies

--===============1506940823473071567==--

