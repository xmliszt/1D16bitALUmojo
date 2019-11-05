<?xml version="1.0" encoding="UTF-8"?>
<project name="ALU16bitFresh" board="Mojo V3" language="Lucid">
  <files>
    <src>bool.luc</src>
    <src>shift.luc</src>
    <src>multiply.luc</src>
    <src>alu.luc</src>
    <src>sevenSeg.luc</src>
    <src>multiSevenSeg.luc</src>
    <src>adderMul.luc</src>
    <src>btnDebouncer.luc</src>
    <src>compare.luc</src>
    <src top="true">mojo_top.luc</src>
    <ucf lib="true">io_shield.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <component>reg_interface.luc</component>
    <component>decoder.luc</component>
    <component>reset_conditioner.luc</component>
    <component>pipeline.luc</component>
    <component>button_conditioner.luc</component>
    <component>counter.luc</component>
    <component>edge_detector.luc</component>
  </files>
</project>
