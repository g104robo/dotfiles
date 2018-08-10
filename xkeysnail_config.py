import re
from xkeysnail.transform import *
define_keymap(re.compile("Firefox|Google"), {
    K("C-p"): with_mark(K("up")),
    K("C-n"): with_mark(K("down")),
}, "Firefox and Chrome")
