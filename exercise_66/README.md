## Vending Machine Problem

The vending machine problem is a problem when we need to write the software to calculate the minimum number of coins required to return an amount of change to the user. 

In other words if a vending machine had:

``` 
2 x 10 cents
5 x 5 cents
20 x 2 cents
20 x 1 cent
```
What is the minimum number of coins required to make up the change of 43 cents?

```
2 x 10 cents
4 x 5 cents
1 x 2 cents
1 x 1 cent
```

However, if the vending machine contains:

```
10 x 10 cents
10 x 5 cents
10 x 2 cents
10 x 1 cent
```

The solution would be:

```
4 x 10 cents
1 x 2 cents
1 x 1 cent
```

Typically this problem is solved by using the biggest denomination of the coins available, then the smaller one and subsequently the smallest one required to complete the total.

However, The problem gets more interesting when more denomination of coins are introduced. For example, if the vending machine contained:

```10 x
10 x 25 cents
10 x 11 cents
10 x 10 cents
10 x 5 cents
10 x 2 cents
10 x 1 cents
```

In this case, the typical solution above (from the biggest number to the smallest) for 33 cents would be:

```
1 x 25 cents
1 x 5 cents
1 x 2 cents
1 x 1 cent
```

resulting in 4 coins. However, the actual most optimal coin distribution would be:

```
3 x 11 cents
```

which would just return 3 coins.



Your goal in this exercise is to write a method that processes an input array of coins available, and a coin return amount, to find the most optimal (least amount of coins) way to return the coins



The format of the input array of coins you will receive is in an array:

```
[ 25, 25, 25, 25, 25, 10, 10, 10, 10, 10, 5, 5, 5, 5, 5, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1 ]
```

and the coin return amount would be given as an integer such as:

```
43
```

Your method will return the most optimal way of returning the coins as an array

```
[25, 10, 5, 2, 1]
```

