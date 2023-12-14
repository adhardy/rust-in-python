from rusty_poetry import (
    sum_as_string, hello_world, 
    beta as beta_rust
)

hello_world()

def print_sum_as_string(a, b):
    print(sum_as_string(a, b))

def sample_beta_rust(alpha: float, beta: float) -> float:
    return beta_rust(alpha, beta)

if __name__ == '__main__':
    hello_world()
    print_sum_as_string(1, 2)
