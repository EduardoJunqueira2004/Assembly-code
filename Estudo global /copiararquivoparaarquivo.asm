.data
# File names and buffer
source: .asciiz "source.txt"
dest:   .asciiz "dest.txt"
buffer: .byte 0
.text
# Open file to read
li   $v0, 13      # system call for open file
la   $a0, source  # address of the source file name
li   $a1, 0       # file open for reading
li   $a2, 0       # open the file with default permissions
syscall           # call the operating system
move $s0, $v0     # save the file descriptor in $s0

# Create file to write
li   $v0, 15      # system call for create file
la   $a0, dest    # address of the destination file name
li   $a1, 0666    # file permissions: rw-rw-rw-
syscall           # call the operating system
move $s1, $v0     # save the file descriptor in $s1

# Read from source file and write to destination file
loop:
  li   $v0, 14      # system call for read from file
  move $a0, $s0     # file descriptor of source file
  la   $a1, buffer  # address of buffer to read into
  li   $a2, 1       # read one byte at a time
  syscall           # call the operating system
  beq  $v0, 0, done # if read returns 0, we're done
  
  li   $v0, 17      # system call for write to file
  move $a0, $s1     # file descriptor of destination file
  la   $a1, buffer  # address of buffer to write
  li   $a2, 1       # write one byte at a time
  syscall           # call the operating system
  b loop             # go back to the beginning of the loop

done:
  li   $v0, 16      # system call for close file
  move $a0, $s0     # file descriptor of source file
  syscall           # call the operating system
  
  li   $v0, 16      # system call for close file
  move $a0, $s1     # file descriptor of destination file
  syscall           # call the operating system



# End of program
  li   $v0, 10      # system call for exit
  syscall           # call the operating system
