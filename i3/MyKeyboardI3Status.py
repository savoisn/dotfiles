from xkbgroup import XKeyboard

from i3pystatus import IntervalModule
from xkbgroup import XKeyboard


class MyKeyboard(IntervalModule):

    def init(self):

        self._xkb = XKeyboard(auto_open=True)



    def run(self):
       self.output = {
            "full_text": self._xkb.group_symbol,
            "color": "#FFFFFF",
        }

