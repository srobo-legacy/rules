images_targets := $(addprefix images/,arena.pdf flag-2011.pdf quadrants.pdf ramp.pdf \
		ir-mount.pdf ramp-entrance.pdf)
TARGETS += $(images_targets)
CLEAN += $(images_targets)

%.pdf: %.svg
	inkscape -A $@ $?
