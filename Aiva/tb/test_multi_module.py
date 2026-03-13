import cocotb
from random import randint
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, RisingEdge
import os

async def reset(uut, reset_duration=randint(1,10)):
    # assert reset
    uut._log.info("Resetting Module")
    uut.ir_rst.value = 1
    uut.ir_en.value = 1
    uut.pc_br_en.value = 0
    uut.m_we.value = 0
    uut.m_oe.value = 0
    uut.m_cs.value = 0
    await ClockCycles(uut.clk, reset_duration)
    uut.ir_rst.value = 0
    uut.ir_en.value = 1

async def init_ram(uut):
    uut._log.info("Initialising Ram")


@cocotb.test()
async def test_multi_module_sanity(uut):
    # start clock
    clock = Clock(uut.clk, 40, units="ns")
    cocotb.start_soon(clock.start())
    await ClockCycles(uut.clk, 1)

    # reset the module
    await reset(uut)
    await RisingEdge(uut.clk)

    # continue test ...
    await ClockCycles(uut.clk, 100)
    uut._log.info("Test Complete!")

    