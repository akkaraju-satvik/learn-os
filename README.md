# OS Development

## Usage

Start by compiling the asm file to binary using

`nasm -f bin boot.asm -o boot.bin`

Run the binary by spinning up a VM using `qemu-system-x86_64 boot.bin`
