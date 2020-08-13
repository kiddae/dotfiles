padding = {"bottom": 24, "left": 11, "right": 20, "top": 23}
#padding = {"bottom":20, "left":20, "right":20, "top":20}

c.content.cookies.store = False

c.fonts.default_family = "SF Pro Text"
c.fonts.default_size = "10pt"
c.fonts.web.family.fixed = "SF Mono"
c.fonts.web.family.standard = "SF Pro Text"

c.tabs.padding = padding
c.tabs.position = "left"
# c.tabs.show = "multiple"
c.tabs.title.format = "{index}"
c.tabs.width = 60
c.tabs.favicons.scale = 2.0
c.tabs.indicator.width = 2
c.tabs.indicator.padding = {"bottom": 0, "left": 0, "right": 4, "top": 0}
c.tabs.background = True

c.statusbar.padding = {"bottom": 15, "left": 15, "right": 15, "top": 15}
c.statusbar.hide = True

c.scrolling.smooth = True

config.source('/home/me/.cache/colorer/qutebrowser.py')
