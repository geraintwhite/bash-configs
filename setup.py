import os
import json
import sys


def get_config(hostname):
    filename = 'config.json'
    with open(filename) as f:
        config = json.load(f)

    try:
        return config[hostname]
    except KeyError:
        sys.exit('No entry for {} in {}'.format(hostname, filename))


def main():
    config = get_config(os.uname()[1])
    print(config)

if __name__ == '__main__':
    main()
