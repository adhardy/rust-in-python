from string_sum.app import print_sum_as_string

def test_print_sum_as_string(capsys):
    print_sum_as_string(1, 2)
    captured = capsys.readouterr()
    assert captured.out == '3\n'
