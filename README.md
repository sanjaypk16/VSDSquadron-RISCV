
# Research Internship on VSDSquadron Mini RISC-V Development Board
**About:**
The internship is based on RISC-V Development Board(VSDSquadron Mini),which is a flagship product of VLSI System Design.It is a 4-week internship program on RISC-V.
The program has three types of internship
1.Beginners
2.Intermediate
3.Advanced.
My internship is on Beginner(VLSI), which is on VLSI.         
For more details of company  visit [Company's Website](https://www.vlsisystemdesign.com/).
## VSDSquadron Mini RISC-V Development Board     ![image1](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/27128265-69df-4725-bc1e-84f6475f907f)
**Board Specifications**  
| Board | Description |
| --- | --- |
| Microcontroller | CH32V003F4U6 chip with 32-bit RISC-Vcore based on RV32EC instruction set |
| USB connector | USB 2.0 Type-C |
|Digital I/O pins | 15x |
|Analog I/O pins | Analog I/O pins|
|I/O voltage | 3.3V |
| Input voltage (nominal)| 5V |
|Clock speed | Processor: 24MHz |
| Memory| SRAM: 2kb on-chip volatile sram, 16kbexternal program memory |

 For board information [Click here for board link](https://www.vlsisystemdesign.com/vsdsquadronmini/)

This repository is mainly for documentation of all the progress
## Progress Report  
### 1st Meeting - The first online meet was held on 16th of Feb 2024 @6PM
Description:KunaL Ghosh sir gave brief introduction of the program and steps to be followed for software installation.
Based on the internship type different task were assigned. 

TASKS   
1.install Yosys

2.install iverilog

3.install gtkwave  

### To install git


``` sudo apt install git-all ```
 
![Screenshot from 2024-02-19 22-37-01](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/fa228aad-3b87-4fe6-a38a-15b4f8abfec1)  

INSTALLING YOSYS, IVERILOG & GTKWAVE.

1.YOSYS  
``` git clone https://github.com/YosysHQ/yosys.git ```  

![Screenshot from 2024-02-19 22-38-26](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/3097c83b-6b68-4dab-adfa-6f7b74f508a0)  
```cd yosys```  

```sudo apt install make```

![Screenshot from 2024-02-19 22-38-26](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/6a2b1c18-1ffa-4bba-85c2-3f8b0f00ceb7)  

2.iVerilog
For intalling iVerilog

``` sudo apt update```  
``` sudo apt-get install iverilog ```

![Screenshot from 2024-02-19 23-21-49 (1)](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/7417c958-478c-470e-a4e3-f6c20f917d4c)

3.GTkWave  
For installing GTkWave  
``` sudo apt-get install gtkwave ```



![Screenshot from 2024-02-19 23-23-02 (1)](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/226ba4c6-2f9c-479b-8186-ad90ef3878bc)  

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
### 2nd Meeting - The second online meet was held on 20th of Feb 2024 @6PM
Description:Kunal Ghosh sir told to get ready with block diagram and identify input ports, input waveforms, output ports and output waveforms.

Tasks  
1.To create a block diagram of the respective project  
2.To identify input ports, input waveforms, output ports and output waveforms  

### Synchronous First in First Out for Memory Storage and Processing  



**Introduction**: 

Synchronous First In First Out (FIFO) is a fundamental data storage and processing mechanism widely employed in digital systems to manage the orderly flow of data. It ensures that data is processed in the same sequence it was received, making it essential for applications where timing and order are critical.  

**Applications**:  

1.**Communication Interfaces:** Synchronous FIFOs are vital in communication protocols like UART and SPI, buffering data between devices with different clock domains to ensure synchronized data transfer.

2.**Digital Signal Processing (DSP):** In DSP applications, synchronous FIFOs manage data flow between processing stages, maintaining the sequence integrity necessary for accurate signal processing.

3.**Memory Interfaces:** They serve as interfaces between memory modules operating at varying speeds or utilizing different protocols, facilitating efficient data transfer and access while preserving order.  



**Block Diagram**  


![Screenshot 2024-02-21 122403](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/3ca5d650-26bc-4399-8534-2ef3ddd62adf)  



**Input and Output Waveform**  

![Screenshot 2024-02-21 163150](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/de40420d-b299-4f51-9b56-24febd6b817b)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### 3rd Meeting - The third online meet was held on 22th of Feb 2024 @6PM
Description: Kunar Ghosh sir told to know about gtkwave,iverilog and generate waveform.

Tasks  
1.To know about gtkwave and iverilog  
2.To generate waveform

**GTKWave**  
GTKWave is a waveform viewer for Verilog simulation results, enabling visualization of signals over time. 

**iverilog**  
Icarus Verilog (iverilog) is a free Verilog simulation and synthesis tool, useful for compiling and simulating Verilog designs, often paired with GTKWave for waveform viewing.

### **Steps to generate waveform using gtkwave and iverilog** ###

1.Cloning my gitub repository  
``git clone https://github.com/sanjaypk16/VSDSquadron-RISCV.git`` 

![cdf9b376-a41c-442d-9ec2-f85d6abde981](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/429e947e-61da-48c8-971f-385e5657378b)  


2.Simulating iverilog  
``cd VSDSquadron-RISCV/``            where **VSDSquadron-RISCV/** is my repository  


``iverilog fifo.v fifo_tb.v``  

Generating dump file  
``./a.out``  


![da5fbdcf-4572-439b-b055-2ff41c979ac9](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/aa4d6a5b-4a05-46c8-9c26-ae803aa340f5)  


 3.To get waveform  
 ```gtkwave dump.vcd``` 
 
### **Waveform** ###


![9cc351bd-dac8-4cec-bc4d-1606087ce8b5](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/d4d3ad9d-dbf7-484a-9567-22b26f7ab367)  

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  
### 4th Meeting - The third online meet was held on 27th of Feb 2024 @6PM  


![f2006829-e78e-407f-82fa-125f8de42fd8](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/8f31a13f-47bc-4f97-80f6-579c0e905587)  


![d021e2d4-3ee5-4839-8d03-74615e141f4a](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/10376762-de3b-4b51-b7ea-729c083c9243)  



![c5bcb653-1df3-4d9c-b199-8b2356552778](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/e41a008c-1493-4077-8918-a395d0ce97ac)


![4417c12b-4db5-431d-96d8-1c6ee5f506b9](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/9b983fc8-e950-4fa8-a228-82c704e6f8aa)  


![unnamed](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/d590c6ac-b833-4298-bd61-b19f3a1911c9)

 

![unnamed](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/3b47af5a-788c-450c-8971-46790fb05ad6)


![unnamed](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/e17bcd15-ed27-4fc7-95f1-c0b67e69e428)   

![unnamed](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/b429fb81-7bbb-41a5-a5bb-c011e237f122)



