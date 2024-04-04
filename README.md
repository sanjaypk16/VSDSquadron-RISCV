
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

------------------------------------------------------------------------  


### 1st Meeting - The first online meet was held on 16th of Feb 2024 @6PM
Description:Steps to be followed for software installation.



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
Description: Block diagram and identify input ports, input waveforms, output ports and output waveforms.  


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

 

----------------------------------------------------------------------------------  
### 3rd Meeting - The third online meet was held on 22nd of Feb 2024 @6PM
Description: To know about gtkwave, Verilog and generate the waveform.

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

![Screenshot from 2024-03-01 15-01-23](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/4661a5e2-73aa-4186-83f9-4937442d9716)






---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  
### 4th Meeting - The fourth online meet was held on 27th of Feb 2024 @6PM    

Description: Generating the waveform with the actual code and with netlist. Verifying both the waveform
 


  
**To invoke yosys**   

```yosys```  
where VSDSquadron-RISCV is my folder  

**To read the library** 

``read_liberty -lib ../../sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib`` 

![Screenshot from 2024-03-03 15-54-54](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/a22bab78-9126-482c-b4da-3cd626f8732e)



**Reading the design**


```read_verilog fifo.v```  

where fifo is the module name of the design code


![Screenshot from 2024-03-03 16-19-19](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/d00059ea-d239-4f89-8ba9-2b332462e579)


**Synthesizing the module**

``` synth -top fifo ```    

where fifo is the module name of the design code 

![Screenshot from 2024-03-01 15-31-52](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/39076a93-6fb9-4a12-9478-ae991c44c4ce)


![Screenshot from 2024-03-01 15-32-49](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/b4923249-0237-4c7e-8a3e-87b184ab82bb)


![Screenshot from 2024-03-01 15-33-20](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/b06d9f62-de86-4e22-865b-fabe9512a931)


```show```

![Screenshot from 2024-02-29 15-57-21 (1)](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/d61a603e-757a-4c9c-8424-bf758bbd59c1)


**To generate netlist**  

``` abc -liberty ../../sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib```

![unnamed](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/e17bcd15-ed27-4fc7-95f1-c0b67e69e428)   

**To write the netlist**  
`` write_verilog fifo_netlist.v`` 



-noattr is used to get simplified version of netlist file  

``` write_verilog -noattr fifo_netlist1.v```  


```flatten```


![Screenshot from 2024-03-01 23-16-16](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/3e2c346f-3331-42e2-843d-67708227bff4)



```show```  

**To open the netlist**  


```!gvim vend_netlist1.v```  



![Screenshot from 2024-03-01 23-16-48](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/fb834e4b-3b4c-4eae-bec4-271590d46e40)


**Opening the netlist file**   

![Screenshot from 2024-03-01 16-12-07](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/2336072f-7770-454e-b497-d3f6ae3d609c)  


![Screenshot from 2024-03-01 16-12-54](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/bd3bda71-8865-4c7a-8b2a-8e8225a20724)   


**To verify whether netlist will match with the design**  

```iverilog netlist1.v fifo_tb.v```   

```./a.out```  

``` gtkwave dumpfile.vcd```



![Screenshot from 2024-03-01 21-21-05](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/5b335ece-5e80-493a-bb70-aa45b70c6119)  

Waveform obtained from netlist  


![Screenshot from 2024-03-01 21-20-29](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/fc256c82-0cba-4b68-8b00-39df499425e0)



-------------------------------------------------------------------------------------------------------------------------------------------------  

### 5th task - The fifth task  was given on 1st of March 2024  

Description:  To simulate the waveform with the given design code and netlist.  


 


**Cloning  gitub repository**    

```git clone https://github.com/Anmol-S314/iiitb_sfifo.git```  

```iverilog iiitb_sfifo.v iiitb_sfifo_tb.v```  

```gtkwave iiitb dump.vcd```  


![Screenshot from 2024-03-01 21-36-24](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/60ee2035-bac4-4d50-9a0f-9c378ebd3100)  

waveform  


![Screenshot from 2024-03-01 21-35-47](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/b172661a-834e-4b7d-b7f2-6378574757fe)  


**To generate netlist**  

invoking yosys inside iiitb_sfifo folder  

```yosys```  



![Screenshot from 2024-03-01 23-00-15](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/58afdd06-3497-42dc-b789-a9a928d7ac09)


**Reading the library**  



![Screenshot from 2024-03-01 23-00-59](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/f9a87425-44b6-4a24-95d0-542a3ab21f91)

**Reading the design**  


```read_verilog iiitb_sfifo.v```  

**Synthesizing the module**

```synth -top iiitb_sfifo```


![Screenshot from 2024-03-01 23-01-46](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/5378aa48-4406-4eeb-988e-f7f679935fd7)  



![Screenshot from 2024-03-01 23-04-51](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/5bc0af67-7b7d-4ce3-8a93-739adf79468e)   


**To generate the nestlist**  


```abc -liberty /home/sanjaypk/VSDSquadron-RISCV/iiitb_sfifo/lib/sky130_fd_sc_hd_tt_025C_1v80.lib```  


![Screenshot from 2024-03-01 23-05-40](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/1ab536d1-0909-4dc2-8f4e-02b105acb973)


![Screenshot from 2024-03-01 23-06-12](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/e8207ad8-23fe-4ec2-b314-66884df9d501)


**To write the netlist**  

```write_verilog netlist.v``` 


```write_verilog -noattr netlist.v```  

where -noattr is used to get simplified netlist file.
 
![Screenshot from 2024-03-01 23-07-23](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/e4de74e2-4dcd-45db-9812-ae7e2af665db)

```flatten```  

```show```  


![Screenshot from 2024-03-01 23-08-23](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/9c34ef6d-f59a-41a4-b314-0c2d36d8dbbb)  


![Screenshot from 2024-03-03 16-50-52](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/2f6de39c-60dd-4097-b2b3-61fc79ad750c)

**To open netlist**   

```!gvim netlist.v```

![Screenshot from 2024-03-01 23-09-18](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/edcd67f6-12fe-46d4-a9bc-2a68f9b9153c)  


**Opening the netlist file**  

![Screenshot from 2024-03-02 09-11-37 (1)](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/12d1ac8f-0c01-40a4-a9ca-a1eadb049392)



**To verify whether netlist will match with the design**  

```iverilog ../iiitb_sfifo/verilog_model/primitives.v ../iiitb_sfifo/verilog_model/sky130_fd_sc_hd.v netlist.v iiitb_sfifo_tb.v```


![Screenshot from 2024-03-01 23-10-31](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/a9d48730-47bb-47eb-967c-b92bbe9105f6)  



 
```./a.out```  

```gtkwave dump.vcd```  



![Screenshot from 2024-03-01 23-11-17](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/f11ffb6c-75b0-49d6-a236-310e1b6597a5)




![Screenshot from 2024-03-01 22-07-38](https://github.com/sanjaypk16/VSDSquadron-RISCV/assets/129313628/4ef4d768-1d9f-463d-8687-27eef200069c)

</details>
