# File: mk/riscv32.mk

CROSS_PREFIX ?= riscv32-unknown-elf
CC := $(CROSS_PREFIX)-gcc
CPP := $(CROSS_PREFIX)-cpp
AR := $(CROSS_PREFIX)-ar
LD := $(CROSS_PREFIX)-gcc  # Consider changing to $(CROSS_PREFIX)-ld if using ld directly
OBJCOPY := $(CROSS_PREFIX)-objcopy
SIZE := $(CROSS_PREFIX)-size

# Assuming no hardware floating-point unit:
ARCH_FLAGS := -march=rv32imac -mabi=ilp32 -mfloat-abi=soft -mcmodel=medany

CFLAGS += $(ARCH_FLAGS)
SYSROOT ?= /opt/riscv32/riscv32-unknown-elf
LDFLAGS += -T$(SYSROOT)/lib/ldscripts/elf32lriscv.xe # Add path to your linker script

