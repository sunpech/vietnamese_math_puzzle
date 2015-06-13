# Vietnamese Math Puzzle for 8-Year Olds

![Math Puzzle](/images/math_puzzle.png)

Image from VN Express

I found this problem via social media link

## Problem

You have the numbers 1 through 9, [1, 2, 3, 4, 5, 6, 7, 8, 9], and they each need to be placed in an empty box such that the formula works out to 66.

The colon, ":", in the boxes represents division. So when you flatten it out, it looks like the following:

a + (13b/c) + d + 12e – f – 11 + (gh/i)– 10 = 66

I'd rather not solve for it by hand, so I wrote a ruby script to do it and **solve for all cases.**

My main interest is in finding how many solutions actually work.

## How to Run Program

Make sure you have [Ruby](https://www.ruby-lang.org/en/) installed. Then just run at the command line:

```
ruby math_puzzle.rb
```

## Solution

There are 9! (read 9 factorial) solutions. 9x8x7x6x5x4x3x2x1 = 362,880 ways to permute the numbers.

And then how many actually fulfill the requirement? That depends on where you choose to do the rounding of the numbers.

#### Round after any division to two decimal spots

This is the default formula I chose.

```
result = a + (13.0 * b / c).round(2) + d + (12 * e) - f - 11 + (g * h / i.to_f).round(2) - 10
```

Result: 136 solutions.

#### Round after any division to nearest whole number

```
result = a + (13.0 * b / c).round + d + (12 * e) - f - 11 + (g * h / i.to_f).round - 10
```

Result: 2900 solutions.

#### Round only at the end

```
result = (a + (13.0 * b / c) + d + (12 * e) - f - 11 + (g * h / i.to_f) - 10).round
```

Result: 2844 solutions.

### Output

Depending on how you wish to interpret where the rounding occurs, here are the total number of solutions.

```
362880 iterations.
136 solutions (rounding after any division to two decimal spots, solution shown above.)
2900 solutions (rounding after any division to nearest whole number.)
2844 solutions (rounding only at the end.)
```

Just uncomment the section to the file, math_puzzle.rb where needed, to solve for different rounding. See below as to what to uncomment. There are three places where this occurs.

```
# comment/uncomment below
# puts z.to_a.inspect
```

## Links

* [How to solve the maths puzzle for Vietnamese eight-year-olds that stumped parents and teachers](http://www.theguardian.com/science/alexs-adventures-in-numberland/2015/may/21/how-to-solve-the-maths-puzzle-for-vietnamese-eight-year-olds-that-stumped-parents-and-teachers) via The Guardian
* [Solution To Viral Math Puzzle For Vietnamese 3rd Graders (8 Year Olds)](https://www.youtube.com/watch?v=WiB2_dXSSMg) via YouTube
