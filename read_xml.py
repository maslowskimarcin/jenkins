import xml.etree.ElementTree
import sys
e = xml.etree.ElementTree.parse('results.xml').getroot()

sys.exit (e.attrib["failures"])
