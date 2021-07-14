.PHONY: deps test all compile

REBAR = ./rebar3

all: compile

compile:
	@$(REBAR) compile

deps:
	$(if $(HEAD_REVISION),$(warning "Warning: you have checked out a tag ($(HEAD_REVISION)) and should use the compile target"))
	$(REBAR) upgrade

clean:
	$(REBAR) clean

distclean: clean devclean relclean
	@rm -rf _build
