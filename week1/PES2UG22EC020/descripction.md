# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
word.s

### Observation - Single Cycle
- < Define two words
 Load address of 'a' into x10
 Load 1st word into x11
 Load 2nd word into x12
 Add x11 and x12, result in x13
 Store x13 at a + 8>
 
### Register Mapping
- **<x10>:** 0x10000000
    <x11>    0x80000002
    <x12>    0x9123456a
    <x13>    0x1123456c
### Data Mapping
- **<0x10000008>:** <0x1123456c>
    <0x10000004>    <0x9123456a>
    <0x10000000>    <0x80000002>

=====================================================================
#program 2
statemnent:Write an Assembly Program for addition of 2 half words

#name of file 
half_word.s


### Observation - Single Cycle

Define two halfwords
Load address of 'a' into x10
Load 1st halfword into x11 (unsigned)
Load 2nd halfword into x12 (unsigned)
Add x12 and x11, result in x13
Store x13 at a + 4

### Register Mapping
- **<x10>:** 0x10000000
    <x11>    0x00000210
    <x12>    0x91231101
    <x13>    0x11231311
### Data Mapping
<0x10000000>  <0x11010210>
<0x10000004>  <0x00001311>
========================================================================
#program 3
statement:Write an Assembly Program for addition of 2 bytes

#name of file 
byte.s
#observation 

Define two bytes
Load address of 'b' into x9
Load 1st byte into x11 (unsigned)
load 2nd byte into x12 (unsigned)
Add x12 and x11, result in x13
Store x13 at b + 2

#regiter mapping 
<x9> <0x10000000>
<x11> <0x00000045>
<x12> <0x00000011>
<x13> <0x00000056>

#data mapping 
<0x10000004> <0x00000000>
<0x10000000> <0x00561145>
===========================================================================
# Program 1: 
### Statement: <Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types>

### Name of file:
<prg4.s>

### Observation - Single Cycle
- #half and 
#byte

Load address of 'a' into x10
Load address of 'n' into x11
Load signed half-word from 'a' into x12
Load signed half-word from 'a+2' into x13
Add x12 and x13, store in x14
Load unsigned half-word from 'a' into x15
Load unsigned half-word from 'a+2' into x16
Add x15 and x16, store in x17
Load signed byte from 'n' into x18
 Load signed byte from 'n+1' into x19
Add x18 and x19, store in x20
 Load unsigned byte from 'n' into x21
Load unsigned byte from 'n+1' into x22
 Add x21 and x22, store in x23
 Store x14 as half-word at 'a+4'
 Store x17 as half-word at 'a+6'
 Store x20 as byte at 'n+2'
 Store x23 as byte at 'n+3'

# Word operations

# Load signed word from 'w' into x25
 # Load signed word from 'w+4' into x26
# Add x25 and x26, store in x27

 
 
### Register Mapping
- <x10> <0x10000000>
 <x11> <0x10000004>
<x12> <0xfffffffb>
<x13> <0x00000001>
<x14> <0xfffffffc>
<x15> <0x0000fffb>
<x16> <0x00000001>
<x17> <0x0000fffc>
<x18> <0xfffffffd>
<x19>  <0x00000004>
  x20  <0x00000001>
x21   <0x000000fd>
x22  <0x00000004>
x23   <0x00000101>
x24  <0x10000006>
x25 <0x7fff0101>
x26  <0x00000001>
x27  <0x7fff0102>


### Data Mapping
- **<0x1000000c>:** <0x00000000>
 **<0x10000008>:** <0x00017fff>
 **<0x10000004>:** <0x0101fffc>
 **<0x10000000>:** <0x0001fffb>