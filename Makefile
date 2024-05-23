APP = app
WEB = html
SRC = $(APP)/main.py
PKG = $(APP).pyxapp
HTML = $(WEB)/index.html

$(HTML): $(PKG) Makefile
	pyxel app2html $<
	cp $(APP).html $(HTML)
	sed -i 's#cdn.jsdelivr.net#fastly.jsdelivr.net#g' $(APP).html
	sed -i 's#https://cdn.jsdelivr.net/gh/kitao/pyxel/wasm#.#g' $(HTML)

$(PKG): $(SRC) Makefile
	pyxel package $(APP) $(SRC) 

clean:
	@rm $(PKG) $(APP).html