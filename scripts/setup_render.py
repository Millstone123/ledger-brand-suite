"""Load the m100.cloud shared rendering profile."""
import sys
sys.path.insert(0, __import__('os').path.dirname(__file__))
from render import load_and_apply

if __name__ == "__main__":
    print("Applying shared rendering profile...")
    load_and_apply()
    print("Render profile applied.")
