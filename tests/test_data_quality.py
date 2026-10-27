
import unittest


def has_unique_customer_ids(customer_ids):
    """Return True when every customer ID is unique."""
    return len(customer_ids) == len(set(customer_ids))


def has_valid_order_amounts(amounts):
    """Return True when every order amount is positive."""
    return all(amount > 0 for amount in amounts)


class TestDataQuality(unittest.TestCase):

    def test_customer_ids_are_unique(self):
        self.assertTrue(has_unique_customer_ids([101, 102, 103]))

    def test_duplicate_customer_ids_are_detected(self):
        self.assertFalse(has_unique_customer_ids([101, 102, 102]))

    def test_positive_order_amounts_are_valid(self):
        self.assertTrue(has_valid_order_amounts([100, 250, 500]))

    def test_zero_order_amount_is_invalid(self):
        self.assertFalse(has_valid_order_amounts([100, 0, 500]))

    def test_negative_order_amount_is_invalid(self):
        self.assertFalse(has_valid_order_amounts([100, -20, 500]))


if __name__ == "__main__":
    unittest.main()
