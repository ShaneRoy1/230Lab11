# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Luke Wallack, Shane Roy
## Summary
In this lab we created a modulo counter and a ripple counter, implementing D and T flipflops respectively.
The modulo counter counts up to 6 and then resets, essentially diving the clock pulse by 12.
The ripple counter counts down from 7 to zero before resetting back to 7, essentially dividing the clock pulse
byt 8.
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Because the clock is positively edge triggered, it doesn't pulse on the falling edge
of the clock. Therefore, to divide the clock pulse by 12, we have to count to 6.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Because the T flip flop's swap their current value on each pulse they are supplied.
On the first clock pulse, the first TFF gets flipped from 0 to 1. Because they are
positively edge triggered, this causes the next TFF, which is pulsed by the output
of the first TFF, to switch its state. This then happens to the third TFF in the same way.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Width of 17 TFF's, 
