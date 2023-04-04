Warning: It is advisable to **not** use your own/primary account when using this tool.

## Tools and Commands 🧰

 Osint.J.F.A offers an interactive shell to perform analysis on Instagram account of any users by its nickname. You can get:

```text
- addrs           Get all registered addressed by target photos
- captions        Get user's photos captions
- comments        Get total comments of target's posts
- followers       Get target followers
- followings      Get users followed by target
- fwersemail      Get email of target followers
- fwingsemail     Get email of users followed by target
- fwersnumber     Get phone number of target followers
- fwingsnumber    Get phone number of users followed by target
- hashtags        Get hashtags used by target
- info            Get target info
- likes           Get total likes of target's posts
- mediatype       Get user's posts type (photo or video)
- photodes        Get description of target's photos
- photos          Download user's photos in output folder
- propic          Download user's profile picture
- stories         Download user's stories  
- tagged          Get list of users tagged by target
- wcommented      Get a list of user who commented target's photos
- wtagged         Get a list of user who tagged target
```




## Installation ⚙️

1. Fork/Clone/Download this repo

    `https://github.com/TariqullslamHridoy/Osint.J.F.A.git`
 

2. Navigate to the directory

    `cd Osint.J.F.A`

3. Create a virtual environment for this project

    `python3 -m venv venv`

4. Load the virtual environment
   - On Linux and Git Bash: `source venv/bin/activate`
  
5. Run `pip install -r requirements.txt`

6.  write your Instagram account username and password in the corresponding fields
    
    Alternatively, you can run the `make setup` command to populate this file for you.

7. Run the main.py script in one of two ways

    * As an interactive prompt `python3 main.py <target username>`
    * Or execute your command straight away `python3 main.py <target username> --command <command>`
    


## External library 🔗

Osint.J.F.A 
