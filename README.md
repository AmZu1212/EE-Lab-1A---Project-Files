# FPGA Platformer Game and SystemVerilog Files

**A Comprehensive FPGA Project Developed for Our EE Lab**

This repository contains the SystemVerilog and Quartus files we developed during the scope of our Electrical Engineering Lab. It also includes our project: an FPGA platformer game, housed in its dedicated folder. Below, you'll find detailed descriptions of the tools, methodologies, and media showcasing our design journey.

![small monitor pic_cropped-000](https://github.com/user-attachments/assets/d8edee4f-1996-471a-b2b1-2fc96d7c4d04)

## About the Project

This project demonstrates the power of FPGA design through a creative application: a platformer game. It reflects a robust understanding of SystemVerilog, project management, and the development tools needed to bring a hardware-based game to life.
View our detailed presentation on the design and development process.
[View the Presentation (Google Slides)](https://docs.google.com/presentation/d/1X9HG2THVzQy2KovBZhX_v9wWhB01bWceWdzH6wjgYEc/edit?usp=sharing)

*Feel free to explore the files!*

---

## Tools and Development Environment

### FPGA Board and Development Tools
- **FPGA Chip**: Altera Cyclone V
- **Development Software**:
  - **Intel Quartus**: For synthesis, place-and-route, and overall FPGA project management.
  - **ModelSim**: For simulation and verification of SystemVerilog modules.

### Design and Debugging Tools
- **Signal Tap Logic Analyzer**: Used for real-time debugging of internal signals on the FPGA.
- **Waveform Simulation and Analysis**: Employed to verify design functionality and debug timing issues using ModelSim.

### Modular Design Approach
Our project utilized a hierarchical block design methodology:
- **Block Diagram (RTL Top View)**: A visual representation of the system architecture showing modules and interconnections.
- **SystemVerilog Modules**: Each module was designed to handle specific functionality, ensuring clear separation of concerns and easier debugging.

### FPGA Game Project Highlights
- The platformer game logic was implemented in SystemVerilog, integrating real-time inputs and rendering output on an external display.
- Efficient resource utilization on the Cyclone V ensured smooth gameplay on the FPGA platform.

### Debugging and Verification
- **Signal Tap Debugging**: Critical for identifying and resolving real-time signal issues during development.
- **Waveform Analysis**: Allowed precise examination of signal behavior, ensuring design compliance with timing constraints.
- **Simulation**: Extensive use of ModelSim for pre-synthesis and post-synthesis simulation to verify design correctness.

---

## Media Showcase

1. **Block Diagram (RTL Top View)**:
   - A detailed visual of the design, showing the interconnections between modules.

   ![Block Diagram](https://github.com/user-attachments/assets/22396b9b-d941-4faf-9155-239dacf1c6ec)


2. **In-Game Screenshot**:
   - A snapshot of the platformer game, showcasing the gameplay design and visuals.

   ![In-Game Screenshot](https://github.com/user-attachments/assets/a77822c1-fb2f-4788-9d85-ad285beb872b)

3. **Game Running on FPGA**:
   - Demonstration of the game running on a small screen connected to the FPGA.

   ![Game Running on Small Screen](https://github.com/user-attachments/assets/d298a5b8-3f5b-4924-8a4b-00aa7836ba56)


4. **Setup with FPGA and Screen**:
   - A photo of the FPGA connected to the screen, illustrating the complete setup.

![FPGA and Screen Setup](https://github.com/user-attachments/assets/5e1ee870-6cb8-414d-83b0-4d4995c9952c)

---
