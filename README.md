# Assembly Code Bug: Out-of-Bounds Memory Access

This repository demonstrates a common error in assembly programming:  out-of-bounds memory access due to an unscaled index in a `mov` instruction. The bug is in `bug.asm` and the solution is in `bugSolution.asm`.

**Bug:** The `mov eax, [ebx+ecx*4]` instruction is vulnerable to segmentation faults if `ecx` holds an unexpectedly large value, exceeding the bounds of the allocated memory at `ebx`.

**Solution:**  The solution involves adding validation to check the value of `ecx` before the memory access, ensuring it remains within safe boundaries.