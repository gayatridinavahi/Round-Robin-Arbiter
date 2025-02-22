# Round-Robin-Arbiter

## Introduction
The Round-Robin Arbiter is a mechanism that grants access to a shared resource in a circular order. Each time, the priority is given to the next member who wants to access the resource.  <br/>
It is used to prevent starvation and ensures that the resource is allocated fairly to all the members.  <br/>

## State Diagram - ASM Chart
Attached below is the ASM chart for the design of the round-robin arbiter. We consider three members (Boss, Engineer, Bellboy) to want access to a single resource (printer) . <br/>
![WhatsApp Image 2025-02-22 at 20 37 28_84bc5602](https://github.com/user-attachments/assets/50dd1aa7-e2c0-4c64-aaab-26e13a586d6a)

The order in which they are allocated priority is:  <br/>
Boss > Engineer > Bellboy <br/>
Each time the priority is shifted to the next member of the circle, provided that they want to access the resource at that time.  <br/>

## Results
Attached below are the results which show that the priority to access the resource is being shifted accordingly and the functionality of the code is verified. <br/>
![image](https://github.com/user-attachments/assets/b886865a-35a9-4925-93ee-ad75521a7fa3)


