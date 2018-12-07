import random 

try :
    import unittest2 as unittest
except ImportError:
    import unittest
    
class SimpleTest(unittest.TestCase):

    def test_skipped(self):
        self.fail("nie powninno")

    def test_pass(self):
        print("AD")
        self.assertEqual(10,7+3)
    
    def test_fail(self):
        self.assertEqual(10,7+3)

