mov ecx, [some_size_variable]

; Check if ecx is within bounds
cmp ecx, 100 ; Example limit, replace with actual bound
jge out_of_bounds_handler

mov eax, [ebx+ecx*4]
jmp after_access

out_of_bounds_handler:
; Handle out-of-bounds condition
; ... error handling ...

after_access:
; Continue execution
