# Assignment 2.12

## What is Cloud Architecture Design - Reliability?

Reliability involves creating a system where it is dependable and consistently up and running for the operational needs of the users. Simply to ensure that they are available. They are based on a few concepts.

Automatic recovery from failure, having an automated process to restart the system by its own.

Will be recommended to have test recovery procedures to be able to test out for failure points within the system, and detect them early and before production itself.

Scaling it up horizontally to increase availability and having an automated process to scale it up or down as needed, would be more efficient than guessing the capacity.

Change in manual automation should be tracked, so we know what are the new changes in the system and to be able to account for it.

## Choose your own system, then succinctly explain how would you implement Cloud Architecture Design - Reliability on your system.

Distribute across multiple availability zones. This will prevent single point of failures.

Implement redundancy, having multiple running instances in servers, databases and network configurations. 

Setting auto scaling in the number of required instances to handle the load

Setting up logging and debugging to be able to tell and detect failures as early as possible, with visibility.


