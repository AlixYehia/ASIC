# **Description:** 
It is responsible of receiving commands through UART receiver to do different system functions as register file reading/writing or doing some processing using ALU block and send result to UART transmitter through asynchronous FIFO for handling different clock rates and avoid data loss.

# **Block Diagram**

![image](assets/System%20Top.png)

# **System Specifications** 
- Reference clock (REF_CLK) is 50 MHz.
- UART clock (UART_CLK) is 3.6864 MHz.
- Clock Divider is always on (clock divider enable = 1).

# **Supported Commands**
- Register File Write.
  
![image](assets/System%20Top/Register%20File%20Write.png)

- Register file read.

![image](assets/System%20Top/Register%20File%20Read.png)


- ALU operation with input operands.

![image](assets/System%20Top/ALU%20Operation%20with%20Operands.png)


- ALU operation with previous operands.

![image](assets/System%20Top/ALU%20Operation%20With%20Previous%20Operands%20Stored.png)


## Documentation
For detailed documentation, please refer to the [RTL to GDS Implementation of Low Power Configurable Multi Clock Digital System](https://drive.google.com/file/d/1L8MiV9wmf6REgvUpTxTX128k_zSQsYQ7/view?usp=drive_link).
