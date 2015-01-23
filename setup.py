import os
import json
import sys
import shutil


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

    for file, path in config.items():
        dest = os.path.expanduser(path)
        print('cp {} {}'.format(file, dest))
        try:
            shutil.copyfile(file, dest)
        except PermissionError:
            os.system('sudo cp {} {}'.format(file, dest))

if __name__ == '__main__':
    main()
