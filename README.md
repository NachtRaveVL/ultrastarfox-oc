# UltraStarFox

Star Fox / Starwing source code adapted for overclocked SuperFX cartridge development.

> **NR-RetroWorks fork notice:** This repository is an overclocking-focused fork of the original [UltraStarFox project](https://github.com/Sunlitspace542/ultrastarfox), maintained by NachtRaveVL for use with the **26/33MHz+ SuperFX overclocking PCB** sold through [NR-RetroWorks on Etsy](https://www.etsy.com/shop/NachtRaveRetroWerks). The upstream repository remains the general-purpose source project.
>
> **Two source layouts are provided:** **1MB Original** retains the more original, non-folderized layout for the GSU-1 cartridge target; **2MB Folderized** retains the reorganized source tree for GSU-2 builds and emulator development. These are distinct build targets; do not assume that output for one is interchangeable with the other.
>
> **The hardware overclock is external:** a replacement clock source drives the SuperFX hardware. Source-level configuration and timing work are separate from the physical clock change.

Go [here](#building) to jump straight to the building instructions.

## Credits (A-Z)

- **Argonaut Software and Nintendo** — Original Star Fox development.
- **H A M G E R** - Wireframe shield meter color changing Super FX code
- **Kandowontu** - The Original Star Fox Guy, Lifesaver, Rumble System Programmer (Sequences), Rumble Effect Programmer/Polishing, Implemented several features (Mouse, Debug Mode/Crash Handler Restoration, Limit Removals, Easy Wireframes, other fixes and improvements)
- **MrL314** - Texture Limit Removal Super FX Code
- **Nachtrave** - Optimizations, overclocking/elapsed time fixes, FASTROM support
- **Phonymike** - Tools (mugconv, fontconv), ROM Header
- **Randal Linden** - Rumble Pad Designer, Rumble Pad Docs, Rumble System Programmer (Rumble Pad NMI Code)
- **Repzilon** - Misc. documentation
- **SegaRetro92** - Texture/Palette Docs, General Graphics Stuff, Author of Several Graphics Tools, German Version GFX/Text Restoration
- **Sunlit** - Maintainer, Documentation, Toolchain Engineer, Rumble System Programmer ("Flat Rate" Rumble), Rumble Effect Programmer, Tool Author, German Version GFX/Text Restoration, Release Builder Script, MSU-1 programming

## Features

### Cartridge Hardware Support and ROM Configuration

- Intended for real **GSU-1/2 SuperFX hardware overclocked to approximately 26/33MHz+** using the NR-RetroWorks overclocking adapter PCB
- Super FX clock divider disabled via `fast equ 1`
- Super FX MS1 high-speed multiply enabled
- FastROM support
- MSU-1 support

### Accessory Support

- SNES Mouse support and "analog stick" support via the SNES mouse
- SNES Rumble Pad support and macros (see ``SF\INC\RMBLMACS.INC`` for macros)
- SNES NTT Data Pad support and macros to read extra keys (see ``SF\INC\STRATMAC.INC`` for macros)

### QOL / Ease-of-use

- Very configurable out-of-the-box, see ``SF\CONFIG\CONFIG.INC`` for more info
- Lots of free ROM space (2MB/16Mbit ROM)
- Bugfixes and improvements
- Build process optimized for speed
- Palettes and graphics crunched, textures interleaved, and fonts built at assembly
- Uses ARGLINK and ARGSFX from Star Fox 2 as linker and assembler instead of SL and SASM
- Easier creation of wireframe models (replace face3 and face4 with aface3 and aface4 in your shape file)
- Upload ROM directly to SNES and boot with QUsb2Snes and a SD2SNES/FXPak Pro flash cartridge
- Easily create patches for your ROMhack with ``buildrelease.cmd``

### Limits Removed/Increased

- 256 texture slots
- 250 faces/vertices limit for models

### Miscellaneous

- All Starwing PAL and Germany text/GFX for PAL builds
- **Kando and Randy were involved so you know it's good**

## Building

### Building on Windows

Requirements: Microsoft Windows

Download repo as ZIP and extract somewhere, or clone the repo with git via the command line.

To build ROM, run ``build.cmd``.

To build ROM with Logging, run ``build to log.cmd``.

To clean, run ``clean.cmd``.

After building, a debug symbol map will be created at ``SYMBOLS.TXT``, and a bank space report at ``BANKS.CSV``.

### Building on Linux

**NOTE: this was tested on Ubuntu, on both real hardware and with the Windows Subsystem for Linux. YMMV.**

Requirements: Ubuntu (might work with other distros) snap, DOSBox-X, git

Install snapstore: ``sudo apt install snapd``

Install DOSBox-X from snap: ``sudo snap install dosbox-x``

Clone repository: ``git clone https://github.com/NachtRaveVL/ultrastarfox``

To build ROM, run ``make``.

To build ROM with logging, run ``make log``.

To clean, run ``make clean``.

After building, a debug symbol map will be created at ``SYMBOLS.TXT``, and a bank space report at ``BANKS.CSV``.

### Uploading ROM to SNES over USB with SD2SNES/FXPak(Pro)

Uses [USB2SNES-cli](https://github.com/Hyphen-ated/usb2snes-cli) fork by Hyphen-ated. A prebuilt windows EXE is provided.
Download [QUSB2SNES](https://github.com/Skarsnik/QUsb2snes/releases).
Extract it somewhere and run it. Set it up for an SD2SNES/FXPak Pro.
**QUSB2SNES must be running in the background for uploading to function.**
You can then run ``send2snes.cmd`` or ``build and send to snes.cmd`` to either upload the current ROM to the SNES or rebuild and upload the freshly built ROM.

## Contributing

PRs are welcome!
All changes to be submitted should be made to the [main](https://github.com/NachtRaveVL/ultrastarfox/tree/main) branch.

## Helpful Links/Tools

[NR-RetroWorks on Etsy](https://www.etsy.com/shop/NachtRaveRetroWerks)  
[Original UltraStarFox Repository](https://github.com/Sunlitspace542/ultrastarfox)  
[Star Fox Sound Binary Disassemblies](https://github.com/Sunlitspace542/star-fox-sound-bins)  
[Star Fox Sound Driver Disassembly](https://github.com/phonymike/starfox_spc_driver)  
[FastFX Blender Plugin](https://github.com/Sunlitspace542/FastFX)  
[Argonaut 65816/Super FX Assembly Extension for VS Code](https://github.com/Sunlitspace542/65816-superfx-asm-argonaut-vscode)  
[ArgSfx/SASM Assembler Manual](https://github.com/Sunlitspace542/ArgSfx-SASM-Docs/tree/main)  
[SNES Development Manual](https://archive.org/details/SNESDevManual)  
[fullsnes - SNES Hardware Specifications (by Nocash)](https://problemkaputt.de/fullsnes.htm)  
[MSU-1 Documentation](https://github.com/Sunlitspace542/MSU-1-Docs)  
[65c816 Opcodes](https://undisbeliever.net/snesdev/65816-opcodes.html)  
[65c816 Reference](https://wiki.superfamicom.org/65816-reference)  
[Super FX (MARIO) Chip ASM Reference](https://en.m.wikibooks.org/wiki/Super_NES_Programming/Super_FX_tutorial)  
[EarthBound Music Editor (But for Star Fox)](https://github.com/phonymike/ebmused4sf/)  
[Star Fox Music Programming Starter Kit (by livvy94)](https://www.dropbox.com/sh/m3sk75dmsyx5tey/AACLDXVcQEJk3ezQCDBitEs7a?dl=0)

## Project Structure

```text
ultrastarfox-oc
├── 1MB Original: Original 1MB ROM layout for GSU-1 hardware
│   ├── SG: Main source code directory
│   │   ├── *.ASM: Main game code (65816)
│   │   ├── *.MC: Super FX (MARIO) assembly code
│   │   ├── *.INC: Assembly includes and configuration
│   │   ├── *.EXT: External symbol declarations
│   │   ├── DATA: Graphics and other game data
│   │   ├── MAPS: Level scripts
│   │   ├── MSPRITES: Super FX textures
│   │   └── SND: Sound and music data
│   ├── BLDSG.BAT: ROM build script
│   ├── BLDtotxt.BAT: Build with logging
│   ├── build.cmd: DOSBox build launcher
│   ├── build to txt.cmd: Logging build launcher
│   └── dosbox.conf: DOSBox configuration
├── 2MB Folderized: Expanded ROM layout for GSU-2 hardware
│   ├── SF: Main source code directory
│   │   ├── ASM: Main game code (65816)
│   │   ├── BANK: ROM bank data and assembly files
│   │   ├── CONFIG: Game and ROM configuration
│   │   ├── DATA: Graphics and other game data
│   │   │   └── COL: Palette files and Palette Packer
│   │   ├── EXT: External symbol declarations
│   │   ├── INC: Assembly includes and lookup tables
│   │   ├── MAPS: Level scripts
│   │   ├── MARIO: Super FX (MARIO) assembly code
│   │   ├── MSG: English, Japanese, German and French text
│   │   ├── MSPRITES: Interleaved Super FX textures
│   │   ├── MSUDATA: MSU-1 data streaming sources and macros
│   │   ├── PATH: Object behavior scripts
│   │   ├── SHAPES: Model and shape data
│   │   ├── SND: Sound and music data
│   │   └── STRAT: Object strategy code
│   ├── TOOLS: Utilities such as PACKER and SHAPED
│   ├── docs: Star Fox technical documentation
│   ├── optionalstuff: Optional graphics files
│   ├── baseroms: Base ROM files for patch generation
│   ├── BUILD.BAT: ROM build script
│   ├── Makefile: Linux build automation
│   ├── buildrelease.cmd: Release patch generation
│   └── dosbox-x.conf: DOSBox-X configuration
└── README.md: Project overview and build documentation
```

