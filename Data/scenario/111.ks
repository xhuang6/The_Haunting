*endding|The Haunting
[if exp="f.HSBook==1"]
@jump target=*EndingCheck
[else]
@jump target=*BadEnd
[endif]


*EndingCheck
@p
@cm
@cl
@val
Not Bad Ending
@p
@jump target=*staff


*BadEnd
@p
@cm
@cl
@fadeinbgm storage=Words time=5000
@backlay
[image storage=RecordsRoom page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
    I wake up suddenly in my bed. 
@lr
    "Ow…... my head…" 
@lr
    I have to remember not to drink so much.
@lr
    The headache gets worse as the phone starts ringing. I pick it up.
@p
@advl
@fg layer=0 storage=Marina t=0 l=200 time=250
    "Hello, this is Marina. I’m just calling to see if you solved the case yet."
@p
@val
    Oh, the case…
@lr
    I tell her that everything is fine, that she will be able to rent the house without worry.
@p
@advl
Marina: "Wonderful! Thank you so much!"
@p
@val
    In order to confirm your findings, Marina spends a night in the house. In the morning she is found stabbed to death in the basement by Corbitt’s magic dagger. You are now being charged with murder, if you cannot prove the house is haunted you will be thrown in jail!
@lr
@r
[[Bad End]
@p
@jump target=*staff

*staff
@call storage=staff.ks target=*staff	
@text on
@jump storage=first.ks target=*menu
@s