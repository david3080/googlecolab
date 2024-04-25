# -*- coding: utf-8 -*-

import argparse

def main():
    parser = argparse.ArgumentParser(description="hello")
    parser.add_argument("--param_file", default="outputs", type=str)
    args = parser.parse_args()

if __name__ == "__main__":
    main()
