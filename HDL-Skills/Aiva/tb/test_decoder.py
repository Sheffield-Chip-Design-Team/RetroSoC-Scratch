import cocotb
from random import randint
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, RisingEdge
import os

async def reset(uut, reset_duration=randint(1,10)):
    # assert reset
    uut._log.info("Resetting Module")
    uut.rst.value = 1
    uut.opcode.value = 0xffffff
    uut.op_rdy.value = 0
    await ClockCycles(uut.clk, reset_duration)
    uut.rst.value = 0

@cocotb.test()
async def test_decoder_sanity(uut):
    # start clock
    clock = Clock(uut.clk, 40, units="ns")
    cocotb.start_soon(clock.start())
    await ClockCycles(uut.clk, 1)

    # reset the module
    await reset(uut)
    await RisingEdge(uut.clk)

    # continue test ...
    uut.opcode.value = 0x000000
    await RisingEdge(uut.clk)
    uut.op_rdy.value = 1
    await RisingEdge(uut.clk)
    uut.op_rdy.value = 0
    await RisingEdge(uut.clk)
    
    await ClockCycles(uut.clk, 100)
    uut._log.info("Test Complete!")

    