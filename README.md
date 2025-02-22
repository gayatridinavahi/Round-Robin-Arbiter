# Round-Robin-Arbiter

## Introduction
The Roubd-Robin Arbiter is a mechanism that grants access to a shared resource in a circular order. Each time, the priority is given to the next member who wants to access the resource. It is used to prevent starvation and ensures that the resource is allocated fairly to all the members. 

## State Diagram - ASM Chart
Attached below is the ASM chart for the design of the round-robin arbiter. We consider three members to want access to a single resojurce (Boss, Manager, Employee).
The order in which they are allocated priority is: 
Boss > Manager > Employee
Each time the priority is shifted to the next member of the circle, provided that they want to access the resource at that time. 

## Results
Attached below are the results which show that the priority to access the resource is being shifted accordingly and the functionality of the code is verified.

