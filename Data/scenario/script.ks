*scenario|The Haunting
@clearvar
@val
@bg storage=black time=1000

    This morning, I got a phonecall from my friend.
@lr
@r
    "Hey buddy! Would you be interested in a well paid job? "
@r
    He asked. 
@lr
@r
    I admit that I am short on money right now.
@lr
@r
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
    "It is important that I be able to rent the property out again without 
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
    "Wonderful! Here are the keys to the house as well as the $50 cash. 
@r
Thank you so much for your help!
"
@p
    "You can go to visit the Macario family first. They were the last tenants
@r
	of this house. Here is the address.
"
@p
    "Well, Good luck!"
@fadeoutbgm time=5000



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
[if exp="f.RMT==1"]
[link target=*HallofRecords]Hall of Records[endlink][r]
[endif]
[r]
[if exp="f.tcoc==1"]
[link target=*TheChapelofContemplation]The Chapel of Contemplation[endlink][r]
[endif]
[r]
[link storage="corbitt'sHouse.ks" target=*corbitt'sHouse]Corbitt's House[endlink][r]
[r]
[if exp="f.VisitCH==1"]
[link target=*Report]Report to Marina[endlink][r]
[endif]
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
   This is the Roxbury Sanitarium. It is a few miles from
@r
Boston.
@p
@backlay
[image storage=frontDesk page=back layer=base]
[trans method=crossfade time=1500]
@wt
@fg layer=0 storage=Nurse t=0 l=200 time=250
@val
    You go to the front desk and ask to see the Mr. and Mrs.
@r
Macario. The nurse tells you their room numbers.
@lr
@r
*frontDesk
   Where do you want to go?
@lr
[link target=*Vittorio]Visit Mr. Macario[endlink][r]
[link target=*Gabriela]Visit Mrs. Macario[endlink][r]
[if exp="f.Vittorio==1"&&exp="f.Gabriela==1"]
[link target=*endRS]Leave[endlink][r]
[else]
[link target=*move]Leave[endlink][r]
[endif]
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
[if exp="f.qV1==1"&& exp="f.qV2==1"]
[link target=*endVittorio]Leave[endlink][r]
[else]
[link target=*frontDesk]Leave[endlink][r]
[endif]
@s

*LookAroundTheRoom
@p
You look around the room but it looks like any other patient's room in the asylum.
@lr
@jump target=*sickroom1

*IntroduceYourself
@advl
   "Hello Mr. Macario, I am an investigator currently investigating the Corbitt house where you used to live."
@p
    Vittorio: ...
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
    Vittorio: ...
[eval exp="f.qV1=1"]
@jump target=*qVittorio

*qV2
@advl
   "What happened during the time after the accident?"
@p
    Vittorio: *mumbles*...burning......man...*mumbles*
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
    Gabriela Macario sits up in her bed, although she looks a 
@r
little confused she has a faint smile on her face.
@r
*sickroom2
@r
@lr
[link target=*LookAroundTheRoom2]Look around the room[endlink][r]
[link target=*IntroduceYourself2]Introduce yourself[endlink][r]
[if exp="f.qG1==1"&& exp="f.qG2==1" && "f.qG3==1"]
[link target=*endGabriela]Leave[endlink][r]
[else]
[link target=*frontDesk]Leave[endlink][r]
[endif]
@s

*LookAroundTheRoom2
@p
    You look around the room but it looks like any other
@r
patient's room in the asylum. A picture of her family rests on the table next to her bed.

@lr
@jump target=*sickroom2

*IntroduceYourself2
@advl
   "Hello Mrs. Macario, I am an investigator currently investigating the
@r
Corbitt house where you used to live."
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
[link target=*qG1]Can you tell me about your husband's accident?[endlink][r]
[link target=*qG2]What happened during the time after the accident?[endlink][r]
[link target=*qG3]What happened after your husband was committed?[endlink][r]
[link target=*sickroom2]Leave[endlink][r]
[s]

*qG1
@advl
   "Can you tell me about your husband's accident?"
@p
    Gabriela:"It was because of tha-that presence.That thing..."
@p
	Gabriela:"t-that thing is evil... evil. B-burning...the burning eyes."
@p
	Gabriela:"It was angry... so angry. "
[eval exp="f.qG1=1"]
@jump target=*qGabriela

*qG2
@advl
   "What happened during the time after the accident?"
@p
    Gabriela:"I-it was angry... s-so angry. Poor Vittorio... my dear Vittorio... i-it... it hated him s-so much."
[eval exp="f.qG2=1"]
@jump target=*qGabriela

*qG3
@advl
   "What happened after your husband was committed?"
@p
    Gabriela: "...th-the burning eyes...watching me... w-watching...eyes..."
[eval exp="f.qG3=1"]
@jump target=*qGabriela

*endGabriela
@p
@val
    You see Gabriela is distressed. You think it is best not to push her any further and decide to leave.
@lr
@eval exp="f.Gabriela=1"
@jump target=*frontDesk

*endRS
@cl
@p
@backlay
[image storage=frontDesk page=back layer=base]
[trans method=crossfade time=1500]
@wt
@fg layer=0 storage=Nurse t=0 l=200 time=250
@advl
    "Thank you Miss, I finished the visit."
@p
    Nurse: "Please sign here. It is a shame, what happened to those two... I hope they can get  better soon. Their children need them.
@p
    "They have children?"
@p
    Nurse: Yes, they have two children, Fino & Tito. They are living with
@r
their aunt in Baltimore.
@p
	Where do you want to go?
@lr
	[link target=*Baltimore]Go to Baltimore[endlink][r]
	[link target=*move]Leave[endlink][r]
[s]

*Baltimore
@cl
@p
@backlay
[image storage=Baltimore page=back layer=base]
[trans method=crossfade time=1500]
@wt
@fg layer=0 storage=FinoTito t=0 l=70 time=250
@val
    The two young boys, Fino and Tito, sit next to one another on a couch in their aunt and uncle's living room. Tito hangs
@r
onto his older brother's arm.
@r
*BaltimoreRoom
@r
@lr
[link target=*LookAroundTheRoom3]Look around the room[endlink][r]
[link target=*IntroduceYourself3]Introduce yourself[endlink][r]
[if exp="f.qFT1==1"&& exp="f.qFT2==1" && "f.qFT3==1"]
[link target=*endFT]Leave[endlink][r]
[else]
[link target=*move]Leave[endlink][r]
[endif]
@s

*LookAroundTheRoom3
@p
    The room is of moderate size with a few of the boy's toys
@r
scattered about. There are various pictures hanging on the
@r
wall.
@lr
@jump target=*BaltimoreRoom

*IntroduceYourself3
@advl
    "Hello Fino, Tito. I am an investigator trying to find out what happened in your old home."
@p
    Fino & Tito: ...
@p
@val
Next..
@lr
[link target=*qFT]Question the Macario boys[endlink][r]
[link target=*BaltimoreRoom]Leave[endlink][r]
[s]

*qFT
@p
@val
[link target=*qFT1]Can you tell me what happened in your old house?[endlink][r]
[link target=*qFT2]Can you tell me what happened to your parents?[endlink][r]
[link target=*qFT3]Did you ever see anything in the house?[endlink][r]
[link target=*BaltimoreRoom]Leave[endlink][r]
[s]

*qFT1
@advl
   "Can you tell me what happened in your old house?"
@p
    Fino & Tito: ...
[eval exp="f.qFT1=1"]
@jump target=*qFT

*qFT2
@advl
   "Can you tell me what happened to your parents?"
@p
    Tito: "Mommy..."
@lr
    Fino: "Aunt Carla said we can never see Mommy and Daddy again."
[eval exp="f.qFT2=1"]
@jump target=*qFT

*qFT3
@advl
   "Did you ever see anything in the house?"
@p
   Tito: "Strange man..."
@lr
   Fino: "There was a man with burning eyes, we saw him in our dreams."
[eval exp="f.qFT3=1"]
@jump target=*qFT

*endFT
@p
@val
    You see the boys do not know anything about what
@r
happened and decide to leave.
@lr
@eval exp="f.FT=1"
@jump target=*move

*TheMainLibrary
@cm
@cl
@backlay
@fadeinbgm storage=CelloSuite time=5000
[image storage=library page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
    Quite a marvelous institution, many interesting items are
@r
tucked away here. Perhaps some of them contain information
pertinent to the case at hand.
@lr
@r
[link target=*librarian]Speak to the librarian[endlink][r]
[link target=*SLibrary]Look around the library[endlink][r]
[link target=*move]Leave[endlink][r]
[s]

*librarian
@advl
@fg layer=0 storage=Librarian t=0 l=200 time=250
    "Hello, do you have any information on the Corbitt house?"
@p
Librarian: "The Corbitt house? Good heavens, why do you want to know
@r
about that place?"
@p
    "I am currently investigating the old house on the request of the
@r
landlord."
@p
Librarian: I see. Well, the library may have some old newspapers 
@r
containing on articles on the house and Mr. Corbitt in the back of the
@r
library. If you would like, I can also let you see Mr. Corbitt's obituary.

*qLibrarian
@p
[link target=*obituary]I would like to see the obituary.[endlink][r]
[if exp="f.obituary==1"]
[link target=*lawsuit]Ask librarian about result of second lawsuit[endlink][r]
[endif]
[link target=*SLibrary]Look around the library[endlink][r]
[s]

*obituary
@advl
    "I would like to see the obituary."
@p
Librarian: "Just one moment."
@p
@val
    The librarian walks over to one of the shelves behind her
@r
and pulls a book off from it. It appears the book contains 
@r
several obituaries from 1866. She opens it and flips to the
@r
page containing Mr. Corbitt's obituary.
@p
@advl
    Librarian: Here you go.
@p
@val
@playse storage="FlipPage"
[font italic=true] 
    Walter Corbitt is found dead in his home. A lawsuit has 
@r
been waged against Mr. Corbitt to prevent him from being 
@r
buried in his basement, as provided by his will. His executor 
@r
Reverend Michael Thomas, pastor of the [font color=0xff0000]Chapel of 
@r
Contemplation[font color=0xffffff] & Church of Our Lord Granter of Secrets, is 
@r
outraged by the lawsuit claiming those filing the lawsuit 
@r
should be ashamed for trying to deny a dead man's last wish.
@eval exp="f.RMT=1"
@eval exp="f.obituary=1"
@jump target=*qLibrarian



*lawsuit
@advl
Librarian: Hm... I am not sure. It was before my time. You 
can try looking for an article on it. We have quite a selection 
of old newspapers.
@jump target=*qLibrarian


*SLibrary
@cl
@val
    Walking around you come across a section containing old 
newspapers sorted by year of publication. You search
@r
through them.
*LBranch
@p
[link target=*LSearch]Search[endlink][r]
[link target=*librarian]Speak to the librarian[endlink][r]
[if exp="f.A1835==1"]
[link target=*A1835]Read the Article from 1835[endlink][r]
[endif]
[if exp="f.A1852==1"]
[link target=*A1852]Read the Article from 1852[endlink][r]
[endif]
[link target=*move]Leave[endlink][r]
@r
[s]

*LSearch
[eval exp="tf.LSearch=intrandom(0,9)"]
[if exp="tf.LSearch<3"]
[eval exp="f.A1835=1"]
*A1835
@playse storage="FlipPage"
Article from 1835
@lr
[font italic=true]
    ...Prosperous merchant builds beautiful home in central 
@r
Boston falls ill immediately after its completion. Property is
@r
put up for sale and purchased by Mr. Walter Corbitt, esquire...
@jump target=*LBranch
[elsif exp="tf.LSearch>6"]
[eval exp="f.A1852=1"]
*A1852
@playse storage="FlipPage"
Article from 1852
@lr
[font italic=true]
    ...The lawsuit against Mr. Corbitt was started by his
@r
neighbors, who petitioned to force him to leave the area "in
@r
consequence of his surious [[sic] habits and inauspicious
@r
demeanor".  Mr. Corbitt had no comment on the lawsuit...
@jump target=*LBranch
[else]
    No luck... maybe if you look a little harder.
@jump target=*LBranch
[endif]


*HallofRecords
@cm
@cl
@backlay
@fadeinbgm storage=OfftoOsaka time=5000
[image storage=HallofRecords page=back layer=base]
[trans method=crossfade time=1500]
@wt
@fg layer=0 storage=Clerk t=0 l=200 time=250
@val
    A young man gives you a curt nod as you enter the Hall of
@r
Records.
@lr
@r
*qClack
@val
[link target=*RIntroduceYourself]Introduce yourself to the clerk[endlink][r]
[link target=*qC1]Ask for the records for the Chapel of Contemplation[endlink][r]
[link target=*qC2]Ask for the register of churches[endlink][r]
[link target=*qC3]Ask for record of city officers participating in arrest/seizures[endlink][r]
[link target=*move]Leave[endlink][r]
[s]

*RIntroduceYourself
@advl
    " Good day, young man. I am an investigator currently investigating 
the Corbitt House."
@p
Clerk: Nice to meet you, if there is anything I can do to help just let me 
@r
know.
@p
@eval exp="f.RIntro=1"
@jump target=*qClack

*qC1
@p
@playse storage="FlipPage"
    The records you find are criminal court records.You find 
@r
references to actions taken in 1912 against the Chapel, but
@r
actual records are not present.
@p
[if exp="f.RIntro"==1]
@advl
    "Are there any more records on the Chapel of Contemplation?"
@p
Clerk: "Serious crimes are handled in the county, state or federal court. 
@r
Those records will not be kept here, you can find them at the [font color=0xff0000]Central
@r
Police Station[font color=0xffffff]."
@p
[endif]
@jump target=*qClack

*qC2
@p
@playse storage="FlipPage"
[font italic=true]
    ...1912 : The Chapel of Contemplation & Church of Our 
Lord Granter of Secrets - closure due to fire...
@p
@jump target=*qClack

*qC3
@p
@advl
Clerk: "Those records are filed at the [font color=0xff0000]Central Police Station[font color=0xffffff]."
@p
@eval exp="f.Record=1"
@jump target=*qClack


*CentralPoliceStation
@cm
@cl
@backlay
@fadeinbgm storage=LookBusy time=5000
[image storage=PoliceStation page=back layer=base]
[trans method=crossfade time=1500]
@wt
@fg layer=0 storage=Officer t=0 l=200 time=250
@val
    The station is bustling with activity. As you walk in, you are stopped by an 
older officer. Although he has a stern looking face, he smiles gently.
@p
@advl
Police Officer: "Can I help you?"
*qOfficer
@p
@val
[link target=*OIntroduceYourself]Introduce yourself[endlink][r]
[link target=*qO1]Chat with the officer.[endlink][r]
[if exp="f.Record==1"]
[link target=*qO2]Ask for record of city officers participating in arrest/seizures[endlink][r]
[endif]
[link target=*move]Leave[endlink][r]
[s]    

*OIntroduceYourself
@advl
    "Hello, sir. I am an investigator looking into the past of the Corbitt
@r
house at the request of the current landlord."
@p
Officer: "Well, that is fine and all, but what brings you here?"
@jump target=*qOfficer

*qO1
@advl
    "Do you know anything about the old Corbitt house?"
@p
Officer: "People around the neighborhood say it is haunted."
@p
[if exp="f.RMT==1"]
    "Do you know anything about the charges against the Chapel of
@r
Contemplation?"
@p
Officer: "Why do you want to know? I thought you said you were looking
@r
into the Corbitt house."
@p
    "Mr. Corbitt's executor, reverend Michael Thomas was a pastor at the
@r
Chapel of Contemplation. I believe learning more about the Chapel I can
@r
understand more about who Walter Corbitt was."
@p
Officer: "I do not know what you mean by that, but I do not know much
@r
about the charges."
[endif]
@jump target=*qOfficer

*qO2
@advl
Officer: "Arrest and seizure records? Why do you want to see those?"
@p
    "I want to look into the charges against the Chapel from 1912."
*searchRecords
[if exp="f.CRecords==1"]
@jump target=*CRecord
[endif]
[eval exp="tf.ARecords=intrandom(0,9)"]
[if exp="tf.ARecords"<4]
@p
Officer: "There is really not much to see."
@p
[link target=*searchRecords]"Please, I really need to see them..."[endlink][r]
[link target=*qOfficer]"OK..."[endlink][r]
[s]
[endif]
[eval exp="f.CRecords=1"]
*CRecord
@p
Officer: "Alright, I do not see the harm. Follow me."
@p
@cm
@cl
[image storage=black page=back layer=base]
[trans method=crossfade time=1500]
@wt
@playse storage="footsteps"
@ws
@backlay
[image storage=RecordsRoom page=back layer=base]
[trans method=crossfade time=1500]
@wt
@fg layer=0 storage=Officer t=0 l=200 time=250
*DocumentList
@val
@p
Which document do you want to read?
@r
[link target=*RaidDocument]Raid Document[endlink][r]
[link target=*AutopsyReport]Autopsy Report[endlink][r]
[link target=*ArrestRecords]Arrest Records[endlink][r]
[link target=*PastorMTArrestRecord]Pastor Michael Thomas Arrest Record[endlink][r]
[link target=*@jump target=*qOfficer]Leave[endlink][r]
@r
[s]

*RaidDocument
@playse storage="FlipPage"
Raid Document:
@lr
[font italic=true]
    RAID PROTOCOL. Location: The Chapel of
@r
Contemplation & Church of Our Lord Granter of Secrets.
@r
Reason: Involvement in kidnapping of children in area. 
@r
RESULTS. Casualties: 3 policemen, 17 cult members. Cause
@r
of Death: Gunshot, Fire.
@p
@jump target=*DocumentList

*AutopsyReport
@playse storage="FlipPage"
Autopsy Report:
@lr
    You look through the autopsy reports of the three
@r
policemen and seventeen cult member. The reports are not
@r
very detailed, revealing very little other than the cause
@r
of death.
@p
@jump target=*DocumentList

*ArrestRecords
@playse storage="FlipPage"
Arrest Records:
@lr
    You find arrest records for 54 members of the church.
@r
Scanning through them you see only 8 notices of release.
@r
The record does not show what happened to the other 46 
@r
members.
@p
@advl
    "What happened to other of the cult members from the arrest?
@r
The ones that were not released?"
@p
Officer: I do not know. I was not involved in that case.
@p
    "You would think the raid against the church would have appeared in
@r
at least one newspaper."
@p
Officer: ...
@p
@jump target=*DocumentList

*PastorMTArrestRecord
@playse storage="FlipPage"
Pastor Michael Thomas Arrest Record:
@lr
[font italic=true]
    ARREST RECORD. Name: Michael Thomas
@r
Gender: Male CHARGES. Second-Degree Murder of Julia
@r
Brown, Second-Degree Murder of Nicholas Baldini,
@r
Second-Degree Murder of Clarence Smith, Second-Degree
@r
Murder of Donald Moyer, Second-Degree Murder of Ruth
@r
Hollis... 1917: Escape from prison.
@p
@jump target=*DocumentList
	
	
*TheNeighborhood
@val
@fg layer=0 storage=Dooley t=0 l=200 time=250
    A vendor selling cigars and newspapers. His small shop 
@r
sign reads "Mr. Dooley's Cigars"
@lr
@r
*qDooley
[link target=*talkD]Talk[endlink][r]
[link target=*move]Leave[endlink][r]
[s]

*talkD
@advl
    "Excuse me, Mr. Dooley. Do you happen to know anything about this
@r
area?"
@p
Mr. Dooley: "Who wants to know?"
@p
    "I am an investigator looking into the old Corbitt house."
@p
Mr. Dooley: "The old Corbitt house, you say?"
@p
[if exp="f.RMT==1"]
    "Yes, I'm trying to find out more about the history. Right now I'm
@r
searching for the Chapel of Contemplation, I believe it may have some
@r
sort of connection to the history of the house. The problem is, I cannot
@r
seem to find where it is."
@p
Mr. Dooley: "The Chapel of Contemplation, huh. If I remember correctly it should be in that direction."
[eval exp="f.tcoc=1"]
[else]
    "Yes, I'm trying to find out more about the history."
@p
	Mr.Dooley: "Huh..."
[endif]
@p
@val
@jump target=*qDooley
	


*TheChapelofContemplation
@cm
@cl
@backlay
@fadeinbgm storage=MaryCeleste time=5000
[image storage=ChapelofContemplation page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
    What is left of the Chapel of Contemplation stands at the
@r
end of a crooked dingy street. The ruins are so weathered
@r
and overgrown with greenery that the gray stone rubble
@r
seems more like natural stone than former walls and
@r
foundation.
@p
@fg layer=0 storage=logo t=50 l=200 time=250
@advl
    You pass a wall with a strange symbol upon it. 
*mTCoC
@backlay
[image storage=ChapelofContemplation page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
[link target=*ExamineSymbol]Examine the symbol[endlink][r]
[link target=*ContinueSearching]Continue searching the rest of the Chapel remains[endlink][r]
[if exp="f.ChapelBasement==1"]
[link target=*ChapelBasement]Go to the Basement[endlink][r]
[endif]
[link target=*move]Leave[endlink][r]
[s]

*ExamineSymbol
[playse storage="Headache" loop=true]
@p
    As you near the symbol, you begin to feel an irritating
@r
tingle in your forehead, like a headache, but not quite.
@p
[stopse]
@jump target=*mTCoC

*ContinueSearching
@p
[link target=*LookAround]Look around the area[endlink][r]
[link target=*WalkAround]Walk around[endlink][r]
[link target=*ExamineDirt]Examine the dirt[endlink][r]
[link target=*mTCoC]Leave[endlink][r]
[s]

*LookAround
    Looking around you see mostly block of granite,
@r
half-burnt rotten timbers, and ancient rubbish.
@p
@jump target=*ContinueSearching

*WalkAround
@cl
@cm
@playse storage=Collapse
    You take a step and discover, too late, that the earth you
@r
are standing on is covering weakened floorboards. You fall
@r
ten feet into the basement.
[font color=0xff0000] HP-1
[eval exp="f.TCoCFall=1"]
[quake time=5000 timemode=ms]
@p
@bg storage=black time=1000
[ws]
@eval exp="f.ChapelBasement=1"
@jump target=*ChapelBasement

*ExamineDirt
@cl
@cm
    You examine the dirt and realize that the earth you are
@r
standing on is covering weakened floorboard. You smash the
@r
boards and discover a basement.
@p
@eval exp="f.ChapelBasement=1"
@jump target=*mTCoC

*ChapelBasement
@backlay
[image storage=ChapelBasement page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
    It seems this part of the basement was sealed off from the
@r
rest, reached by separate stairs buried under tons of rubble.
@r
Within it are two skeletons dressed in fragments of silk robes.
@r
You also see some old cabinets full of books as well as a
@r
rotting desk.

*BasementSearch
@p
Next...[r]
[link target=*Skeletons]Examine the skeletons[endlink][r]
[link target=*Cabinets]Examine the cabinets[endlink][r]
[link target=*Desk]Examine the desk[endlink][r]
[link target=*mTCoC]Leave[endlink][r]
[s]

*Skeletons
@p
    It would seem these skeletons are cultists who hid and
@r
perished in the fire.
@jump target=*BasementSearch

*Cabinets
@p
    The cabinets are full of moldering church records.
@lr
@r
[link target=*ExamineRecords]Examine the records[endlink][r]
[link target=*BasementSearch]Leave[endlink][r]
[s]

*ExamineRecords
@p
    You pick up one of the records, it is a journal of cult
@r
activities: [font italic=true]...1966: Walter Corbitt is buried in the basement of
@r
his home in accordance with his wishes and with the wishes of the One Who Waits in 
the Dark...
@jump target=*BasementSearch

*Desk
@p
    Chained to the rotting desk is an enormous 
volume bound in [font color=0xff0000]human skin[font color=0xffffff].
[eval exp="f.HSBook=1"]
@lr
@r
[link target=*ExamineVolume]Examine the volume[endlink][r]
[link target=*BasementSearch]Leave[endlink][r]
[s]

*ExamineVolume
    It is a copy of the "Liber Ivonis", hand-written in Latin, but
@r
rotten and worm-eaten so that whole sections no longer can
@r
be understood.
@jump target=*BasementSearch

*Report
@val
You really want to report to Marina now?
@lr
[link storage="endding.ks" target=*endding]Yes[endlink][r]
[link target=*move]No[endlink][r]
[s]