import sys


def term_can_color():
    return sys.platform != 'win32' and sys.stdout.isatty()


def print_info(msg):
    print(f'[i] {msg}')


def warn(msg):
    COLOR_START = '\033[93m' if term_can_color() else ''
    COLOR_END = '\033[0m' if term_can_color() else ''
    print(f'{COLOR_START}[warning] {msg}{COLOR_END}', file=sys.stderr)


def print_error(msg):
    COLOR_START = '\033[91m' if term_can_color() else ''
    COLOR_END = '\033[0m' if term_can_color() else ''
    print(f'{COLOR_START}[error] {msg}{COLOR_END}', file=sys.stderr)


def error_and_die(msg):
    print_error(msg)
    sys.exit(1)
