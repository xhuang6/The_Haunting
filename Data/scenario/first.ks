*start
;--------------------------------------
;           display cover
;--------------------------------------
*cover
@menul
@bg storage=cover time=1500
@wait time=1000

;--------------------------------------
;           menu
;--------------------------------------
*menu
@fadeinbgm storage=UnwrittenReturn time=5000
@clickskip enabled=false
@startanchor
@menul
@bg storage=menu time=2000
@wait time=100
@font size=32
@nowait

@locate x=400 y=300
@button normal=start storage=script.ks target=*scenario

@locate x=400 y=380
@button normal=exit exp="kag.close()"
@s

@resetfont
@endnowait
@clickskip enabled=true
@s
