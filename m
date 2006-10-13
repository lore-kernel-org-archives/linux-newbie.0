From: "James Miller" <jamtat@mailsnare.net>
Subject: limited wifi snooping advice needed
Date: Fri, 13 Oct 2006 17:16:22 +0000
Message-ID: <W5780613382234591160759782@mail.mailsnare.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

The following concerns a project I am thinking of that involves some limited wifi snooping. By "limited" I mean that the aim is not to decrypt packets so as to steal information or engage in other, likewise ethically questionable activities. Rather, the level of information I am seeking to extract from a wifi network is of the most generic sort, not going beyond the level of IP addresses.

I've recently begun teaching and have been introduced to modern technology's complement to daydreaming in the classroom: a school-wide wifi network to which students can connect in the classroom. From various indicators, I am quite certain that some students are not using their laptops to take notes during the class, but are engaging in other, extra-curricular computer/internet activities (judging by the amount of scrolling and clicking, they are viewing webpages or maybe doing some web-mailing).

Various things could be done about this, ranging from no/low-tech to high tech things. On the high tech side, I've thought of the following. I've fiddled a bit with tcpdump on a wired network and can see how it might be used to address this problem. Its most basic function is to watch packets pass by the network interface it's running on and to display origin and destination IP's, by default to stdout. First a question: would it work in the same way wirelessly? Could I, for example, issue tcpdump ra0 (my chiefmax/ralink wireless PCMCIA card is initialized as ra0) and expect it to dump to stdout origin and destination IP's passing the interface on that wireless network? That would be step 1 of the high tech solution. 

Step two--turning that data into useful information that could be called up on demand--would be more complex. I envision dumping that data into a file which would then be operated on by a script. I'd go for bash since it's the only scritping language I have even the faintest clue about. The script would have to do a couple of things, as well as call some other programs. For one, it would have to eliminate extraneous data like repeated IP's, of which there would likely be very many (two IP's for every packet). It would also have to at least call whois to resolve IP's (so as to show what sites were being browsed). It would then have to save this information to a file that could be viewed in some application like a text editor, word processor, or browser. Figuring out how to do all that would be quite a task for someone with my limited abilities, and it is something I may end up asking for 
 some assistance on at this list in the future. But for now let me just ask if anyone know!
 s of some utility that does this or something like it?

Feedback on these issues will be appreciated.

Sincerely,
James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
