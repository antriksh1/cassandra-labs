<link rel='stylesheet' href='assets/css/main.css'/>

Cassandra Labs
--------------
Welcome to Cassandra labs bundle.

Viewing the Markdown Files:
-----------------
Markdown files are plain text files and can be viewed in any text editor.

For best viewing experience we recommend the following setup

* Get Chrome browser from : https://www.google.com/chrome/browser/desktop/

* Install **Markdown Preview Plus Plugin** for Chrome.  
Go to this url in Chrome & click add to Chrome.  
https://chrome.google.com/webstore/detail/markdown-preview-plus/febilkbfcbhebfnokafefeacimjdckgl?hl=en-US  
If this link does not work, search for markdown-preview-plus in https://chrome.google.com/webstore

* Once installed, go to 'Window --> Extensions' menu of Chrome ;   Find 'Markdown Preview Plus' plugin ;  set 'Allow access to file urls'

* Open any *.md file using Chrome (File --> Open)


Editors
-------
We recommend using a 'programmer's editor' to view these files. These editors have integrated file browser and allows navigating through files quickly.
* For Windows : [Sublime](http://www.sublimetext.com/), [NodePad++](http://notepad-plus-plus.org/), [Textpad](http://www.textpad.com/)

* For Mac : [Sublime](http://www.sublimetext.com/),  [TextWrangler](http://www.barebones.com/products/textwrangler/)

* For Linux : [Sublime](http://www.sublimetext.com/), GEdit, Vim



----
Labs
----
1. [CQLSH](01-intro/README.md)

2. CQL Intro
    - [2  CQL](02-cql/README.md)
    - [2.5 Indexing](02-cql/index.md)

3. [Collections](03-collections/README.md)

4. [Composite Keys](04-composite-keys/README.md)

5. [Time Series](05-time-series/README.md)

6. [Counters](06-counter/README.md)

7. [CQL Data Modeling Labs](07-cql-modeling/README.md)

8. [MyFlix](08-myflix/README.md)

9. [Java Driver](09-java-driver/README.md)

10. [Single Node Install](10-single-node-install/README.md)

11. [Debug](11-debug/README.md)

12. Bonus Lab : [Modeling GMAIL](12-gmail/README.md)

13. Bonus Lab : [Modeling Spotify](13-music/README.md)

14. Bonus Lab : [Spring Access to C*](14-spring/README.md)

15. Bonus Lab : [Modeling WebEx](15-video-conf/README.md)


For Instructor:
----------------------------
* To zip up labs without .git folder
```
   $   git archive --format=zip HEAD -o cassandra-labs.zip
```


* Use latest of 'cassandra-*' AMI
    * m1.medium 
    * username : ec2-user 
    * password : usual 
    * ssh key : cassandra-labs2.pem 

* For install lab use 'linux-clean-*'  AMI

* To login to cluster
```
    $   ssh -i  cassandra-labs2.pem   ec2-user@host_ip_address
```

* Verify Cassandra is running by
```
    $   nodetool  status
```


