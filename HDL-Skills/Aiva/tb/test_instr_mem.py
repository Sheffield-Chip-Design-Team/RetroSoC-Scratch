import cocotb
from random import randint
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, RisingEdge
import os

async def reset(uut, reset_duration=randint(1,10)):
    # assert reset
    uut._log.info("Resetting Module")
    await ClockCycles(uut.clk, reset_duration)
    uut.we.value = 0
    uut.oe.value = 0
    uut.cs.value = 0
    uut.addr_in.value = 0
    uut.tb_data.value = 0


@cocotb.test()
async def test_instruction_register_sanity(uut):
    # start clock
    clock = Clock(uut.clk, 40, units="ns")
    cocotb.start_soon(clock.start())
    await ClockCycles(uut.clk, 1)

    # reset the module
    await reset(uut)
    await RisingEdge(uut.clk)

    # populate ram with random values
    for i in range(256):
        await RisingEdge(uut.clk)
        uut.addr_in.value = i
        uut.we.value = 1
        uut.cs.value = 1
        uut.oe.value = 0
        uut.tb_data.value = randint(0,255)

    await RisingEdge(uut.clk)
    
    uut.we.value = 0

    await RisingEdge(uut.clk)

    # read ram after populating with random values
    for i in range(256):
        await RisingEdge(uut.clk)
        uut.addr_in.value = i
        uut.we.value = 0
        uut.cs.value = 1
        uut.oe.value = 1

    # continue test ...
    await ClockCycles(uut.clk, 100)
    uut._log.info("Test Complete!")

