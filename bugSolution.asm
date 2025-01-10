mov ecx, [array_size] ; Get the size of the array
mov edx, [array_index] ; Get the index
cmp edx, ecx ; Compare index to size
jge handle_out_of_bounds ; Jump if index is out of bounds
mov eax, [ebx + edx*4 + 0x10] ; Access memory only if index is in bounds
jmp continue
handle_out_of_bounds:
; Handle the out-of-bounds condition appropriately (e.g., return an error code)
mov eax, -1 ; Indicate an error
continue:
; ...rest of the code...