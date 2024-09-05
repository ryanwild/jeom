# correct escape codes for colors
_OPEN="\001"
_CLOSE="\002"
_ESC="\033"

_NORMAL="$_OPEN$_ESC[0;00m$_CLOSE"
_LIGHTRED="$_OPEN$_ESC[38;5;196m$_CLOSE"

read -r -d '' _SPLASH <<'EOF'
\n
                                                                    
                       memento mori                                 
                                                                    
                       _,.-------.,_                                
                   ,;~'             '~;,                            
                 ,;                     ;,                          
                ;                         ;                         
               ,'                         ',                        
              ,;                           ;,                       
              ; ;      .           .      ; ;                       
              | ;   ______       ______   ; |                       
              |  `/~"     ~" . "~     "~\'  |                       
              |  ~  ,-~~~^~, | ,~^~~~-,  ~  |                       
               |   |        }:{        |   |                        
               |   l   x   / | \   x   !   |                        
               .~  (__,.--" .^. "--.,__)  ~.                        
               |     ---;' / | \ `;---     |                        
                \__.       \/^\/       .__/                         
                 V| \                 / |V                          
                  | |T~\___!___!___/~T| |                           
                  | |`IIII_I_I_I_IIII'| |                           
                  |  \,III I I I III,/  |                           
                   \   `~~~~~~~~~~'    /                            
                     \   .       .   /                              
                       \.    ^    ./                                
                         ^~~~^~~~^                                  
                                                                    
                        carpe diem                                  
                                                                    
\n
EOF

echo -e "$_LIGHTRED$_SPLASH$_NORMAL"


if command -v "cal" &> /dev/null
then
  cal -3 $(date +"%y-%m-%d")
fi
