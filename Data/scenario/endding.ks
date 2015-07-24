*endding|The Haunting
[if exp="f.findDagger==1"]
@jump target=*NormalEnding
[else]
@jump target=*BadEndding
[endif]


*NormalEnding
@cm
@cl
@backlay
@fadeinbgm storage=Anamalie time=5000
[image storage=black page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
    "This house is very dangerous."
@r
	I think to myself as I make my way out of the house.
@p
@advl
-The Next Day-
@p
@fg layer=0 storage=Marina t=0 l=200 time=250
Marina: "Thank you for your help. I cannot give you the bonus since the problem is 
not solved yet, but here is your payment for the work you did."
@p
@advl
    You did not manage to get rid of Corbitt, but at least you found the 
problem. Maybe Marina will sell the house or hire a new investigator in the future. 
However, it is not your concern.
@lr
@r
[[Normal End]
@p
@jump target=*staff


*BadEndding
@cm
@cl
@backlay
@fadeinbgm storage=Words time=5000
[image storage=black page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
    I wake up suddenly in my bed. 
@lr
    "Ow...... my head..." 
@lr
    I have to remember not to drink so much.
@lr
    The headache gets worse as the phone starts ringing.
@r
I pick it up.
@p
@advl
@fg layer=0 storage=Marina t=0 l=200 time=250
    "Hello, this is Marina. I'm just calling to see if you solved the case yet."
@p
@val
    Oh, the case...
@lr
    I tell her that everything is fine, that she will be able to rent the house without worry.
@p
@advl
Marina: "Wonderful! Thank you so much!"
@p
@cl
@val
    In order to confirm your findings, Marina spends a night in
@r
the house. In the morning she is found stabbed to death in
@r
the basement by Corbitt's magic dagger. You are now being
@r
charged with murder, if you cannot prove the house is
@r
haunted you will be thrown in jail!!
@lr
@r
[[Bad End]
@p
@jump target=*staff

*DeadEndding
@stopse
@stopse buf=1
@cm
@cl
@backlay
@fadeinbgm storage=Anamalie time=5000
[image storage=black page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
    To put it bluntly, you are dead. After a few days of not
@r
hearing from you, Marina and her cousin report your
@r
disappearance to the police. They search the Corbitt house
@r
and, although they find evidence of you having been there, they 
do not find your body. You are currently a missing person case for the police. 
Meanwhile, Marina has hired a new investigator to settle the matter at the Corbitt 
house. Let us hope they have better luck than you did.
@lr
@r
[font color=0xff0000][[Dead End]
@p
@jump target=*staff


*GoodEndding
@cm
@cl
@backlay
@fadeinbgm storage=InYourArms time=5000
[image storage=black page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
    I stare for a moment at the ashes, then straighten myself up.
@lr	
    "This is going to one interesting story to tell my friends..."
@lr
    I think to myself as I make my way out of the house.
@p
@advl
-The Next Day-
@p
@fg layer=0 storage=Marina t=0 l=200 time=250
    Marina: "Thank you so much for all your help! Here is your money."
@p
@val
    You did it! Thanks to you the Corbitt house is free from Walter 
Corbitt's grasp. Marina can rest easy renting out the house and new tenants of the 
house can rest easy in their new home because of you.
@lr
@r
[[Good End]
@p
@jump target=*staff

*staff
@call storage=staff.ks target=*staff	
@jump storage=first.ks target=*menu
@s