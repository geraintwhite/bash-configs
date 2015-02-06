import os
import json
import sys
import shutil


def get_config(hostname):
    filename = 'config.json'
    with open(filename) as f:
        config = json.load(f)

    try:
        return config['hosts'][hostname]
    except KeyError:
        print('No entry for {} in {}'.format(hostname, filename))
        if 'default' in config:
            print('Using default config')
            return config['default']
        sys.exit('Cannot find default config - quitting')


def main():
    try:
        hostname = sys.argv[1]
    except indexError:
        hostname = os.uname()[1]
    config = get_config(hostname)

    for file, path in config.items():
        dest = os.path.expanduser(path)
        print('cp {} {}'.format(file, dest))
        try:
            shutil.copyfile(file, dest)
        except PermissionError:
            print('Permission denied - requesting sudo access')
            os.system('sudo cp {} {}'.format(file, dest))

if __name__ == '__main__':
    main()
