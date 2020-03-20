# Portfolio Project One: Zzounds Deal Scraper

So I'm a little late on this because of wedding and honeymoon stuff, but I'm finally back and hopefully ready to finish this project up. The outside world's a little crazy right now anyway, so I'm glad to be here working on this.

So I decided, perhaps unwisely, to set up my local environment before I started this project. I had tried using Learn.co's sandbox, but it just seemed like I may as well bite the bullet and try something that was more user-friendly. It's been great...after I worked out some kinks. I don't consider myself incredibly computer literate so it was a bit of a process, but now I'm loving the workflow of using Visual Studio and Github together. It's really helping, and I can use all of the advantages I can get for this project. 

My original idea was to pull Reddit's most popular posts and make a sort of "filter" function the user could implement to sift the posts they might be uninterested in from the feed and only see the relevant information to them. I had created the flowchart and watched the videos to get started for this, but there was a bit of a learning curve on setting up the gem in the environment and manually sending saves to Github. I decided I needed to just follow along with Avi's lesson on building gems, as close to step-by-step as possible (I've never done anything on this scope before, and I've currently hit a bit of a slow-down, so I decided to catch up the blog a bit to help me think through my issues).

So, for now, I'm allowing myself to just follow along with that video and make a similar "deal finding" gem. I've been trying to get in the headspace of building a "fake" CLI that appears to work, and reverse-engineering a functional one from its bones. I'm unsure if I'll go back to my Reddit idea, because honestly it'd be nice to have this application to find deals on music equipment for me. Let me try to set up the idea of this thing for you:

This gem will only pull information from one site, unless I can get some others to work (I tried Sweetwater and Musician's Friend, but my scraper ended up pulling various errors for them - I think it's a site security issue or just a problem certain sites have being scraped). This site is Zzounds, which sells new and used music equipment and instruments. Most sites like this have daily deals on things that have a little bit of damage or wear and tear, so pretty often they update their big sales. 

First I set up the CLI file in the lib/sweet_deals folder. Because I was following along with Avi's video, I didn't exactly make a flowchart for this idea yet, but it's a pretty basic app so I'll probably update my project info / chart after I'm done here. Without getting into the drier details of what exactly I hard-coded out in the CLI file, I created a SweetDeals::CLI object with a #call method which essentially would "run" my whole program when the user started it up. Every method inside of #call would be, well, *called* in the order required to make the program function normally. 

What does this program do when functioning normally? Excellent question. I suppose that's why you do things like read blogs about coding. 

First, it greets the user and provides a numbered list of the deals from today. That will look something like this:

1. 
     Shure BLX288/PG58 Dual Handheld Wireless PG58 Microphone
		 Blemished, Band H-9                                                                                         
		 $419.95                                                                                                                   
		 Only 1 Left!                                                                                                             
		 Save $79.95 off new!                                                                                          
		 
2. 
     Shure BLX288/SM58 Dual Channel SM58 Wireless Handheld Microphone System
		 Warehouse Resealed, Band H10 (542-572 MHz)
		 $534.95
		 Only 1 left!
		 Save $64.05 off new!


Then, it prompts the user to select a number for more information on the item listed.

The user selects whatever number / item they would like to know more information about, for example: 

    2 (and then, of course, the user would then hit enter) 

This would pull information provided by the item's page along with the information already provided.


     Shure BLX288/SM58 Dual Channel SM58 Wireless Handheld Microphone System
		 Warehouse Resealed, Band H10 (542-572 MHz)
		 $534.95
		 Only 1 left!
		 Save $64.05 off new!
		 
     "Clear and reliable, the Shure BLX288/SM58 dual channel wireless microphone system delivers crisp, dynamic vocals        with long-range coverage you can count on." 
		 
     6 monthly payments of $89.16
		 
     Get it by Tue., Mar. 24 if you order within 2 hrs. 2 min.
		 
     Shure BLX288/SM58 Wireless System
     The Shure BLX288/SM58 Dual Channel SM58 Wireless Handheld Microphone System combines professional-quality        sound with simple setup and an intuitive interface for legendary audio performance right out of the box. Precision-built      with a wireless version of the legendary SM58 microphone, it's the most accessible way to own the stage.

     BLX88 Dual Wireless Receiver for BLX Wireless System
     Dual analog wireless receiver provides improved linearity and frequency response with group and channel scan for              easy set-up. Features include microprocessor internal antenna diversity, frequency QuickScan, and two-color audio            status indicator LED.

     Handheld Transmitter Features:
     - Integrated microphone capsule design
     - Lightweight, rugged construction
     - 10 dB gain attenuation

     BLX2/SM58 Handheld transmitter with SM58 capsule
     Featuring an integrated SM58 microphone cartridge, each BLX2/SM58 Handheld Wireless Microphone Transmitter            delivers wireless audio with professional clarity and reliability.

     Receiver Features:
     - XLR and 1/4" output connectors
     - Microprocessor-controlled internal antenna diversity
     - Two-color audio status indicator LED:
     -- Green: Normal audio levels
     -- Red: Excessive audio levels (overload / clipping)

     zZounds is an authorized dealer of Shure products.
		 
After this, the user can decide between going back to the list by typing 'list' or exiting the program with 'exit'. 

Should the user choose list, the original list will appear and they may select another number. If they select exit (at any time, not just when they have selected an item) the program will exit, after displaying a farewell message. 

So I had mapped out the CLI method #call to pull various other methods until I had a pseudo-functioning hard-coded program. 