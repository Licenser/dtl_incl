argh:
	# lets first compile, this will fail on the plugins since merl isn't present
	rebar3 compile
	# we need to force the plugins to be recompiled so we whipe them all
	rm -rf _build/default/plugins/
	# Now if we run rebar3 it will get the plugins and compile with the merl from the deps
	rebar3 compile
	[ -f _build/default/lib/dtl_dep/ebin/fancy_dtl.beam ]
