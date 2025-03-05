import pandas as pd

# The input string
data_string = """
Name: Xavier Summary: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxXXXXXXXX xx ccccccccccccccccccccccccccccccccccccccccccc nnnnnnnnnnnnnnnnnnnnnnnnnnn Feedback: DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD Comments: vvvvvvvvvvvvvvvvvvvv
"""

# Split the string into key-value pairs
parts = data_string.strip().split()
keys = ["Name", "Summary", "Feedback", "Comments"]
data = {key: "" for key in keys}

current_key = None

# Iterate through the parts and build the dictionary
for part in parts:
    if part[:-1] in keys and part[-1] == ':':
        current_key = part[:-1]
    elif current_key:
        data[current_key] += part + " "

# Strip any trailing spaces
for key in data:
    data[key] = data[key].strip()

# Create a DataFrame
df = pd.DataFrame([data])

print(df)
