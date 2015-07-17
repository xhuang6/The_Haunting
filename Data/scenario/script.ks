*scenario|The Haunting
@val
@bg storage=black time=1000

    This morning, I got a phonecall from my friend.
@lr
@r
    "Hey buddy! Would you be interested in a well paid job? "
@lr
    He asked. 
@lr
@r
    I admit that I am short on money right now.
@lr
    Little did I know, a breathtaking adventure was waiting for me...

@p


@fadeinbgm storage=InYourArms time=5000
@bg storage=house layer =base time=1000
@advl
@fg layer=0 storage=Marina t=0 l=200 time=250
    "Hello, my name is Marina Hill. I am the landlord of the Corbitt estate."
@p
    She is my friend's cousin, the client in this case. Now, we are in front 
@r
of an old house, in central Boston. 
@p
    "There was recently an incident at the house and now people around 
@r
the estate are starting to claim it is haunted."
@p
    "When I told my cousin about the events he strongly recommended 
@r
you. He told me that you are a very skilled investigator with an interest in the occult. "
@p
    "Will you please come to the estate to conduct an investigation?"
@p
    "I will pay you $50 cash in advance, as well as a daily wage of $20 
@r
and a $100 bonus if you can give the property a clean bill of health."
@p
    "It’s important that I be able to rent the property out again without 
@r
worry of another incident happening!"
@p
    It sounds good. What should you do?
@p
    
[wait time=200]
*start
@cm
[link target=*accept]Accept[endlink]
@r
[link target=*decline]Decline[endlink]
@r
@s   
   
*decline
@cm
    "Please, do not say that! I really need your help!"
@l
@jump target = *start
@s  
   
*accept
@cm
    "Wonderful! Here is the keys to the house as well as the $50 cash. 
@r
Thank you so much for your help!
"
@p
    "You can go to visit the Macario family at first. They are the last tenants for this house. Here is the address.
"
@p
    "Well,Good luck!"
@fadeoutbgm time=5000

[eval exp="f.hor=0"]
[eval exp="f.tcoc=0"]


*move
@p
@cm
@cl
@backlay
@fadeinbgm storage=FunkGameLoop time=5000
[image storage=street page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val

Where do you want to go?
@lr
[link target=*TheMacarioFamily]Visit The Macario Family[endlink][r]
[link target=*TheMainLibrary]The Main Library[endlink][r]
[link target=*CentralPoliceStation]Central Police Station[endlink][r]
[link target=*TheNeighborhood]The Neighborhood[endlink][r]
[r]
[if exp="f.hor"==1]
[link target=*HallofRecords]Hall of Records[endlink][r]
[endif]
[if exp="f.tcoc"==1]
[link target=*TheChapelofContemplation]The Chapel of Contemplation[endlink][r]
[endif]
[r]
[link storage="corbitt'sHouse.ks" target=*corbitt'sHouse]Corbitt’s House[endlink][r]
[s]

*TheMacarioFamily
@cm
@cl
@backlay
@fadeinbgm storage=LostTime time=5000
[image storage=hospital page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
   The address is the Roxbury Sanitarium. It is a few miles from Boston.
@p
@backlay
[image storage=frontDesk page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
   I go to the front desk to mention what I had come for.
@lr   
   The nurse tell me the rooms’ number for Macario couple.
@lr
@r
*frontDesk
   Where do you want to go?
@lr
[link target=*Vittorio]Visit Mr. Macario[endlink][r]
[link target=*Gabriela]Visit Ms. Macario[endlink][r]
[link target=*move]Leave[endlink][r]
@s

*Vittorio
@cl
@backlay
[image storage=sickRoom1 page=back layer=base]
[trans method=crossfade time=1500]
@wt
@fg layer=0 storage=Vittorio t=0 l=200 time=250
@val
    Vittorio Macario sits huddled in a corner and mumbling to 
@r
himself. He does not seem to notice you as you enter the
@r
room. There does not seem to be any personal belongings in
@r
the room.
@r
*sickroom1
@r
@lr
[link target=*LookAroundTheRoom]Look around the room[endlink][r]
[link target=*IntroduceYourself]Introduce yourself[endlink][r]
[if exp="f.qV1"==1&& exp="f.qV2"==1]
[link target=*endVittorio]Leave[endlink][r]
[else]
[link target=*frontDesk]Leave[endlink][r]
[endif]
@s

*LookAroundTheRoom
@p
You look around the room but it looks like any other patient’s room in the asylum.
@lr
@jump target=*sickroom1

*IntroduceYourself
@advl
   "Hello Mr. Macario, I am an investigator currently investigating the Corbitt house where you used to live."
@p
    Vittorio: *mumbles*
@p
@val
Next..
@lr
[link target=*qVittorio]Question Vittorio[endlink][r]
[link target=*sickroom1]Leave[endlink][r]
[s]

*qVittorio
@p
@val
[link target=*qV1]Can you tell me about the accident you had?[endlink][r]
[link target=*qV2]What happened during the time after the accident?[endlink][r]
[link target=*sickroom1]Leave[endlink][r]
[s]

*qV1
@advl
   "Can you tell me about the accident you had?"
@p
    Vittorio: …
[eval exp="f.qV1=1"]
@jump target=*qVittorio

*qV2
@advl
   "What happened during the time after the accident?"
@p
    Vittorio: *mumbles*...burning…..man…*mumbles*
[eval exp="f.qV2=1"]
@jump target=*qVittorio

*endVittorio
@p
@val
    You see that there is no point in talking further with Vittorio and decide to leave.
@lr
@eval exp="f.Vittorio=1"
@jump target=*frontDesk


*Gabriela
@cl
@backlay
[image storage=sickRoom2 page=back layer=base]
[trans method=crossfade time=1500]
@wt
@fg layer=0 storage=Gabriela t=0 l=200 time=250
@val
    Gabriela sits up in her bed, although she looks a little 
@r
	confused she has a faint smile on her face.
@r
*sickroom2
@r
@lr
[link target=*LookAroundTheRoom2]Look around the room[endlink][r]
[link target=*IntroduceYourself2]Introduce yourself[endlink][r]
[if exp="f.qG1"==1&& exp="f.qG2"==1 && "f.qG3==1"]
[link target=*endGabriela]Leave[endlink][r]
[else]
[link target=*frontDesk]Leave[endlink][r]
[endif]
@s

*LookAroundTheRoom2
@p
    You look around the room but it looks like any other
@r
patient’s room in the asylum. A picture of her family rests on the table next to her bed.

@lr
@jump target=*sickroom2

*IntroduceYourself2
@advl
   "Hello Mrs. Macario, I am an investigator currently investigating the Corbitt house where you used to live."
@p
    Gabriela:"I-it is nice... to meet you."
@p
@val
Next..
@lr
[link target=*qGabriela]Question Gabriela[endlink][r]
[link target=*sickroom2]Leave[endlink][r]
[s]

*qGabriela
@p
@val
[link target=*qG1]Can you tell me about your husband’s accident?[endlink][r]
[link target=*qG2]What happened during the time after the accident?[endlink][r]
[link target=*qG3]What happened after your husband was committed?[endlink][r]
[link target=*sickroom2]Leave[endlink][r]
[s]

*qG1
@advl
   "Can you tell me about your husband’s accident?"
@p
    Gabriela:"It was because of tha-that presence.That thing…"
@p
	Gabriela:"t-that thing is evil…. evil. B-burning…the burning eyes."
@p
	Gabriela:"It was angry… so angry. "
[eval exp="f.qG1=1"]
@jump target=*qGabriela

*qG2
@advl
   "What happened during the time after the accident?"
@p
    Gabriela:"I-it was angry… s-so angry. Poor Vittorio… my dear Vittorio... i-it… it hated him s-so much."
[eval exp="f.qG2=1"]
@jump target=*qGabriela

*qG3
@advl
   "What happened after your husband was committed?"
@p
    Gabriela: "…th-the burning eyes…watching me…. w-watching…. eyes…"
[eval exp="f.qG3=1"]
@jump target=*qGabriela

*endGabriela
@p
@val
    You see Gabriela is distressed. You think it’s best not to push her any further and decide to leave.
@lr
@jump target=*frontDesk





*TheMainLibrary

@jump target=*move

*CentralPoliceStation

@jump target=*move


*TheNeighborhood

@jump target=*move


*HallofRecords

@jump target=*move


*TheChapelofContemplation

@jump target=*move
