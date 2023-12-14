from rusty_poetry.app import print_sum_as_string, sample_beta_rust, sample_beta_n_rust
import pytest

def test_print_sum_as_string(capsys):
    print_sum_as_string(1, 2)
    captured = capsys.readouterr()
    assert captured.out == '3\n'

def test_rust_beta():
    assert isinstance(sample_beta_rust(1.0, 2.0), float)
    
def test_rust_beta_n():
    for x in sample_beta_n_rust(1.0, 2.0, 10):
        assert isinstance(x, float)