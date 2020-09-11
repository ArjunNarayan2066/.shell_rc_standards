try:
    import os
    import time

    fuckpd = [
        '    ___   _   _    ___    _  __              ___    ___   ',
        '   | __| | | | |  / __|  | |/ /     o O O   | _ \  |   \  ',
        '   | _|  | |_| | | (__   | \' <     o        |  _/  | |) | ',
        '  _|_|_   \___/   \___|  |_|\_\   TS__[O]  _|_|_   |___/  ',
        '_| \"\"\" |_|\"\"\"\"\"|_|\"\"\"\"\"|_|\"\"\"\"\"| {======|_| \"\"\" |_|\"\"\"\"\"| ',
        '\"`-0-0-\'\"`-0-0-\'\"`-0-0-\'\"`-0-0-\'./o--000\'\"`-0-0-\'\"`-0-0-\' '
    ]

    cols = int(os.popen('stty size', 'r').read().split()[1])
    for i in reversed(range(cols)):
        shifted_fuckpd = [i*' ' + l for l  in fuckpd]
        for l in shifted_fuckpd:
            print(l[:cols])
        time.sleep(0.05)
        print('\033[6A', end='')
    print('\033[6B', end='')
except KeyboardInterrupt:
    print('')