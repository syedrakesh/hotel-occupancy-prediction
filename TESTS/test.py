import importlib.util
import os

# Path to the module you want to import
module_name = '123myscript'
module_path = os.path.join(os.path.dirname(__file__), '..', 'UTILS', '123myscript.py')

# Load the module
spec = importlib.util.spec_from_file_location(module_name, module_path)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)

# Now you can use the module
module.my_function()  # This will print "Hello from my_module!"