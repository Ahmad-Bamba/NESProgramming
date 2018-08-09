    ; header of basically all NES assembly files
    .inesprg 1 ; one bank for sprites
    .ineschr 1 ; one bank for images
    .inesmap 0 ; use 0th iNES map (TODO: why does this matter?)
    .inesmir 1 ; mirror is true (TODO: but why??)

    .bank 0
    .org $C000 ; start code at 0xC000

    ; start of code

reset: ; reset NES settings
    sei ; set all interupt requests to 0
    cld ; disable decimal mode(?)
    nop

init: ; set background to black, put Triss in center of screen 
    nop

movesprite: ; arrow keys -> move Triss
    nop

togglebg: ; start btn -> change bg color to next color
    nop

main: ; handle main event loop
    jmp main



