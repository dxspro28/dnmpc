build:
	@echo Building...
	@mkdir bin
	@mcs src/Program.cs -out:bin/dnmpc

install:
	@echo Installing...
	@cp bin/dnmpc ~/.local/bin/
