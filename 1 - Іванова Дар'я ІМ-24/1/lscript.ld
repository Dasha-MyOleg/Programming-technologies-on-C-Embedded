MEMORY
{
    FLASH (rx ) : ORIGIN = 0x08000000, LENGTH = 32K
    RAM   (rxw) : ORIGIN = 0x20000000, LENGTH = 4K
}

__stack_start = ORIGIN(RAM) + LENGTH(RAM);
