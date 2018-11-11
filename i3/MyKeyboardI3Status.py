from xkbgroup import XKeyboard

from i3pystatus import IntervalModule
from xkbgroup import XKeyboard


class MyKeyboard(IntervalModule):

    interval = 1

    def init(self):
        self._xkb = XKeyboard(auto_open=True)

    def run(self):
       self.output = {
            "full_text": f"\u2328 {self._xkb.group_symbol}".upper(),
            "color": "#FFFFFF",
        }

