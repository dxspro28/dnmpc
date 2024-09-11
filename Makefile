build:
	@echo Building...
	@mcs src/Program.cs -out:bin/dnmpc

install:
	@echo Installing...
	@cp bin/dnmpc ~/.local/bin/
