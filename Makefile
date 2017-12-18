DEBUG = 0
WEBDNN = /Users/yuji/OpenSources/webdnn/bin/convert_keras.py
OUTDIR = output
SIZE = 3

$(OUTDIR)/kernels_webassembly.js: model.h5 $(PLUGIN) Makefile
	DEBUG=$(DEBUG) CPLUS_INCLUDE_PATH=/usr/local/include/eigen3 python3 $(WEBDNN) $< --input_shape '(1,$(SIZE),$(SIZE),1)' --out $(OUTDIR)

model.h5: model.py
	python3 model.py

server:
	python3 -m http.server
