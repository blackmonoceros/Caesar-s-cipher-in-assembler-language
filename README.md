# Caesar-s-cipher-in-assembler-language
Caesar cipher implementation in assembly language (TASM x86) for capital letters of the Latin alphabet.
Here's a description of the Caesar cipher implementation in assembly language (x86 TASM):

Overview
This assembly code implements the Caesar cipher for uppercase Latin alphabet letters. 
The Caesar cipher is a simple substitution cipher that shifts each letter in the plaintext by a fixed number of positions in the alphabet.

Code Structure
Data Segment
tekst: Input string "HELLOWORLD"

przesuniecie: Shift value (3 in this case)

wynik: Output buffer for the encrypted text

Code Segment
The main logic is implemented in the following steps:

Initialize data and extra segments

Set up source (SI) and destination (DI) pointers

Main loop to process each character:

Load character from source

Check if it's an uppercase letter (A-Z)

If so, apply the Caesar cipher shift

Otherwise, copy the character as-is

Store the result in the destination buffer

Display the result using DOS interrupt

Encryption Process
For each uppercase letter:

Convert to 0-25 range (subtracting 'A')

Add the shift value

Perform modulo 26 operation (using division)

Convert back to ASCII (adding 'A')

Limitations
Only handles uppercase English letters

Fixed shift value defined in the data segment

No support for non-English characters

Possible Enhancements
Add support for lowercase letters

Implement input for text and shift value

Extend character range support

Usage Example
Input: "HELLOWORLD" with shift 3
Output: "KHOORZRUOG"

This implementation demonstrates basic assembly techniques including loop structures, arithmetic operations, and DOS interrupts for I/O operations.
