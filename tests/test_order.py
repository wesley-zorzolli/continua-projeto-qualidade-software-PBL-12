from order import calculate_total


def test_calculate_total():
    assert calculate_total([10, 20, 30]) == 60


def test_calculate_total_empty_list():
    assert calculate_total([]) == 0


def test_calculate_total_single_item():
    assert calculate_total([15]) == 15
