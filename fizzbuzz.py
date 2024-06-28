def fizz(n):
    # Check if n is an integer
    if not isinstance(n, int):
        # Warning that n is not an integer and convert it to integer
        print("Warning: not an integer")
        n = int(n)
    # Check if n is divisible by 3
    return "Fizz" if n % 3 == 0 else ""

def buzz(n):
    # Check if n is an integer
    if not isinstance(n, int):
        # Warning that n is not an integer and convert it to integer
        print("Warning: not an integer")
        n = int(n)
    # Check if n is divisible by 5
    return "Buzz" if n % 5 == 0 else ""


def fizzbuzz(n):
    return fizz(n) + buzz(n)

print(fizzbuzz(3.7))   # Output: "Fizz"
print(fizzbuzz(7))     # Output: ""
print(fizzbuzz(10.5))  # Output: "Buzz"
print(fizzbuzz(15))    # Output: "FizzBuzz"


import numpy as np

def both(n, m):
    # Check if the length of n and m are the same
    if len(n) != len(m):
        raise ValueError("both n and m must be of the same length")
    # Check if every element in m is greater than or equal to the corresponding element in n
    if any(mi < ni for ni, mi in zip(n, m)):
        raise ValueError("m should be bigger or equal to n")

    # Create a matrix to store the results
    max_rows = max(mi - ni + 1 for ni, mi in zip(n, m))
    y = np.full((max_rows, len(n)), np.nan, dtype=object)

    # Iterate through the columns in the matrix
    for i, (start, end) in enumerate(zip(n, m)):
        x = list(range(start, end + 1))
        result = [fizzbuzz(xi) if fizzbuzz(xi) else xi for xi in x]
        y[:len(result), i] = result

    return y

n = [14]
m = [6, 10]
result = both(n, m)
print(result)
