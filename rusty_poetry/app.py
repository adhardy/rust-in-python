from rusty_poetry import (
    sum_as_string, 
    beta as beta_rust,
    beta_n as beta_n_rust
    
)

def print_sum_as_string(a, b):
    print(sum_as_string(a, b))

def sample_beta_rust(alpha: float, beta: float) -> float:
    return beta_rust(alpha, beta)

def sample_beta_n_rust(alpha: float, beta: float, n: int) -> list[float]:
    return beta_n_rust(alpha, beta, n)

if __name__ == '__main__':
    print_sum_as_string(1, 2)
