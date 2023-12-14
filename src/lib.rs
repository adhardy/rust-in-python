use pyo3::prelude::*;
use compute::distributions::Beta;
use compute::distributions::Distribution;

/// Formats the sum of two numbers as string.
#[pyfunction]
fn sum_as_string(a: usize, b: usize) -> PyResult<String> {
    Ok((a + b).to_string())
}

#[pyfunction]
fn hello_world() {
    println!("Hello World");
}

#[pyfunction]
fn beta(alpha: f64, beta: f64) -> PyResult<f64> {
    let beta = Beta::new(alpha, beta);
    Ok(beta.sample())
}

/// A Python module implemented in Rust.
#[pymodule]
fn _rusty_poetry(_py: Python, m: &PyModule) -> PyResult<()> {
    m.add_function(wrap_pyfunction!(sum_as_string, m)?)?;
    m.add_function(wrap_pyfunction!(hello_world, m)?)?;
    m.add_function(wrap_pyfunction!(beta, m)?)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_sum_as_string() {
        assert_eq!(sum_as_string(2, 2).unwrap(), "4");
    }

    #[test]
    fn test_beta() {
        assert!(beta(1.0, 1.0).unwrap() >= 0.0);
    }
}
