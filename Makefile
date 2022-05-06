CC = clang
OPTS = -O1 -target aarch64-linux-gnu

%.s:
	$(CC) $(OPTS) -S $(subst .s,.c, $@)
%.out:
	$(CC) $(OPTS) -o $(@) $(subst .out,.s, $@)

%:
	@qemu-aarch64-static -L /usr/aarch64-linux-gnu ./$(@).out
clean:
	rm -f *.out