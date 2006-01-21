From: Qiang <linux.liuqiang@163.com>
Subject: Re: Please help me solve the problem about dict and dictd.
Date: Sat, 21 Jan 2006 20:05:45 +0800
Message-ID: <m3ek31bxba.fsf@163.com>
References: <m3r7723vz5.fsf@163.com> <43D22011.9090909@hackmiester.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

**************************************************
[qiang@QQ qiang]$ cat /etc/dictd.conf
access {
        allow localhost
}
database web1913   { data "/usr/lib/dict/web1913.dict.dz"
                     index "/usr/lib/dict/web1913.index" }
[qiang@QQ qiang]$ cat /etc/dict.conf
server localhost
[qiang@QQ qiang]$ cat .dictrc
server localhost
[qiang@QQ qiang]$ su
Password:
[root@QQ qiang]# /usr/local/sbin/dictd
[root@QQ qiang]# exit
[qiang@QQ qiang]$ ps -e | grep "dictd" > 1
[qiang@QQ qiang]$ cat 1
[qiang@QQ qiang]$ dict zoo
5 definitions found

From The Collaborative International Dictionary of English v.0.48 [gcide]:

Zoo- \Zo"o-\
     A combining form from Gr. zwo^,n an animal, as in zoogenic,
     zoology, etc.
     [1913 Webster]

From WordNet (r) 2.0 [wn]:

zoo
       n : the facility where wild animals are housed for exhibition
           [syn: {menagerie}, {zoological garden}]

           
From Moby Thesaurus II by Grady Ward, 1.0 [moby-thes]:

  20 Moby Thesaurus words for "zoo":
     Festschrift, ana, anthology, aquarium, body, chrestomathy,
     collectanea, collection, compilation, corpus, data, florilegium,
     fund, holdings, library, menagerie, museum, raw data, treasure,
     zoological garden


 
From The Free On-line Dictionary of Computing (27 SEP 03) [foldoc]:
 
  Zoo
        
          {Berkeley Yacc}
        
        
 
From The Free On-line Dictionary of Computing (27 SEP 03) [foldoc]:
 
  zoo
        
          <tool, file format> A data {compression} program and format by
          Rahul Dhesi.  Zoo is reported to use the same {Lempel Ziv}
          algorithm as {LHA}.  It is available for many {platforms} and
          {source} is available.  .zoo archives are handled by many
          other PC archiving programs.
        
          Version 2.10 was released in 1989.  Search the web for zoo210
          to obtain an executable.
        
          {Description (http://sources.isc.org/archiver/zoo2.txt)}.
        
          (2000-07-05)
        
        
[qiang@QQ qiang]$



**************************************************
Did it really visit local server?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
