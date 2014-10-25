ehdr:
  .ident: ; Magic number and other info
	db 0x7F, "ELF", 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  .type: ; Object file type
	dw 0x0002
  .machine: ; Architecture
	dw 0x003E
  .version: ; Object file version
	dd 0x00000001
  .entry: ; Entry point virtual address
	dq 0x0000000000400280
  .phoff: ; Program header table file offset
	dq phdr
  .shoff: ; Section header table file offset
	dq 0x0000000000000478
  .flags: ; Processor-specific flags
	dd 0x00000000
  .ehsize: ; ELF header size in bytes
	dw ehsize
  .phentsize: ; Program header table entry size
	dw 0x0038
  .phnum: ; Program header table entry count
	dw 0x0005
  .shentsize: ; Section header table entry size
	dw 0x0040
  .shnum: ; Section header table entry count
	dw 0x000C
  .shstrndx: ; Section header string table index
	dw 0x000B

ehsize equ $ - ehdr

phdr:

  .type:   ; Segment type
	dd 0x00000006
  .flags:  ; Segment flags
	dd 0x00000005
  .offset: ; Segment file offset
	dq 0x0000000000000040
  .vaddr:  ; Segment virtual address
	dq 0x0000000000400040
  .paddr:  ; Segment physical address
	dq 0x0000000000400040
  .filesz: ; Segment size in file
	dq 0x0000000000000118
  .memsz:  ; Segment size in memory
	dq 0x0000000000000118
  .align:  ; Segment alignment
	dq 0x0000000000000008

db 0x03
db 0x00
db 0x00
db 0x00
db 0x04
db 0x00
db 0x00
db 0x00
db 0x58 ; X
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x58 ; X
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x58 ; X
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x0F
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x0F
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x05
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xAD
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xAD
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x20 ;
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x06
db 0x00
db 0x00
db 0x00
db 0xB0 ; °
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xB0 ; °
db 0x02
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xB0 ; °
db 0x02
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x68 ; h
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x68 ; h
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x20 ;
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x02
db 0x00
db 0x00
db 0x00
db 0x06
db 0x00
db 0x00
db 0x00
db 0xB0 ; °
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xB0 ; °
db 0x02
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xB0 ; °
db 0x02
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x40 ; @
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x40 ; @
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x08
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x2F ; /
db 0x6C ; l
db 0x69 ; i
db 0x62 ; b
db 0x2F ; /
db 0x6C ; l
db 0x64 ; d
db 0x36 ; 6
db 0x34 ; 4
db 0x2E ; .
db 0x73 ; s
db 0x6F ; o
db 0x2E ; .
db 0x31 ; 1
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x10
db 0x00
db 0x00
db 0x00
db 0x12
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x0B
db 0x00
db 0x00
db 0x00
db 0x12
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x6C ; l
db 0x69 ; i
db 0x62 ; b
db 0x63 ; c
db 0x2E ; .
db 0x73 ; s
db 0x6F ; o
db 0x2E ; .
db 0x36 ; 6
db 0x00
db 0x65 ; e
db 0x78 ; x
db 0x69 ; i
db 0x74 ; t
db 0x00
db 0x70 ; p
db 0x72 ; r
db 0x69 ; i
db 0x6E ; n
db 0x74 ; t
db 0x66 ; f
db 0x00
db 0x47 ; G
db 0x4C ; L
db 0x49 ; I
db 0x42 ; B
db 0x43 ; C
db 0x5F ; _
db 0x32 ; 2
db 0x2E ; .
db 0x32 ; 2
db 0x2E ; .
db 0x35 ; 5
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x01
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x10
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x75 ; u
db 0x1A
db 0x69 ; i
db 0x09
db 0x00
db 0x00
db 0x02
db 0x00
db 0x17
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x08
db 0x04
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x07
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x10
db 0x04
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x07
db 0x00
db 0x00
db 0x00
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xFF ; ÿ
db 0x35 ; 5
db 0xA2 ; ¢
db 0x01
db 0x20 ;
db 0x00
db 0xFF ; ÿ
db 0x25 ; %
db 0xA4 ; ¤
db 0x01
db 0x20 ;
db 0x00
db 0x0F
db 0x1F
db 0x40 ; @
db 0x00
db 0xFF ; ÿ
db 0x25 ; %
db 0xA2 ; ¢
db 0x01
db 0x20 ;
db 0x00
db 0x68 ; h
db 0x00
db 0x00
db 0x00
db 0x00
db 0xE9 ; é
db 0xE0 ; à
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0x25 ; %
db 0x9A
db 0x01
db 0x20 ;
db 0x00
db 0x68 ; h
db 0x01
db 0x00
db 0x00
db 0x00
db 0xE9 ; é
db 0xD0 ; Ð
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0x48 ; H
db 0xBF ; ¿
db 0xA0
db 0x02
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xE8 ; è
db 0xD1 ; Ñ
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0xBF ; ¿
db 0x00
db 0x00
db 0x00
db 0x00
db 0xE8 ; è
db 0xD7 ; ×
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0xB8 ; ¸
db 0x0A
db 0x00
db 0x00
db 0x00
db 0xC3 ; Ã
db 0x00
db 0x68 ; h
db 0x65 ; e
db 0x6C ; l
db 0x6C ; l
db 0x6F ; o
db 0x20 ;
db 0x77 ; w
db 0x6F ; o
db 0x72 ; r
db 0x6C ; l
db 0x64 ; d
db 0x0A
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x04
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x68 ; h
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x05
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xC8 ; È
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x06
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x80
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x0A
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x23 ; #
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x0B
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x18
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x15
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x03
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xF0 ; ð
db 0x03
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x30 ; 0
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x14
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x07
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x17
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x18
db 0x02
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xFE ; þ
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0x6F ; o
db 0x00
db 0x00
db 0x00
db 0x00
db 0xF8 ; ø
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0x6F ; o
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xF0 ; ð
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0x6F ; o
db 0x00
db 0x00
db 0x00
db 0x00
db 0xEC ; ì
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xB0 ; °
db 0x02
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x66 ; f
db 0x02
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x76 ; v
db 0x02
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x2E ; .
db 0x73 ; s
db 0x68 ; h
db 0x73 ; s
db 0x74 ; t
db 0x72 ; r
db 0x74 ; t
db 0x61 ; a
db 0x62 ; b
db 0x00
db 0x2E ; .
db 0x69 ; i
db 0x6E ; n
db 0x74 ; t
db 0x65 ; e
db 0x72 ; r
db 0x70 ; p
db 0x00
db 0x2E ; .
db 0x64 ; d
db 0x79 ; y
db 0x6E ; n
db 0x73 ; s
db 0x79 ; y
db 0x6D ; m
db 0x00
db 0x2E ; .
db 0x64 ; d
db 0x79 ; y
db 0x6E ; n
db 0x73 ; s
db 0x74 ; t
db 0x72 ; r
db 0x00
db 0x2E ; .
db 0x67 ; g
db 0x6E ; n
db 0x75 ; u
db 0x2E ; .
db 0x76 ; v
db 0x65 ; e
db 0x72 ; r
db 0x73 ; s
db 0x69 ; i
db 0x6F ; o
db 0x6E ; n
db 0x5F ; _
db 0x72 ; r
db 0x00
db 0x2E ; .
db 0x72 ; r
db 0x65 ; e
db 0x6C ; l
db 0x61 ; a
db 0x2E ; .
db 0x70 ; p
db 0x6C ; l
db 0x74 ; t
db 0x00
db 0x2E ; .
db 0x74 ; t
db 0x65 ; e
db 0x78 ; x
db 0x74 ; t
db 0x00
db 0x2E ; .
db 0x72 ; r
db 0x6F ; o
db 0x64 ; d
db 0x61 ; a
db 0x74 ; t
db 0x61 ; a
db 0x00
db 0x2E ; .
db 0x64 ; d
db 0x79 ; y
db 0x6E ; n
db 0x61 ; a
db 0x6D ; m
db 0x69 ; i
db 0x63 ; c
db 0x00
db 0x2E ; .
db 0x67 ; g
db 0x6F ; o
db 0x74 ; t
db 0x2E ; .
db 0x70 ; p
db 0x6C ; l
db 0x74 ; t
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x0B
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x58 ; X
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x58 ; X
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x0F
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x13
db 0x00
db 0x00
db 0x00
db 0x0B
db 0x00
db 0x00
db 0x00
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x80
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x80
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x48 ; H
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x03
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x08
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x18
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x1B
db 0x00
db 0x00
db 0x00
db 0x03
db 0x00
db 0x00
db 0x00
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xC8 ; È
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xC8 ; È
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x23 ; #
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x23 ; #
db 0x00
db 0x00
db 0x00
db 0xFE ; þ
db 0xFF ; ÿ
db 0xFF ; ÿ
db 0x6F ; o
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xF8 ; ø
db 0x01
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xF8 ; ø
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x20 ;
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x03
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x08
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x32 ; 2
db 0x00
db 0x00
db 0x00
db 0x04
db 0x00
db 0x00
db 0x00
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x18
db 0x02
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x18
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x30 ; 0
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x02
db 0x00
db 0x00
db 0x00
db 0x06
db 0x00
db 0x00
db 0x00
db 0x08
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x18
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x37 ; 7
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x06
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x50 ; P
db 0x02
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x50 ; P
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x30 ; 0
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x10
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x10
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x3C ; <
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x06
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x80
db 0x02
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x80
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x1F
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x10
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x42 ; B
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xA0
db 0x02
db 0x40 ; @
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xA0
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x0D
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x04
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x4A ; J
db 0x00
db 0x00
db 0x00
db 0x06
db 0x00
db 0x00
db 0x00
db 0x03
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xB0 ; °
db 0x02
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xB0 ; °
db 0x02
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x40 ; @
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x03
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x08
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x10
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x53 ; S
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x03
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xF0 ; ð
db 0x03
db 0x60 ; `
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0xF0 ; ð
db 0x03
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x28 ; (
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x08
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x08
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x03
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x18
db 0x04
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x5C ; \
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x01
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
