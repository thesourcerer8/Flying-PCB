<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="PWMMP001" description="This app generates multi phase PWM &#xA; centre aligned, asymmetric PWM waveforms &#xA;  with dead time. &#xA; This app supports trap features &#xA; along with dither and dead time.&#xA; It can generate 2, 3 or 4 phase PWM." descriptionURL="/doc/html/group___p_w_m_m_p001_app.html" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0">
  <provided xsi:type="ResourceModel:VirtualSignal" name="SCU Sync Start" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_gscenable_vs" requiredSignalResource="scusyncstart/gsc_enable">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 Global" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_globalsignal0_vs" requiredSignalResource="phase1/global_signal">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Global" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_globalsignal1_vs" requiredSignalResource="phase2/global_signal">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 Global" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_globalsignal2_vs" requiredSignalResource="phase3/global_signal">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 Global" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_globalsignal3_vs" requiredSignalResource="phase4/global_signal">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 Direct Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out00_vs" requiredSignalResource="phase1/out0">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 Inverted Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out01_vs" requiredSignalResource="phase1/out1">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Direct Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out10_vs" requiredSignalResource="phase2/out0">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Inverted Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out11_vs" requiredSignalResource="phase2/out1">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 Direct Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out20_vs" requiredSignalResource="phase3/out0">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 Inverted Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out21_vs" requiredSignalResource="phase3/out1">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 Direct Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out30_vs" requiredSignalResource="phase4/out0">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 Inverted Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out31_vs" requiredSignalResource="phase4/out1">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 Direct Output Pin" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out00_pin_vs" requiredSignalResource="phase1_directout/pad">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 Inverted Output Pin" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out01_pin_vs" requiredSignalResource="phase1_invertedout/pad">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Direct Output Pin" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out10_pin_vs" requiredSignalResource="phase2_directout/pad">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Inverted Output Pin" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out11_pin_vs" requiredSignalResource="phase2_invertedout/pad">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 Direct Output Pin" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out20_pin_vs" requiredSignalResource="phase3_directout/pad">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Inverted Output Pin" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out21_pin_vs" requiredSignalResource="phase3_invertedout/pad">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 Direct Output Pin" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out30_pin_vs" requiredSignalResource="phase4_directout/pad">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 Inverted Output Pin" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_out31_pin_vs" requiredSignalResource="phase4_invertedout/pad">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 Timer Concatenation Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase1concatout_vs" requiredSignalResource="phase1/concat_bus_out" canExpose="false">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Timer Concatenation Input" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase2concatin_vs" requiredSignalResource="phase2/concat_bus_in" canExpose="false">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Timer Concatenation Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase2concatout_vs" requiredSignalResource="phase2/concat_bus_out" canExpose="false">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 Timer Concatenation Input" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase3concatin_vs" requiredSignalResource="phase3/concat_bus_in" canExpose="false">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 Timer Concatenation Output" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase3concatout_vs" requiredSignalResource="phase3/concat_bus_out" canExpose="false">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 Timer Concatenation Input" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase4concatin_vs" requiredSignalResource="phase4/concat_bus_in" canExpose="false">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 Status" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase1status_vs" requiredSignalResource="phase1/st">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Status" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase2status_vs" requiredSignalResource="phase2/st">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 Status" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase3status_vs" requiredSignalResource="phase3/st">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 Status" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase4status_vs" requiredSignalResource="phase4/st">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase1 External Start" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1extstartinput_vs" requiredSignalResource="phase1/gp0_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase1 External Stop" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1extstopinput_vs" requiredSignalResource="phase1/gp1_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase1 Trap" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1trapinput_vs" requiredSignalResource="phase1/gp2_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase2 External Start" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2extstartinput_vs" requiredSignalResource="phase2/gp0_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase2 External Stop" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2extstopinput_vs" requiredSignalResource="phase2/gp1_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase2 Trap" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2trapinput_vs" requiredSignalResource="phase2/gp2_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase3 External Start" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3extstartinput_vs" requiredSignalResource="phase3/gp0_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase3 External Stop" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3extstopinput_vs" requiredSignalResource="phase3/gp1_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase3 Trap" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3trapinput_vs" requiredSignalResource="phase3/gp2_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase4 External Start" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4extstartinput_vs" requiredSignalResource="phase4/gp0_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase4 External Stop" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4extstopinput_vs" requiredSignalResource="phase4/gp1_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Phase4 Trap" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4trapinput_vs" requiredSignalResource="phase4/gp2_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase1 Compare Match" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1comparematch_vs" requiredSignalResource="phase1/cmd1s_cmu1s">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase1 Period Match" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1periodmatch_vs" requiredSignalResource="phase1/pmus_omds">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase1 External Start" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1extstartevent_vs" requiredSignalResource="phase1/e0as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase1 External Stop" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1extstopevent_vs" requiredSignalResource="phase1/e1as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase1 Trap" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1trapevent_vs" requiredSignalResource="phase1/e2as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase2 Compare Match" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2comparematch_vs" requiredSignalResource="phase2/cmd1s_cmu1s">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase2 Period Match" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2periodmatch_vs" requiredSignalResource="phase2/pmus_omds">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase2 External Start" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2extstartevent_vs" requiredSignalResource="phase2/e0as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase2 External Stop" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2extstopevent_vs" requiredSignalResource="phase2/e1as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase2 Trap" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2trapevent_vs" requiredSignalResource="phase2/e2as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase3 Compare Match" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3comparematch_vs" requiredSignalResource="phase3/cmd1s_cmu1s">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase3 Period Match" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3periodmatch_vs" requiredSignalResource="phase3/pmus_omds">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase3 External Start" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3extstartevent_vs" requiredSignalResource="phase3/e0as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase3 External Stop" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3extstopevent_vs" requiredSignalResource="phase3/e1as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase3 Trap" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3trapevent_vs" requiredSignalResource="phase3/e2as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase4 Compare Match" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4comparematch_vs" requiredSignalResource="phase4/cmd1s_cmu1s">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase4 Period Match" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4periodmatch_vs" requiredSignalResource="phase4/pmus_omds">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase4 External Start" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4extstartevent_vs" requiredSignalResource="phase4/e0as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase4 External Stop" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4extstopevent_vs" requiredSignalResource="phase4/e1as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt - Phase4 Trap" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4trapevent_vs" requiredSignalResource="phase4/e2as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 Multichannel Mode Input 0" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1multichip1_vs" requiredSignalResource="phase1/mci0">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 Multichannel Mode Input 1" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1multichip2_vs" requiredSignalResource="phase1/mci1">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Multichannel Mode Input 0" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2multichip1_vs" requiredSignalResource="phase2/mci0">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 Multichannel Mode Input 1" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2multichip2_vs" requiredSignalResource="phase2/mci1">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 Multichannel Mode Input 0" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3multichip1_vs" requiredSignalResource="phase3/mci0">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 Multichannel Mode Input 1" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3multichip2_vs" requiredSignalResource="phase3/mci1">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 Multichannel Mode Input 0" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4multichip1_vs" requiredSignalResource="phase4/mci0">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 Multichannel Mode Input 1" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4multichip2_vs" requiredSignalResource="phase4/mci1">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase1 MultiChannel Mode Synchronization" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1multichfeedback_vs" requiredSignalResource="phase1/ps">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase2 MultiChannel Mode Synchronization" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2multichfeedback_vs" requiredSignalResource="phase2/ps">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase3 MultiChannel Mode Synchronization" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3multichfeedback_vs" requiredSignalResource="phase3/ps">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Phase4 MultiChannel Mode Synchronization" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4multichfeedback_vs" requiredSignalResource="phase4/ps">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var phase = SCM.getIntValue(currentResource);&#xD;&#xA;          var tempres = SCM.getResource(&quot;pwmmp001_tempphases&quot;);&#xD;&#xA;          if(phase == -1) { phase = 2;}&#xD;&#xA;          SCM.setIntValue(tempres, phase);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var tempres = SCM.getResource(&quot;pwmmp001_tempphases&quot;);&#xD;&#xA;          var phase = SCM.getIntValue(tempres);&#xD;&#xA;          if(phase == -1) &#xD;&#xA;          { &#xD;&#xA;            phase = 2;&#xD;&#xA;          }&#xD;&#xA;          SCM.setIntValue(currentResource, phase);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irphases" downWardmappedList="//@consumed.7" maxValue="4" minValue="2">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <localValue xsi:type="ResourceModel:StringValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <toolTipHelpDescription>This allows user to enter the number of PWM phases required. Range 2 to 4.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="Counting Mode" evalFunction="" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_srcountingmode">
    <defaultValue xsi:type="ResourceModel:StringValue" value="Centre-Aligned"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Centre-Aligned"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Centre-Aligned"/>
    <toolTipHelpDescription>This App uses Centre-Aligned mode. Please do not change this in &#xD;
PWMSP002 App</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="Compare Mode" evalFunction="" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_srcomparemode">
    <defaultValue xsi:type="ResourceModel:StringValue" value="Asymmetric"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Asymmetric"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Asymmetric"/>
    <toolTipHelpDescription>This App uses asymmetric mode. Please do not change this in&#xD;
PWMSP002 app.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Direct Output" evalFunction="function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl11&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;           &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl11&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout0passivelevel" downWardmappedList="//@consumed.87">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Selection of the logic low or high passive level for direct output</toolTipHelpDescription>
    <item name="Low" evalFunction="function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl11&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl11&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout0passivelevel/0" downWardmappedList="//@consumed.87" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Selects logic low passive level for direct output</toolTipHelpDescription>
    </item>
    <item name="High" evalFunction="           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl11&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl11&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout0passivelevel/1" downWardmappedList="//@consumed.87" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Selects logic high passive level for direct output</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Inverted Output" evalFunction="          &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl12&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl12&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout1passivelevel" downWardmappedList="//@consumed.88">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Selection of the logic low or high passive level for inverted output</toolTipHelpDescription>
    <item name="Low" evalFunction="          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl12&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl12&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout1passivelevel/0" downWardmappedList="//@consumed.88" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Selects logic low passive level for inverted output</toolTipHelpDescription>
    </item>
    <item name="High" evalFunction="          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl12&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/psl/psl12&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }         " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout1passivelevel/1" downWardmappedList="//@consumed.88" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Selects logic high passive level for inverted output</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Direct Output" evalFunction="             function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs1&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs1&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout0state" downWardmappedList="//@consumed.111">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Selects Passive State before and after compare match for Direct Output </toolTipHelpDescription>
    <item name="Before compare match" evalFunction="             function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs1&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs1&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout0state/0" downWardmappedList="//@consumed.111" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Selects Passive State before compare match for Direct Output</toolTipHelpDescription>
    </item>
    <item name="After compare match" evalFunction="              function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs1&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs1&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout0state/1" downWardmappedList="//@consumed.111" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Selects Passive State after compare match for Direct Output</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Inverted Output " evalFunction="            &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs2&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs2&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout1state" downWardmappedList="//@consumed.112">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Selects Passive State before and after compare match for indirect Output</toolTipHelpDescription>
    <item name="Before compare match" evalFunction="            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs2&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs2&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout1state/0" downWardmappedList="//@consumed.112" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Selects Passive State before compare match for Inverted Output</toolTipHelpDescription>
    </item>
    <item name="After compare match" evalFunction="            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs2&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/chc/ocs2&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwout1state/1" downWardmappedList="//@consumed.112" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Selects Passive State after compare match for Inverted Output</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Multi Channel Support" evalFunction="             function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempmcpsupport&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempmcpsupport&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwmultichannelsupport" downWardmappedList="//@consumed.0" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This will enable the multi channel mode of the CCU8. All phases can be updated coherently with this option. &#xD;
Please connect Multichannel Mode Input signals to the POSIF Multichannel Pattern output signals.</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempmcpsupport&quot;);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else if(value === 0 || value == -1){&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempmcpsupport&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1){&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else if (value === 0 || value == -1)&#xD;&#xA;               {&#xD;&#xA;                SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwmultichannelsupport/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>This will enable the multi channel mode of the CCU8.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Exit Control" evalFunction="             &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/tc/trpsw&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/tc/trpsw&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtrapexit" downWardmappedList="//@consumed.85">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows a user to select how to exit from the trap state when trap condition is inactive.</toolTipHelpDescription>
    <item name="Auto Exit" evalFunction="            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/tc/trpsw&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/tc/trpsw&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtrapexit/0" downWardmappedList="//@consumed.85" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Trap state is exited by HW when trap condition is inactive</toolTipHelpDescription>
    </item>
    <item name="SW Exit" evalFunction="            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/tc/trpsw&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/tc/trpsw&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtrapexit/1" downWardmappedList="//@consumed.85" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trap state can be exited by only SW when trap condition is inactive</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trap Enable" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_temptrapconf&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_temptrapconf&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwenabletrap" downWardmappedList="//@consumed.1" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Selection of logic low or high level for TRAP. The trap level is the level of the pin at CCUx input function CCytrap</toolTipHelpDescription>
    <item name="Enable Trap" evalFunction="&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_temptrapconf&quot;);  &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res3, 1);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res3,0);&#xD;&#xA;                &#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_temptrapconf&quot;);&#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;              if (value3 == 1) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwenabletrap/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Enable the trap</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trap Exit Time" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_temptrapexittime&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_temptrapexittime&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtrapexittime" downWardmappedList="//@consumed.14">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows a user to control trap exit</toolTipHelpDescription>
    <item name="Trap Exit with Synchronization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_temptrapexittime&quot;);  &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res3, 0);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res3,1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_temptrapexittime&quot;);&#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;              if (value3 == 0) { &#xD;&#xA;              SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtrapexittime/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription></toolTipHelpDescription>
    </item>
    <item name="Trap Exit without Synchronization" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_temptrapexittime&quot;);  &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res3, 1);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res3,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_temptrapexittime&quot;);&#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;              if (value3 == 1) { &#xD;&#xA;              SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtrapexittime/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription></toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trap Level" evalFunction="             &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/ins/ev2lm&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/ins/ev2lm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtraplevel" downWardmappedList="//@consumed.70">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This allows a user to set the trap level - active low or active high</toolTipHelpDescription>
    <item name="Low" evalFunction="            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/ins/ev2lm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/ins/ev2lm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }           " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtraplevel/0" downWardmappedList="//@consumed.70" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Low</toolTipHelpDescription>
    </item>
    <item name="High" evalFunction="          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/ins/ev2lm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/ins/ev2lm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtraplevel/1" downWardmappedList="//@consumed.70" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>High</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="CCU8 clock resolution" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#x9;&#x9;&#x9;  &#xD;&#xA;              var Res2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);          &#xD;&#xA;              var Clock = SCM.getIntValue(Res2); &#xD;&#xA;             &#xD;&#xA;              var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;              if(Clock == -1)&#xD;&#xA;              {&#xD;&#xA;                if(XMC1xxx == 0)&#xD;&#xA;                {&#xD;&#xA;                  Clock = 32;&#xD;&#xA;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  Clock = 120;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;              var clkDiv = (1000 /Clock);&#xD;&#xA;              var value2 = SCM.getDoubleValue(currentResource);&#xD;&#xA;              var tempRes = SCM.getResource(&quot;pwmmp001_tempresolution&quot;);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;if(value2 == 0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  if(XMC1xxx == 0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;    value2 = 32;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  }  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;    value2 = 20;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;              &#xD;&#xA;              SCM.setDoubleValue(tempRes,value2);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;phase1/psc/psiv&quot;);  &#xD;&#xA;              var Divider = (value2) / clkDiv;&#xD;&#xA;              var Prescalar = Math.floor( Math.log(Divider) / Math.log( 2 ) );          &#xD;&#xA;              SCM.setIntValue(Res3, Prescalar);   &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;            var tempRes = SCM.getResource(&quot;pwmmp001_tempresolution&quot;);&#xD;&#xA;            var value = SCM.getIntValue(tempRes);&#xD;&#xA;            SCM.setDoubleValue(currentResource,value);  &#xD;&#xA; &#xD;&#xA;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);&#xD;&#xA;            var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;var clkDiv = (1000 /Clock);&#xD;&#xA; &#x9;&#x9;&#x9;var res_max=Math.ceil(clkDiv*32768);&#xD;&#xA;&#x9;&#x9;&#x9;var res_min=Math.ceil(clkDiv);&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;SCM.setMinMaxValue(currentResource,res_min,res_max,1);  &#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwresolution" downWardmappedList="//@consumed.8 //@consumed.93" maxValue="42aab" minValue="9">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="14"/>
    <toolTipHelpDescription>This allows a user to input resolution for CCU8 clock. This decides the clock divider factor for the CCU8 slice.&#xD;
MinValue = 1/Clock&#xD;
MaxValue = 65535 * MinValue</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Selected Resolution" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;           var Res2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);          &#xD;&#xA;           var clock = SCM.getIntValue(Res2);&#xD;&#xA;           var Res3 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;           var value3 = SCM.getIntValue(Res3);          &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;              var Res2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);          &#xD;&#xA;              var Clock = SCM.getIntValue(Res2);&#xD;&#xA;&#xD;&#xA;              var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;              if(Clock == -1)&#xD;&#xA;              {&#xD;&#xA;                if(XMC1xxx == 0)&#xD;&#xA;                {&#xD;&#xA;                  Clock = 32;&#xD;&#xA;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  Clock = 120;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;              var clkDiv = (1000 /Clock); &#xD;&#xA;              var Res_2 = SCM.getResource(&quot;pwmmp001_tempresolution&quot;);&#xD;&#xA;              var value2 = SCM.getDoubleValue(Res_2);&#xD;&#xA;              var Divider = (value2) / clkDiv;&#xD;&#xA;&#xD;&#xA;              var Prescalar = Math.floor( Math.log(Divider) / Math.log( 2 ) );          &#xD;&#xA;              var temp = 0;   &#xD;&#xA;              if(Prescalar > 15) {&#xD;&#xA;                temp = 0;&#xD;&#xA;              }&#xD;&#xA;              else{           &#xD;&#xA;                temp = clkDiv * (1 &lt;&lt; Prescalar);&#xD;&#xA;              }&#xD;&#xA;              SCM.setDoubleValue(currentResource, temp);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9; var res_max=Math.ceil(clkDiv*32768);&#xD;&#xA;&#x9;&#x9;&#x9; var res_min=Math.floor(clkDiv);&#x9;&#x9;&#x9; &#xD;&#xA;&#x9;&#x9;&#x9; SCM.setMinMaxValue(currentResource,res_min,res_max,1);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irselresolution" maxValue="42aab" minValue="8">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4030aaaaaaaaaaab"/>
    <toolTipHelpDescription>This is the closest possible resolution value (non-editable)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Selected Prescalar" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;           var Res2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);          &#xD;&#xA;           var clock = SCM.getIntValue(Res2);&#xD;&#xA;           var Res3 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;           var value3 = SCM.getIntValue(Res3);          &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;              var Res2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);          &#xD;&#xA;              var Clock = SCM.getIntValue(Res2);&#xD;&#xA;&#xD;&#xA;              var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;              if(Clock == -1)&#xD;&#xA;              {&#xD;&#xA;                if(XMC1xxx == 0)&#xD;&#xA;                {&#xD;&#xA;                  Clock = 32;&#xD;&#xA;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  Clock = 120;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;              var clkDiv = (1000 /Clock);      &#xD;&#xA;              var Res_2 = SCM.getResource(&quot;pwmmp001_tempresolution&quot;);&#xD;&#xA;              var value2 = SCM.getDoubleValue(Res_2);&#xD;&#xA;              var Divider = (value2) / clkDiv;&#xD;&#xA;              var Prescalar = Math.floor( Math.log(Divider) / Math.log( 2 ) );          &#xD;&#xA;              var temp = 0;   &#xD;&#xA;              if(Prescalar > 15) {&#xD;&#xA;                temp = 0;&#xD;&#xA;              }&#xD;&#xA;              else{           &#xD;&#xA;                temp = clkDiv * (1 &lt;&lt; Prescalar);&#xD;&#xA;              }&#xD;&#xA;              SCM.setIntValue(currentResource, Prescalar);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irselprescalar" maxValue="F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This is the calculated prescalar value. Non-editable field</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="PWM frequency" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Scalefactor = 1000000000;&#xD;&#xA;          var PwmTime = 0;&#xD;&#xA;          var Count = 0;&#xD;&#xA;&#xD;&#xA;          var freq = SCM.getDoubleValue(currentResource);&#xD;&#xA;          var tempRes = SCM.getResource(&quot;pwmmp001_tempfreq&quot;);&#xD;&#xA;          SCM.setDoubleValue(tempRes,freq);&#xD;&#xA;&#xD;&#xA;          var Res2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;          var resolution = SCM.getDoubleValue(Res2);    &#xD;&#xA;&#xD;&#xA;          var Res5 = SCM.getResource(&quot;phase1/prs/prs&quot;);&#xD;&#xA;          &#xD;&#xA;          PwmTime = (Scalefactor / (freq)) ;&#xD;&#xA;          Count = (PwmTime / resolution);&#xD;&#xA;&#xD;&#xA;//centre-aligned mode&#xD;&#xA;          Count = (Count-1) >> 1;&#xD;&#xA;          if (Count > 65535){&#xD;&#xA;              SCM.setIntValue(Res5, 0);&#xD;&#xA;          }&#xD;&#xA;          else{&#xD;&#xA;              SCM.setIntValue(Res5, Count);&#xD;&#xA;          }                     &#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;            var tempRes = SCM.getResource(&quot;pwmmp001_tempfreq&quot;);&#xD;&#xA;            var value = SCM.getIntValue(tempRes);&#xD;&#xA;            SCM.setDoubleValue(currentResource,value);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);          &#xD;&#xA;            var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA; &#x9;&#x9;&#x9;var freq_max=Math.ceil((Clock/2)*1000000);&#xD;&#xA;&#x9;&#x9;&#x9;var freq_min=1;&#xD;&#xA;&#x9;&#x9;&#x9;SCM.setMinMaxValue(currentResource,freq_min,freq_max,1);         &#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwpwmfreq" downWardmappedList="//@consumed.9 //@consumed.98" maxValue="3938700" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="5DC"/>
    <localValue xsi:type="ResourceModel:StringValue" value="5DC"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="5dc"/>
    <toolTipHelpDescription>This allows a user to input PWM frequency. This is the Maximum value till which timer will count (Period register)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Period Register" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(Res1);   &#xD;&#xA;          var Res4 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;          var value4 = SCM.getIntValue(Res4);  &#xD;&#xA;          var Res0 = SCM.getResource(&quot;phase1/prs/prs&quot;);&#xD;&#xA;          var value0 = SCM.getIntValue(Res0);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Scalefactor = 1000000000;&#xD;&#xA;          var PwmTime = 0;&#xD;&#xA;          var Count = 0;&#xD;&#xA;&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_tempfreq&quot;);          &#xD;&#xA;          var freq = SCM.getDoubleValue(Res);&#xD;&#xA;&#xD;&#xA;          var Res2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;          var resolution = SCM.getDoubleValue(Res2);    &#xD;&#xA;          &#xD;&#xA;          PwmTime = (Scalefactor / (freq )) ;&#xD;&#xA;          Count = (PwmTime / resolution);&#xD;&#xA;&#xD;&#xA;//centre-aligned mode&#xD;&#xA;          Count = (Count-1) >> 1;&#xD;&#xA;          if (Count > 65535){&#xD;&#xA;            Count = 0;&#xD;&#xA;          }&#xD;&#xA;          SCM.setIntValue(currentResource, Count);                     &#xD;&#xA;        }        &#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irperiodreg" maxValue="FFFF" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4e1f"/>
    <toolTipHelpDescription>This is the period register value as per the configured PWM frequency. Use this value&#xD;
        to find the values of the compare registers for asymmetric mode.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 1 Compare value 1" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase1/cr1s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res1, value1);&#xD;&#xA;&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase1/cr1s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          SCM.setIntValue(currentResource, value1);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwph1compareval1" downWardmappedList="//@consumed.100" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enter compare value in hex for Compare Channel 1, CR1&#xD;
DutyCycle = ((PR-CR1) + (PR - CR2)) / (2PR + 1)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 1 Compare value 2" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase1/cr2s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res1, value1);&#xD;&#xA;&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase1/cr2s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          SCM.setIntValue(currentResource, value1);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwph1compareval2" downWardmappedList="//@consumed.102" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enter compare value in hex for Compare Channel 2, CR2&#xD;
DutyCycle = ((PR-CR1) + (PR - CR2)) / (2PR + 1)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 2 Compare value 1" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase2/cr1s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res1, value1);&#xD;&#xA;&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase2/cr1s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          SCM.setIntValue(currentResource, value1);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwph2compareval1" downWardmappedList="//@consumed.103" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enter compare value in hex for Compare Channel 1, CR1&#xD;
DutyCycle = ((PR-CR1) + (PR - CR2)) / (2PR + 1)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 2 Compare value 2" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase2/cr2s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res1, value1);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase2/cr2s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          SCM.setIntValue(currentResource, value1);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwph2compareval2" downWardmappedList="//@consumed.104" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enter compare value in hex for Compare Channel 2, CR2&#xD;
DutyCycle = ((PR-CR1) + (PR - CR2)) / (2PR + 1)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 3 Compare value 1" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase3/cr1s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res1, value1);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase3/cr1s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          SCM.setIntValue(currentResource, value1);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwph3compareval1" downWardmappedList="//@consumed.105" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enter compare value in hex for Compare Channel 1, CR1&#xD;
DutyCycle = ((PR-CR1) + (PR - CR2)) / (2PR + 1)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 3 Compare value 2" evalFunction="&#xD;&#xA;         function ForwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase3/cr2s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res1, value1);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase3/cr2s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          SCM.setIntValue(currentResource, value1);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwph3compareval2" downWardmappedList="//@consumed.106" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enter compare value in hex for Compare Channel 2, CR2&#xD;
DutyCycle = ((PR-CR1) + (PR - CR2)) / (2PR + 1)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 4 Compare value 1" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase4/cr1s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res1, value1);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase4/cr1s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          SCM.setIntValue(currentResource, value1);&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwph4compareval1" downWardmappedList="//@consumed.107" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enter compare value in hex for Compare Channel 1, CR1&#xD;
DutyCycle = ((PR-CR1) + (PR - CR2)) / (2PR + 1)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 4 Compare value 2" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase4/cr2s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res1, value1);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res1 = SCM.getResource(&quot;phase4/cr2s&quot;);&#xD;&#xA;          var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          SCM.setIntValue(currentResource, value1);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwph4compareval2" downWardmappedList="//@consumed.108" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enter compare value in hex for Compare Channel 2, CR2&#xD;
DutyCycle = ((PR-CR1) + (PR - CR2)) / (2PR + 1)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 1 Duty Cycle" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;            var Res_1 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);&#xD;&#xA;            var value_1 = SCM.getIntValue(Res_1);&#xD;&#xA;            var Res_4 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;            var value_4 = SCM.getIntValue(Res_4);&#xD;&#xA;            var Res2 = SCM.getResource(&quot;phase1/prs/prs&quot;);&#xD;&#xA;            var period = SCM.getIntValue(Res2);&#xD;&#xA;            var Res3 = SCM.getResource(&quot;phase1/cr1s&quot;);&#xD;&#xA;            var cr1 = SCM.getIntValue(Res3);&#xD;&#xA;            var Res4 = SCM.getResource(&quot;phase1/cr2s&quot;);&#xD;&#xA;            var cr2 = SCM.getIntValue(Res4);  &#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res3 = SCM.getResource(&quot;phase1/cr1s&quot;);&#xD;&#xA;          var cr1 = SCM.getIntValue(Res3);&#xD;&#xA;          var Res4 = SCM.getResource(&quot;phase1/cr2s&quot;);&#xD;&#xA;          var cr2 = SCM.getIntValue(Res4);  &#xD;&#xA;          var asymduty = 0.0;&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//Find the actual resolution from clock frequency and PSIV&#xD;&#xA;          var Res2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;          var resolution = SCM.getDoubleValue(Res2);&#xD;&#xA;//---------------------------------------------------------------------------    &#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//Find the period value from the counting mode and resolution&#xD;&#xA;          var Res1 = SCM.getResource(&quot;pwmmp001_irperiodreg&quot;);&#xD;&#xA;          var period = SCM.getIntValue(Res1);&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//asymmetric with centre-aligned&#xD;&#xA;         asymduty = (((period-cr1) + (period-cr2)) / (2 * period +1)) * 100;&#xD;&#xA;         SCM.setDoubleValue(currentResource,asymduty);&#xD;&#xA;     }&#xD;&#xA;     " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwdutycycle1" maxValue="64" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4058ff851deefd06"/>
    <toolTipHelpDescription>This will display the duty cycle of phase1 as per compare values entered.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 2 Duty Cycle" evalFunction="&#xD;&#xA;       function ForwardMapping(){&#xD;&#xA;            var Res_1 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);&#xD;&#xA;            var value_1 = SCM.getIntValue(Res_1);&#xD;&#xA;            var Res_4 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;            var value_4 = SCM.getIntValue(Res_4);&#xD;&#xA;            var Res2 = SCM.getResource(&quot;phase1/prs/prs&quot;);&#xD;&#xA;            var period = SCM.getIntValue(Res2);&#xD;&#xA;            var Res3 = SCM.getResource(&quot;phase2/cr1s&quot;);&#xD;&#xA;            var cr1 = SCM.getIntValue(Res3);&#xD;&#xA;            var Res4 = SCM.getResource(&quot;phase2/cr2s&quot;);&#xD;&#xA;            var cr2 = SCM.getIntValue(Res4);  &#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res3 = SCM.getResource(&quot;phase2/cr1s&quot;);&#xD;&#xA;          var cr1 = SCM.getIntValue(Res3);&#xD;&#xA;          var Res4 = SCM.getResource(&quot;phase2/cr2s&quot;);&#xD;&#xA;          var cr2 = SCM.getIntValue(Res4);  &#xD;&#xA;          var asymduty = 0.0;&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//Find the actual resolution from clock frequency and PSIV&#xD;&#xA;          var Res2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;          var resolution = SCM.getDoubleValue(Res2);&#xD;&#xA;//---------------------------------------------------------------------------    &#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//Find the period value from the counting mode and resolution&#xD;&#xA;          var Res1 = SCM.getResource(&quot;pwmmp001_irperiodreg&quot;);&#xD;&#xA;          var period = SCM.getIntValue(Res1);&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//asymmetric with centre-aligned&#xD;&#xA;         asymduty = (((period-cr1) + (period-cr2)) / (2 * period +1)) * 100;&#xD;&#xA;         SCM.setDoubleValue(currentResource,asymduty);&#xD;&#xA;     }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwdutycycle2" maxValue="64" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4058ff851deefd06"/>
    <toolTipHelpDescription>This will display the duty cycle of phase1 as per compare values entered.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 3 Duty Cycle" evalFunction="&#xD;&#xA;       function ForwardMapping(){&#xD;&#xA;            var Res_1 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);&#xD;&#xA;            var value_1 = SCM.getIntValue(Res_1);&#xD;&#xA;            var Res_4 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;            var value_4 = SCM.getIntValue(Res_4);&#xD;&#xA;            var Res2 = SCM.getResource(&quot;phase1/prs/prs&quot;);&#xD;&#xA;            var period = SCM.getIntValue(Res2);&#xD;&#xA;            var Res3 = SCM.getResource(&quot;phase3/cr1s&quot;);&#xD;&#xA;            var cr1 = SCM.getIntValue(Res3);&#xD;&#xA;            var Res4 = SCM.getResource(&quot;phase3/cr2s&quot;);&#xD;&#xA;            var cr2 = SCM.getIntValue(Res4);  &#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res3 = SCM.getResource(&quot;phase3/cr1s&quot;);&#xD;&#xA;          var cr1 = SCM.getIntValue(Res3);&#xD;&#xA;          var Res4 = SCM.getResource(&quot;phase3/cr2s&quot;);&#xD;&#xA;          var cr2 = SCM.getIntValue(Res4);  &#xD;&#xA;          var asymduty = 0.0;&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//Find the actual resolution from clock frequency and PSIV&#xD;&#xA;          var Res2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;          var resolution = SCM.getDoubleValue(Res2);&#xD;&#xA;//---------------------------------------------------------------------------    &#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//Find the period value from the counting mode and resolution&#xD;&#xA;          var Res1 = SCM.getResource(&quot;pwmmp001_irperiodreg&quot;);&#xD;&#xA;          var period = SCM.getIntValue(Res1);&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//asymmetric with centre-aligned&#xD;&#xA;         asymduty = (((period-cr1) + (period-cr2)) / (2 * period +1)) * 100;&#xD;&#xA;         SCM.setDoubleValue(currentResource,asymduty);&#xD;&#xA;         }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwdutycycle3" maxValue="64" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4058ff851deefd06"/>
    <toolTipHelpDescription>This will display the duty cycle of phase1 as per compare values entered.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Phase 4 Duty Cycle" evalFunction="&#xD;&#xA;       function ForwardMapping(){&#xD;&#xA;            var Res_1 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);&#xD;&#xA;            var value_1 = SCM.getIntValue(Res_1);&#xD;&#xA;            var Res_4 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;            var value_4 = SCM.getIntValue(Res_4);&#xD;&#xA;            var Res2 = SCM.getResource(&quot;phase1/prs/prs&quot;);&#xD;&#xA;            var period = SCM.getIntValue(Res2);&#xD;&#xA;            var Res3 = SCM.getResource(&quot;phase4/cr1s&quot;);&#xD;&#xA;            var cr1 = SCM.getIntValue(Res3);&#xD;&#xA;            var Res4 = SCM.getResource(&quot;phase4/cr2s&quot;);&#xD;&#xA;            var cr2 = SCM.getIntValue(Res4);  &#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res3 = SCM.getResource(&quot;phase4/cr1s&quot;);&#xD;&#xA;          var cr1 = SCM.getIntValue(Res3);&#xD;&#xA;          var Res4 = SCM.getResource(&quot;phase4/cr2s&quot;);&#xD;&#xA;          var cr2 = SCM.getIntValue(Res4);  &#xD;&#xA;          var asymduty = 0.0;&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//Find the actual resolution from clock frequency and PSIV&#xD;&#xA;          var Res2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;          var resolution = SCM.getDoubleValue(Res2);&#xD;&#xA;//---------------------------------------------------------------------------    &#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//Find the period value from the counting mode and resolution&#xD;&#xA;          var Res1 = SCM.getResource(&quot;pwmmp001_irperiodreg&quot;);&#xD;&#xA;          var period = SCM.getIntValue(Res1);&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//---------------------------------------------------------------------------&#xD;&#xA;//asymmetric with centre-aligned&#xD;&#xA;         asymduty = (((period-cr1) + (period-cr2)) / (2 * period +1)) * 100;&#xD;&#xA;         SCM.setDoubleValue(currentResource,asymduty);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwdutycycle4" maxValue="64" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4058ff851deefd06"/>
    <toolTipHelpDescription>This will display the duty cycle of phase1 as per compare values entered.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Rising Time" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var rise = SCM.getDoubleValue(currentResource);&#xD;&#xA;            var tempRes = SCM.getResource(&quot;pwmmp001_temprisedeadtime&quot;);&#xD;&#xA;            SCM.setDoubleValue(tempRes,rise);&#xD;&#xA;          }&#xD;&#xA;&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var tempRes = SCM.getResource(&quot;pwmmp001_temprisedeadtime&quot;);&#xD;&#xA;            var value = SCM.getDoubleValue(tempRes);&#xD;&#xA;            SCM.setDoubleValue(currentResource, value);&#xD;&#xA;          } &#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwrisedeadtime" downWardmappedList="//@consumed.5" maxValue="64" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Enter rising dead time value</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Falling Time" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var fall = SCM.getDoubleValue(currentResource);&#xD;&#xA;            var tempRes = SCM.getResource(&quot;pwmmp001_tempfalldeadtime&quot;);&#xD;&#xA;            SCM.setDoubleValue(tempRes,fall);&#xD;&#xA;&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var tempRes = SCM.getResource(&quot;pwmmp001_tempfalldeadtime&quot;);&#xD;&#xA;            var value = SCM.getDoubleValue(tempRes);&#xD;&#xA;            SCM.setDoubleValue(currentResource, value);&#xD;&#xA;          }  &#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwfalldeadtime" downWardmappedList="//@consumed.4" maxValue="64" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Enter falling dead time value</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Selected Rising time" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);         &#xD;&#xA;            var clock = SCM.getIntValue(Res_2);&#xD;&#xA;            var Res_3 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;            var value_3 = SCM.getIntValue(Res_3);  &#xD;&#xA;            var Res1 = SCM.getResource(&quot;phase1/dc1r/dt1r&quot;);&#xD;&#xA;            var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_temprisedeadtime&quot;);&#xD;&#xA;            var rise = SCM.getDoubleValue(Res);&#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;//resolution calculation&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;            var resolution = SCM.getDoubleValue(Res_2);    &#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;            var Res2 = SCM.getResource(&quot;pwmmp001_tempfalldeadtime&quot;);&#xD;&#xA;            var fall = SCM.getDoubleValue(Res2);&#xD;&#xA;&#xD;&#xA;            var falldeadtime = (fall * 1000) / resolution;&#xD;&#xA;            var risedeadtime = (rise * 1000) / resolution;&#xD;&#xA;&#xD;&#xA;            var fallcount = 0;&#xD;&#xA;            var risecount = 0;&#xD;&#xA;            var count = 0;&#xD;&#xA;            if(falldeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(risedeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              risecount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              risecount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              risecount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              risecount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(fallcount > 3 || risecount > 3)&#xD;&#xA;            {&#xD;&#xA;                count = 3;&#xD;&#xA;              &#xD;&#xA;            }&#xD;&#xA;            else if(fallcount > risecount)&#xD;&#xA;            {&#xD;&#xA;              count = fallcount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount > fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount == fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            risedeadtime = Math.ceil( ( (rise*1000) / (resolution * (1 &lt;&lt; count))) );&#xD;&#xA;            if(risedeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              risedeadtime = 255;&#xD;&#xA;            }&#xD;&#xA;            risedeadtime = (risedeadtime * (resolution * (1&lt;&lt;count)))/ 1000;&#xD;&#xA;            SCM.setDoubleValue(currentResource,risedeadtime);&#xD;&#xA;          }    &#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irselrisedeadtime" maxValue="64 " minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This is the nearest rising dead time value as per resolution</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Selected Falling time" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);         &#xD;&#xA;            var clock = SCM.getIntValue(Res_2);&#xD;&#xA;            var Res_3 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;            var value_3 = SCM.getIntValue(Res_3);  &#xD;&#xA;            var Res1 = SCM.getResource(&quot;phase1/dc1r/dt1r&quot;);&#xD;&#xA;            var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_temprisedeadtime&quot;);&#xD;&#xA;            var rise = SCM.getDoubleValue(Res);&#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;//resolution calculation&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;            var resolution = SCM.getDoubleValue(Res_2);    &#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;            var Res2 = SCM.getResource(&quot;pwmmp001_tempfalldeadtime&quot;);&#xD;&#xA;            var fall = SCM.getDoubleValue(Res2);&#xD;&#xA;&#xD;&#xA;            var falldeadtime = (fall * 1000) / resolution;&#xD;&#xA;            var risedeadtime = (rise * 1000) / resolution;&#xD;&#xA;&#xD;&#xA;            var fallcount = 0;&#xD;&#xA;            var risecount = 0;&#xD;&#xA;            var count = 0;&#xD;&#xA;            if(falldeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(risedeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              risecount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              risecount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              risecount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              risecount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(fallcount > 3 || risecount > 3)&#xD;&#xA;            {&#xD;&#xA;                count = 3;&#xD;&#xA;              &#xD;&#xA;            }&#xD;&#xA;            else if(fallcount > risecount)&#xD;&#xA;            {&#xD;&#xA;              count = fallcount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount > fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount == fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            falldeadtime = Math.ceil( ( (fall*1000) / (resolution * (1 &lt;&lt; count))) );&#xD;&#xA;            if(falldeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              falldeadtime = 255;&#xD;&#xA;            }&#xD;&#xA;            falldeadtime = (falldeadtime * (resolution * (1&lt;&lt;count)))/ 1000;&#xD;&#xA;            SCM.setDoubleValue(currentResource,falldeadtime);&#xD;&#xA;          }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irselfalldeadtime" maxValue="64 " minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This is the nearest falling dead time value as per resolution</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Selected Rising Time register" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);         &#xD;&#xA;            var clock = SCM.getIntValue(Res_2);&#xD;&#xA;            var Res_3 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;            var value_3 = SCM.getIntValue(Res_3);  &#xD;&#xA;            var Res1 = SCM.getResource(&quot;phase1/dc1r/dt1r&quot;);&#xD;&#xA;            var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_temprisedeadtime&quot;);&#xD;&#xA;            var rise = SCM.getDoubleValue(Res);&#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;//resolution calculation&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;            var resolution = SCM.getDoubleValue(Res_2);    &#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;            var Res2 = SCM.getResource(&quot;pwmmp001_tempfalldeadtime&quot;);&#xD;&#xA;            var fall = SCM.getDoubleValue(Res2);&#xD;&#xA;&#xD;&#xA;            var falldeadtime = (fall * 1000) / resolution;&#xD;&#xA;            var risedeadtime = (rise * 1000) / resolution;&#xD;&#xA;&#xD;&#xA;            var fallcount = 0;&#xD;&#xA;            var risecount = 0;&#xD;&#xA;            var count = 0;&#xD;&#xA;            if(falldeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(risedeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              risecount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              risecount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              risecount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              risecount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(fallcount > 3 || risecount > 3)&#xD;&#xA;            {&#xD;&#xA;                count = 3;&#xD;&#xA;              &#xD;&#xA;            }&#xD;&#xA;            else if(fallcount > risecount)&#xD;&#xA;            {&#xD;&#xA;              count = fallcount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount > fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount == fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            risedeadtime = Math.ceil( ( (rise*1000) / (resolution * (1 &lt;&lt; count))) );&#xD;&#xA;            if(risedeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              risedeadtime = 255;&#xD;&#xA;            }&#xD;&#xA;            SCM.setDoubleValue(currentResource,risedeadtime);&#xD;&#xA;          }        &#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwselrisedeadtimereg" maxValue="FF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This is the rising dead time register value (DT1R)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Selected Falling Time register" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);         &#xD;&#xA;            var clock = SCM.getIntValue(Res_2);&#xD;&#xA;            var Res_3 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;            var value_3 = SCM.getIntValue(Res_3);  &#xD;&#xA;            var Res1 = SCM.getResource(&quot;phase1/dc1r/dt1r&quot;);&#xD;&#xA;            var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_temprisedeadtime&quot;);&#xD;&#xA;            var rise = SCM.getDoubleValue(Res);&#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;//resolution calculation&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;            var resolution = SCM.getDoubleValue(Res_2);    &#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;            var Res2 = SCM.getResource(&quot;pwmmp001_tempfalldeadtime&quot;);&#xD;&#xA;            var fall = SCM.getDoubleValue(Res2);&#xD;&#xA;&#xD;&#xA;            var falldeadtime = (fall * 1000) / resolution;&#xD;&#xA;            var risedeadtime = (rise * 1000) / resolution;&#xD;&#xA;&#xD;&#xA;            var fallcount = 0;&#xD;&#xA;            var risecount = 0;&#xD;&#xA;            var count = 0;&#xD;&#xA;            if(falldeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(risedeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              risecount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              risecount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              risecount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              risecount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(fallcount > 3 || risecount > 3)&#xD;&#xA;            {&#xD;&#xA;                count = 3;&#xD;&#xA;              &#xD;&#xA;            }&#xD;&#xA;            else if(fallcount > risecount)&#xD;&#xA;            {&#xD;&#xA;              count = fallcount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount > fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount == fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            falldeadtime = Math.ceil( ( (fall*1000) / (resolution * (1 &lt;&lt; count))) );&#xD;&#xA;            if(falldeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              falldeadtime = 255;&#xD;&#xA;            }&#xD;&#xA;            SCM.setDoubleValue(currentResource,falldeadtime);&#xD;&#xA;          }        &#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwselfalldeadtimereg" maxValue="FF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This is the falling dead time register value (DI1F)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Dead Time Prescalar" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;ccu8globalapp/ccu8global_irclock&quot;);         &#xD;&#xA;            var clock = SCM.getIntValue(Res_2);&#xD;&#xA;            var Res_3 = SCM.getResource(&quot;phase1/psc/psiv&quot;);&#xD;&#xA;            var value_3 = SCM.getIntValue(Res_3);  &#xD;&#xA;            var Res1 = SCM.getResource(&quot;phase1/dc1r/dt1r&quot;);&#xD;&#xA;            var value1 = SCM.getIntValue(Res1);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_temprisedeadtime&quot;);&#xD;&#xA;            var rise = SCM.getDoubleValue(Res);&#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;//resolution calculation&#xD;&#xA;            var Res_2 = SCM.getResource(&quot;pwmmp001_irselresolution&quot;);         &#xD;&#xA;            var resolution = SCM.getDoubleValue(Res_2);    &#xD;&#xA;//-------------------------------------------------------------------------&#xD;&#xA;            var Res2 = SCM.getResource(&quot;pwmmp001_tempfalldeadtime&quot;);&#xD;&#xA;            var fall = SCM.getDoubleValue(Res2);&#xD;&#xA;&#xD;&#xA;            var falldeadtime = (fall * 1000) / resolution;&#xD;&#xA;            var risedeadtime = (rise * 1000) / resolution;&#xD;&#xA;&#xD;&#xA;            var fallcount = 0;&#xD;&#xA;            var risecount = 0;&#xD;&#xA;            var count = 0;&#xD;&#xA;            if(falldeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(falldeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              fallcount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(risedeadtime > 2047)&#xD;&#xA;            {&#xD;&#xA;              risecount = 4;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 1023)&#xD;&#xA;            {&#xD;&#xA;              risecount = 3;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 511)&#xD;&#xA;            {&#xD;&#xA;              risecount = 2;&#xD;&#xA;            }&#xD;&#xA;            else if(risedeadtime > 255)&#xD;&#xA;            {&#xD;&#xA;              risecount = 1;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            if(fallcount > 3 || risecount > 3)&#xD;&#xA;            {&#xD;&#xA;                count = 3;&#xD;&#xA;              &#xD;&#xA;            }&#xD;&#xA;            else if(fallcount > risecount)&#xD;&#xA;            {&#xD;&#xA;              count = fallcount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount > fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            else if(risecount == fallcount)&#xD;&#xA;            {&#xD;&#xA;              count = risecount;&#xD;&#xA;            }&#xD;&#xA;            SCM.setDoubleValue(currentResource,count);&#xD;&#xA;          }        &#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irseldeadtimeprescalar" maxValue="3" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This is the dead time prescalar value. </toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Dead Time Configurations" evalFunction="             &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdeadtimeconf" downWardmappedList="//@consumed.2">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This allows a user to select dead time enable-disable configuration</toolTipHelpDescription>
    <item name="Disable" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/dtc/dte1&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1/dtc/dcen1&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;phase1/dtc/dcen2&quot;);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;                SCM.setIntValue(Res1,0);&#xD;&#xA;                SCM.setIntValue(Res2,0);&#xD;&#xA;                SCM.setIntValue(Res3, 1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;                SCM.setIntValue(Res1,0);&#xD;&#xA;                SCM.setIntValue(Res2,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/dtc/dte1&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1/dtc/dcen1&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;phase1/dtc/dcen2&quot;);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;);&#xD;&#xA;&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var value1 = SCM.getIntValue(Res1); &#xD;&#xA;              var value2 = SCM.getIntValue(Res2);&#xD;&#xA;              var value3 = SCM.getIntValue(Res3);  &#xD;&#xA;              if (value3 == 1 || value3 == -1) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }    &#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdeadtimeconf/0" downWardmappedList="//@consumed.114 //@consumed.115 //@consumed.116 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Disable dead time</toolTipHelpDescription>
    </item>
    <item name="Enable for Direct Output" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/dtc/dte1&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1/dtc/dcen1&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;phase1/dtc/dcen2&quot;);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;);&#xD;&#xA;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,1);&#xD;&#xA;                SCM.setIntValue(Res1,1);&#xD;&#xA;                SCM.setIntValue(Res2,0);&#xD;&#xA;                SCM.setIntValue(Res3, 2);  &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;                SCM.setIntValue(Res1,0);&#xD;&#xA;                SCM.setIntValue(Res2,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/dtc/dte1&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1/dtc/dcen1&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;phase1/dtc/dcen2&quot;);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;);&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var value1 = SCM.getIntValue(Res1); &#xD;&#xA;              var value2 = SCM.getIntValue(Res2);  &#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;&#xD;&#xA;              if (value3 == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdeadtimeconf/1" downWardmappedList="//@consumed.114 //@consumed.115 //@consumed.116" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable dead time for Direct Output</toolTipHelpDescription>
    </item>
    <item name="Enable for Inverted Output" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/dtc/dte1&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1/dtc/dcen1&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;phase1/dtc/dcen2&quot;);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,1);&#xD;&#xA;                SCM.setIntValue(Res1,0);&#xD;&#xA;                SCM.setIntValue(Res2,1);&#xD;&#xA;                SCM.setIntValue(Res3, 3);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;                SCM.setIntValue(Res1,0);&#xD;&#xA;                SCM.setIntValue(Res2,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/dtc/dte1&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1/dtc/dcen1&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;phase1/dtc/dcen2&quot;);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;);&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var value1 = SCM.getIntValue(Res1); &#xD;&#xA;              var value2 = SCM.getIntValue(Res2);  &#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;&#xD;&#xA;              if (value3 == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdeadtimeconf/2" downWardmappedList="//@consumed.114 //@consumed.115 //@consumed.116" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Dead Time for Inverted Output</toolTipHelpDescription>
    </item>
    <item name="Enable for Both Outputs" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/dtc/dte1&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1/dtc/dcen1&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;phase1/dtc/dcen2&quot;);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;);&#xD;&#xA;              if (value === 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,1);&#xD;&#xA;                SCM.setIntValue(Res1,1);&#xD;&#xA;                SCM.setIntValue(Res2,1);&#xD;&#xA;                SCM.setIntValue(Res3, 4);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;                SCM.setIntValue(Res1,0);&#xD;&#xA;                SCM.setIntValue(Res2,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/dtc/dte1&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1/dtc/dcen1&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;phase1/dtc/dcen2&quot;);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmmp001_tempdeadtime&quot;);&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var value1 = SCM.getIntValue(Res1); &#xD;&#xA;              var value2 = SCM.getIntValue(Res2);  &#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;&#xD;&#xA;              if (value3 == 4) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdeadtimeconf/3" downWardmappedList="//@consumed.114 //@consumed.115 //@consumed.116" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Dead Time for both outputs</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Compare Value" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var value = SCM.getIntValue(currentResource);&#xD;&#xA;            var Res = SCM.getResource(&quot;phase1/dits/dcvs&quot;);&#xD;&#xA;            SCM.setIntValue (Res, value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase1/dits/dcvs&quot;);&#xD;&#xA;            var value = SCM.getIntValue(Res);          &#xD;&#xA;            SCM.setIntValue (currentResource, value);&#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_irwdithercomp" downWardmappedList="//@consumed.91" maxValue="F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Enter Dither compare value. This gives number of cycles used in dither averaging process</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Mode" evalFunction="             &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/tc/dithe&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1/tc/dithe&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdithermode" downWardmappedList="//@consumed.81">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows a user to set the dither mode</toolTipHelpDescription>
    <item name="Disable" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/tc/dithe&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/tc/dithe&quot;);&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              if (value0 === 0) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value0 == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        &#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdithermode/0" downWardmappedList="//@consumed.81" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Disable dither</toolTipHelpDescription>
    </item>
    <item name="Change in only PWM period" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/tc/dithe&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,3);    &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/tc/dithe&quot;);&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#xD;&#xA;              if (value0 === 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value0 == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            } &#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdithermode/1" downWardmappedList="//@consumed.81" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Change in only PWM period is allowed.</toolTipHelpDescription>
    </item>
    <item name="Change in only duty cycle" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/tc/dithe&quot;);&#xD;&#xA;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,2);&#xD;&#xA;      &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/tc/dithe&quot;);&#xD;&#xA;&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#xD;&#xA;              if (value0 === 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value0 == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdithermode/2" downWardmappedList="//@consumed.81" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Change in only PWM duty cycle is allowed</toolTipHelpDescription>
    </item>
    <item name="Change in both PWM period and duty cycle" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/tc/dithe&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,1);      &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;phase1/tc/dithe&quot;);&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              if (value0 === 1) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value0 == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwdithermode/3" downWardmappedList="//@consumed.81" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Change in both PWM period and duty cycle is allowed. </toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="StartApp" evalFunction="             &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempstart&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstart" downWardmappedList="//@consumed.3" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether the PWM waveform generation should be started&#xD;
during initialization.It is recommended not to use this option as first PWM cycle might be lost.&#xD;
Out Pins are configured after the initalization of this app and thus PWM cycle will start abruptly in between and can generate spikes. </toolTipHelpDescription>
    <item name="Start During initialization" evalFunction="             &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempstart&quot;);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else if(value === 0 || value == -1){&#xD;&#xA;                SCM.setIntValue(Res, 0);&#xD;&#xA;              }        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){ &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else { &#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }                &#xD;&#xA;            }        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstart/0" downWardmappedList="//@consumed.3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Start Waveform Generation During Initialisation.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase Select" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_tempphases&quot;);  &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);   &#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res0,value0);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);              &#xD;&#xA;            }    &#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphaseselect" downWardmappedList="//@consumed.6">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <toolTipHelpDescription>Select the phase no and configure interrupts for the same.</toolTipHelpDescription>
    <item name="Phase1" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {   &#xD;&#xA;              var Res0 = SCM.getResource(&quot;pwmmp001_tempphases&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              &#xD;&#xA;              var Res1 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              SCM.setIntValue(Res1,1);              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempphases&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value > 0 ) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;                &#xD;&#xA;                var Res1 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;                var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                if(value1 == 1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }               &#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              }             &#xD;&#xA;            }          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphaseselect/1" downWardmappedList="//@consumed.6" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Phase1</toolTipHelpDescription>
    </item>
    <item name="Phase2" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {   &#xD;&#xA;              var Res0 = SCM.getResource(&quot;pwmmp001_tempphases&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              &#xD;&#xA;              var Res1 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              SCM.setIntValue(Res1,2);              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempphases&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value > 1 ) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;                &#xD;&#xA;                var Res1 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;                var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                if(value1 == 2) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }               &#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              }             &#xD;&#xA;            }           &#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphaseselect/2" downWardmappedList="//@consumed.6" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Phase2</toolTipHelpDescription>
    </item>
    <item name="Phase3" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {   &#xD;&#xA;              var Res0 = SCM.getResource(&quot;pwmmp001_tempphases&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              &#xD;&#xA;              var Res1 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              SCM.setIntValue(Res1,3);              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempphases&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value > 2 ) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;                &#xD;&#xA;                var Res1 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;                var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                if(value1 == 3) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }               &#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              }             &#xD;&#xA;            }           &#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphaseselect/3" downWardmappedList="//@consumed.6" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Phase3</toolTipHelpDescription>
    </item>
    <item name="Phase4" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {   &#xD;&#xA;              var Res0 = SCM.getResource(&quot;pwmmp001_tempphases&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              &#xD;&#xA;              var Res1 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              SCM.setIntValue(Res1,4);              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempphases&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value > 3 ) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;                &#xD;&#xA;                var Res1 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;                var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                if(value1 == 4) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }               &#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              }             &#xD;&#xA;            }           &#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphaseselect/4" downWardmappedList="//@consumed.6" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Phase4</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase1 Compare Match Interrupt While Counting Up" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwcomaprematch1" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether compare match interrupt while counting up&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/cmu1e&quot;;&#xD;&#xA;              var str3 = str1+value0+str2; &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/cmu1e&quot;;&#xD;&#xA;              var str3 = str1+value0+str2;            &#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 || value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }  else {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwcomaprematch1/0" downWardmappedList="//@consumed.151" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Compare match interrupt while counting up at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase1 Compare Match Interrupt While Counting Down" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwcomaprematch2" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether compare match interrupt while counting down&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/cmd1e&quot;;&#xD;&#xA;              var str3 = str1+value0+str2; &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/cmd1e&quot;;&#xD;&#xA;              var str3 = str1+value0+str2;            &#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 || value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }  else {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwcomaprematch2/0" downWardmappedList="//@consumed.152" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Compare match interrupt while counting down at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase1 Period Match Interrupt" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwperiodmatch1" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether period match interrupt&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/pme&quot;;&#xD;&#xA;              var str3 = str1+value0+str2; &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/pme&quot;;&#xD;&#xA;              var str3 = str1+value0+str2;            &#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 || value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }  else {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwperiodmatch1/0" downWardmappedList="//@consumed.150" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Period match interrupt at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase1 External start Interrupt" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstart1" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether external start interrupt&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/e0ae&quot;;&#xD;&#xA;              var str3 = str1+value0+str2; &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/e0ae&quot;;&#xD;&#xA;              var str3 = str1+value0+str2;            &#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 || value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }  else {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;            }          &#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstart1/0" downWardmappedList="//@consumed.153" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable External Start (Event 0) interrupt at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase1 External stop Interrupt" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstop1" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether external stop interrupt&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/e1ae&quot;;&#xD;&#xA;              var str3 = str1+value0+str2; &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/e1ae&quot;;&#xD;&#xA;              var str3 = str1+value0+str2;            &#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 || value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }  else {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstop1/0" downWardmappedList="//@consumed.154" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable External stop (Event 1) interrupt at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase1 Trap Interrupt" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtrap1" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether trap interrupt&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/e2ae&quot;;&#xD;&#xA;              var str3 = str1+value0+str2; &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;index&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              var str1 = &quot;phase&quot;;&#xD;&#xA;              var str2 = &quot;/inte/e2ae&quot;;&#xD;&#xA;              var str3 = str1+value0+str2;            &#xD;&#xA;              var Res = SCM.getResource(str3); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 || value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }  else {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwtrap1/0" downWardmappedList="//@consumed.155" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Trap (Event 2) interrupt at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 1 Direct Output Enable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase1pad0enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase1pad0enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad0padenable" downWardmappedList="//@consumed.15" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enables the Phase 1 Direct Output Pin and Consumes the Pin. If &#xD;
not enabled then Port Pin is not consumed.</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad0enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad0enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA; " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad0padenable/0" downWardmappedList="//@consumed.15" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 1 Direct Output Characteristics" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase1pad0chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase1pad0chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad0char" downWardmappedList="//@consumed.16">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Phase 1 Direct Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 0 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad0char/0" downWardmappedList="//@consumed.16" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Phase 1 Direct Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad0char/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Phase 1 Direct Output pin characteristics is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 2 Direct Output Enable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase2pad0enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase2pad0enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad0padenable" downWardmappedList="//@consumed.19" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enables the Phase 2 Direct Output Pin and Consumes the Pin. If &#xD;
not enabled then Port Pin is not consumed</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad0enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad0enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA; " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad0padenable/0" downWardmappedList="//@consumed.19" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 2 Direct Output Characteristics" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase2pad0chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase2pad0chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad0char" downWardmappedList="//@consumed.20">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Phase 2 Direct Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 0 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad0char/0" downWardmappedList="//@consumed.20" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Phase 2 Direct Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad0char/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Phase 2 Direct Output pin characteristics is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 3 Direct Output Enable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase3pad0enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase3pad0enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad0padenable" downWardmappedList="//@consumed.23" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enables the Phase 3 Direct Output Pin and Consumes the Pin. If &#xD;
not enabled then Port Pin is not consumed</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad0enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad0enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA; " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad0padenable/0" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 3 Direct Output Characteristics" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase3pad0chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase3pad0chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad0char" downWardmappedList="//@consumed.24">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Phase 3 Direct Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 0 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad0char/0" downWardmappedList="//@consumed.24" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Phase 3 Direct Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad0char/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Phase 3 Direct Output pin characteristics is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 4 Direct Output Enable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase4pad0enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase4pad0enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad0padenable" downWardmappedList="//@consumed.27" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enables the Phase 4 Direct Output Pin and Consumes the Pin. If &#xD;
not enabled then Port Pin is not consumed</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad0enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad0enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA; " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad0padenable/0" downWardmappedList="//@consumed.27" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 4 Direct Output Characteristics" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase4pad0chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase4pad0chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad0char" downWardmappedList="//@consumed.28">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Phase 4 Direct Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 0 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad0char/0" downWardmappedList="//@consumed.28" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Phase 4 Direct Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad0chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad0char/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Phase 4 Direct Output pin characteristics is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 1 Inverted Output Enable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase1pad1enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase1pad1enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad1padenable" downWardmappedList="//@consumed.17" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enables the Phase 1 Inverted Output Pin and Consumes the Pin. If &#xD;
not enabled then Port Pin is not consumed</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad1enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad1enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA; " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad1padenable/0" downWardmappedList="//@consumed.17" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 1 Inverted Output Characteristics" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase1pad1chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase1pad1chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad1char" downWardmappedList="//@consumed.18">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Phase 1 Inverted Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 0 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad1char/0" downWardmappedList="//@consumed.18" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Phase 1 Inverted Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase1pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase1pad1char/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Phase 1 Inverted Output pin characteristics is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 2 Inverted Output Enable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase2pad1enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase2pad1enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad1padenable" downWardmappedList="//@consumed.21" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enables the Phase 2 Inverted Output Pin and Consumes the Pin. If &#xD;
not enabled then Port Pin is not consumed</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad1enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad1enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA; " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad1padenable/0" downWardmappedList="//@consumed.21" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 2 Inverted Output Characteristics" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase2pad1chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase2pad1chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad1char" downWardmappedList="//@consumed.22">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Phase 2 Inverted Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 0 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad1char/0" downWardmappedList="//@consumed.22" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Phase 2 Inverted Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase2pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase2pad1char/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Phase 2 Inverted Output pin characteristics is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 3 Inverted Output Enable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase3pad1enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase3pad1enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad1padenable" downWardmappedList="//@consumed.25" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enables the Phase 3 Inverted Output Pin and Consumes the Pin. If &#xD;
not enabled then Port Pin is not consumed</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad1enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad1enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA; " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad1padenable/0" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 3 Inverted Output Characteristics" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase3pad1chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase3pad1chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad1char" downWardmappedList="//@consumed.26">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Phase 3 Inverted Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 0 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad1char/0" downWardmappedList="//@consumed.26" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Phase 3 Inverted Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase3pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase3pad1char/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Phase 3 Inverted Output pin characteristics is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 4 Inverted Output Enable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase4pad1enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase4pad1enabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad1padenable" downWardmappedList="//@consumed.29" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enables the Phase 4 Inverted Output Pin and Consumes the Pin. If &#xD;
not enabled then Port Pin is not consumed</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad1enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad1enabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA; " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad1padenable/0" downWardmappedList="//@consumed.29" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 4 Inverted Output Characteristics" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase4pad1chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmmp001_phase4pad1chardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad1char" downWardmappedList="//@consumed.30">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Phase 4 Inverted Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 0 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad1char/0" downWardmappedList="//@consumed.30" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Phase 4 Inverted Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_phase4pad1chardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwphase4pad1char/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Phase 4 Inverted Output pin characteristics is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 1 Direct Output Pad Class" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0padclass" downWardmappedList="//@consumed.31">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Phase 1 Direct Output Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0padclass/0" downWardmappedList="//@consumed.159 //@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0padclass/1" downWardmappedList="//@consumed.159 //@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0padclass/2" downWardmappedList="//@consumed.159 //@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Don't Care" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0padclass/3" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 1 Direct Output Driver Mode" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0paddrivermode" downWardmappedList="//@consumed.159">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Phase 1 Direct Output Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0paddrivermode/0" downWardmappedList="//@consumed.159" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,7);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 7 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0paddrivermode/1" downWardmappedList="//@consumed.159" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0paddrivermode/2" downWardmappedList="//@consumed.159" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x02&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0paddrivermode/3" downWardmappedList="//@consumed.159" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x00&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 0 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0paddrivermode/4" downWardmappedList="//@consumed.159" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 3) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                            }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out0paddrivermode/5" downWardmappedList="//@consumed.159" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 1 Inverted Output Pad Class" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1padclass" downWardmappedList="//@consumed.32">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Phase 1 Inverted Output Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1padclass/0" downWardmappedList="//@consumed.160 //@consumed.32" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1padclass/1" downWardmappedList="//@consumed.160 //@consumed.32" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1padclass/2" downWardmappedList="//@consumed.160 //@consumed.32" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Don't Care" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1padclass/3" downWardmappedList="//@consumed.32" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 1 Inverted Output Driver Mode" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1paddrivermode" downWardmappedList="//@consumed.160">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Phase 1 Inverted Output Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1paddrivermode/0" downWardmappedList="//@consumed.160" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,7);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 7 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1paddrivermode/1" downWardmappedList="//@consumed.160" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1paddrivermode/2" downWardmappedList="//@consumed.160" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x02&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1paddrivermode/3" downWardmappedList="//@consumed.160" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x00&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 0 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1paddrivermode/4" downWardmappedList="//@consumed.160" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase1_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph1out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 3) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                            }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph1out1paddrivermode/5" downWardmappedList="//@consumed.160" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 2 Direct Output Pad Class" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0padclass" downWardmappedList="//@consumed.33">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Phase 2 Direct Output Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0padclass/0" downWardmappedList="//@consumed.161 //@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0padclass/1" downWardmappedList="//@consumed.161 //@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0padclass/2" downWardmappedList="//@consumed.161 //@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Don't Care" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0padclass/3" downWardmappedList="//@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 2 Direct Output Driver Mode" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0paddrivermode" downWardmappedList="//@consumed.161">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Phase 2 Direct Output Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0paddrivermode/0" downWardmappedList="//@consumed.161" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,7);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 7 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0paddrivermode/1" downWardmappedList="//@consumed.161" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0paddrivermode/2" downWardmappedList="//@consumed.161" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x02&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0paddrivermode/3" downWardmappedList="//@consumed.161" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x00&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 0 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0paddrivermode/4" downWardmappedList="//@consumed.161" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 3) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                            }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out0paddrivermode/5" downWardmappedList="//@consumed.161" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 2 Inverted Output Pad Class" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1padclass" downWardmappedList="//@consumed.34">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Phase 2 Inverted Output Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1padclass/0" downWardmappedList="//@consumed.162 //@consumed.34" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1padclass/1" downWardmappedList="//@consumed.162 //@consumed.34" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1padclass/2" downWardmappedList="//@consumed.162 //@consumed.34" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Don't Care" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1padclass/3" downWardmappedList="//@consumed.34" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 2 Inverted Output Driver Mode" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1paddrivermode" downWardmappedList="//@consumed.162">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Phase 2 Inverted Output Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1paddrivermode/0" downWardmappedList="//@consumed.162" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,7);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 7 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1paddrivermode/1" downWardmappedList="//@consumed.162" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1paddrivermode/2" downWardmappedList="//@consumed.162" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x02&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1paddrivermode/3" downWardmappedList="//@consumed.162" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x00&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 0 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1paddrivermode/4" downWardmappedList="//@consumed.162" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase2_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph2out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 3) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                            }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph2out1paddrivermode/5" downWardmappedList="//@consumed.162" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 3 Direct Output Pad Class" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0padclass" downWardmappedList="//@consumed.35">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Phase 3 Direct Output Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0padclass/0" downWardmappedList="//@consumed.163 //@consumed.35" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0padclass/1" downWardmappedList="//@consumed.163 //@consumed.35" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0padclass/2" downWardmappedList="//@consumed.163 //@consumed.35" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Don't Care" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0padclass/3" downWardmappedList="//@consumed.35" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 3 Direct Output Driver Mode" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0paddrivermode" downWardmappedList="//@consumed.163">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Phase 3 Direct Output Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0paddrivermode/0" downWardmappedList="//@consumed.163" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,7);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 7 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0paddrivermode/1" downWardmappedList="//@consumed.163" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0paddrivermode/2" downWardmappedList="//@consumed.163" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x02&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0paddrivermode/3" downWardmappedList="//@consumed.163" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x00&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 0 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0paddrivermode/4" downWardmappedList="//@consumed.163" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 3) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                            }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out0paddrivermode/5" downWardmappedList="//@consumed.163" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 3 Inverted Output Pad Class" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1padclass" downWardmappedList="//@consumed.36">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Phase 3 Inverted Output Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1padclass/0" downWardmappedList="//@consumed.164 //@consumed.36" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1padclass/1" downWardmappedList="//@consumed.164 //@consumed.36" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1padclass/2" downWardmappedList="//@consumed.164 //@consumed.36" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Don't Care" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1padclass/3" downWardmappedList="//@consumed.36" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 3 Inverted Output Driver Mode" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1paddrivermode" downWardmappedList="//@consumed.164">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Phase 3 Inverted Output Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1paddrivermode/0" downWardmappedList="//@consumed.164" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,7);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 7 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1paddrivermode/1" downWardmappedList="//@consumed.164" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1paddrivermode/2" downWardmappedList="//@consumed.164" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x02&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1paddrivermode/3" downWardmappedList="//@consumed.164" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x00&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 0 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1paddrivermode/4" downWardmappedList="//@consumed.164" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase3_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph3out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 3) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                            }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph3out1paddrivermode/5" downWardmappedList="//@consumed.164" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 4 Direct Output Pad Class" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0padclass" downWardmappedList="//@consumed.37">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Phase 4 Direct Output Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0padclass/0" downWardmappedList="//@consumed.165 //@consumed.37" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0padclass/1" downWardmappedList="//@consumed.165 //@consumed.37" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0padclass/2" downWardmappedList="//@consumed.165 //@consumed.37" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Don't Care" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0padclass/3" downWardmappedList="//@consumed.37" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 4 Direct Output Driver Mode" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0paddrivermode" downWardmappedList="//@consumed.165">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Phase 4 Direct Output Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0paddrivermode/0" downWardmappedList="//@consumed.165" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,7);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 7 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0paddrivermode/1" downWardmappedList="//@consumed.165" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0paddrivermode/2" downWardmappedList="//@consumed.165" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x02&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0paddrivermode/3" downWardmappedList="//@consumed.165" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x00&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 0 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0paddrivermode/4" downWardmappedList="//@consumed.165" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_directout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out0padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 3) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                            }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out0paddrivermode/5" downWardmappedList="//@consumed.165" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 4 Inverted Output Pad Class" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1padclass" downWardmappedList="//@consumed.38">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Phase 4 Inverted Output Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1padclass/0" downWardmappedList="//@consumed.166 //@consumed.38" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1padclass/1" downWardmappedList="//@consumed.166 //@consumed.38" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1padclass/2" downWardmappedList="//@consumed.166 //@consumed.38" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Don't Care" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1padclass/3" downWardmappedList="//@consumed.38" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Phase 4 Inverted Output Driver Mode" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1paddrivermode" downWardmappedList="//@consumed.166">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Phase 4 Inverted Output Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1paddrivermode/0" downWardmappedList="//@consumed.166" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,7);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 7 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1paddrivermode/1" downWardmappedList="//@consumed.166" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1paddrivermode/2" downWardmappedList="//@consumed.166" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x02&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1paddrivermode/3" downWardmappedList="//@consumed.166" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x00&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 0 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1paddrivermode/4" downWardmappedList="//@consumed.166" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;phase4_invertedout/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;pwmmp001_ph4out1padclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 3) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                            }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwph4out1paddrivermode/5" downWardmappedList="//@consumed.166" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External Start Trigger Edge" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) &#xD;&#xA;            {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            }&#xD;&#xA;            else&#xD;&#xA;            {&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstartedge" downWardmappedList="//@consumed.10">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows a user to select the start trigger edge - Rising, Falling or both edges</toolTipHelpDescription>
    <item name="No Trigger" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstartedge/0" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Trigger is not required. External start is not configured</toolTipHelpDescription>
    </item>
    <item name="Rising Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 1 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstartedge/1" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on rising edge.</toolTipHelpDescription>
    </item>
    <item name="Falling Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,2);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 2 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstartedge/2" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on falling edge.</toolTipHelpDescription>
    </item>
    <item name="Both Edges" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,3);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartedge&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 3 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstartedge/3" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on rising and falling edge.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External Stop Trigger Edge" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) &#xD;&#xA;            {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            }&#xD;&#xA;            else&#xD;&#xA;            {&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstopedge" downWardmappedList="//@consumed.12">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows a user to select the stop trigger edge - Rising, Falling or both edges</toolTipHelpDescription>
    <item name="No Trigger" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstopedge/0" downWardmappedList="//@consumed.12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Trigger is not required. External stop is not configured</toolTipHelpDescription>
    </item>
    <item name="Rising Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 1 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstopedge/1" downWardmappedList="//@consumed.12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on rising edge.</toolTipHelpDescription>
    </item>
    <item name="Falling Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,2);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 2 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstopedge/2" downWardmappedList="//@consumed.12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on falling edge.</toolTipHelpDescription>
    </item>
    <item name="Both Edges" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,3);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopedge&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 3 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwstopedge/3" downWardmappedList="//@consumed.12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on rising and falling edge.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External Start Active Edge Configuration" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_tempextstartconf&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_tempextstartconf&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) &#xD;&#xA;            {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            }&#xD;&#xA;            else&#xD;&#xA;            {&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstartconf" downWardmappedList="//@consumed.11">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows a user to configure external start functionality</toolTipHelpDescription>
    <item name="Start Timer" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartconf&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartconf&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstartconf/0" downWardmappedList="//@consumed.11" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This will set only the run bit of the timer.</toolTipHelpDescription>
    </item>
    <item name="Clear and Start timer" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartconf&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstartconf&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 1 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstartconf/1" downWardmappedList="//@consumed.11" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This will first clear the timer and then set the run bit of the timer.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External Stop Active Edge Configurations" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_tempextstopconf&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmmp001_tempextstopconf&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) &#xD;&#xA;            {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            }&#xD;&#xA;            else&#xD;&#xA;            {&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstopconf" downWardmappedList="//@consumed.13">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows a user to configure external stop functionality</toolTipHelpDescription>
    <item name="Stop Timer" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopconf&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopconf&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstopconf/0" downWardmappedList="//@consumed.13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This will reset the run bit of the timer.</toolTipHelpDescription>
    </item>
    <item name="Clear timer" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopconf&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopconf&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 1 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstopconf/1" downWardmappedList="//@consumed.13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This will clear the timer register value but keeps the timer running.</toolTipHelpDescription>
    </item>
    <item name="Clear and stop timer" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopconf&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,2);&#xD;&#xA;              } &#xD;&#xA;              else if (value === 0)&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmmp001_tempextstopconf&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 2 )&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } &#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_erwextstopconf/2" downWardmappedList="//@consumed.13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This will clear the timer register value and also clears the RUN bit of the timer.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function is used to initialize the APP" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_init" APIName="pwmmp001_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will deinitialize the app." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_deinit" APIName="pwmmp001_Deinit">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will start the CCU8_PWMMultiPhaseAsym_PWMMP001 App which will in turn start the CCU8x_CCy slices." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_start" APIName="pwmmp001_Start">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will stop the CCU8_PWMMultiPhaseAsym_PWMMP001 APP which will in turn stop the CCU8x_CCy slices." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_stop" APIName="pwmmp001_Stop">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will modify the duty cycle of the output waveform which will change the pulse width." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_setdutycycle" APIName="pwmmp001_SetDutyCycle">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will modify the duty cycle of the output waveform which will change the pulse width." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_setcompare" APIName="pwmmp001_setcompare">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will modify the PWM frequency. Frequency is given in hertz." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_setpwmfreq" APIName="pwmmp001_SetPwmFreq">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will modify the PWM frequency. Frequency is given in terms of the period register value." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_setperiod" APIName="pwmmp001_setperiod">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will update the timer register value when timer is stopped. This is used to set the starting value of the timer." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_settimerval" APIName="pwmmp001_SetTimerVal">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will request the update of the period register, compare register values from the respective shadow transfers." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_swrequestshadowtransfer" APIName="pwmmp001_SWRequestShadowTransfer">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will read the period register value." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_getperiodreg" APIName="pwmmp001_GetPeriodReg">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will reset the trap flag by checking whether trap condition is reset." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_resettrapflag" APIName="pwmmp001_ResetTrapFlag">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will read the timer values of compare register and period register." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_gettimerregsval" APIName="pwmmp001_GetTimerRegsVal">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will read the timer status whether timer is running or idle." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_gettimerstatus" APIName="pwmmp001_GetTimerStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This is the interrupt handler called from NVIC. It checks which interrupt has occurred and callback function registered by the top level App would be called." URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_interrupthandler" APIName="pwmmp001_interruptHandler">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempmcpsupport" upWardMappingList="//@provided.82" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_temptrapconf" upWardMappingList="//@provided.84" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempdeadtime" upWardMappingList="//@provided.111 //@provided.111/@item.0 //@provided.111/@item.1 //@provided.111/@item.2 //@provided.111/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempstart" upWardMappingList="//@provided.114 //@provided.114/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempfalldeadtime" upWardMappingList="//@provided.105 //@provided.106 //@provided.107 //@provided.108 //@provided.109 //@provided.110" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_temprisedeadtime" upWardMappingList="//@provided.104 //@provided.106 //@provided.107 //@provided.108 //@provided.109 //@provided.110" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/index" upWardMappingList="//@provided.115 //@provided.115/@item.0 //@provided.115/@item.1 //@provided.115/@item.2 //@provided.115/@item.3 //@provided.116/@item.0 //@provided.117/@item.0 //@provided.118/@item.0 //@provided.119/@item.0 //@provided.120/@item.0 //@provided.121/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempphases" upWardMappingList="//@provided.75 //@provided.115 //@provided.115/@item.0 //@provided.115/@item.1 //@provided.115/@item.2 //@provided.115/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempresolution" upWardMappingList="//@provided.87 //@provided.88 //@provided.89" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="14"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempfreq" upWardMappingList="//@provided.90 //@provided.91" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="5dc"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="5dc"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempextstartedge" upWardMappingList="//@provided.154 //@provided.154/@item.0 //@provided.154/@item.1 //@provided.154/@item.2 //@provided.154/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempextstartconf" upWardMappingList="//@provided.156 //@provided.156/@item.0 //@provided.156/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempextstopedge" upWardMappingList="//@provided.155 //@provided.155/@item.0 //@provided.155/@item.1 //@provided.155/@item.2 //@provided.155/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_tempextstopconf" upWardMappingList="//@provided.157 //@provided.157/@item.0 //@provided.157/@item.1 //@provided.157/@item.2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_temptrapexittime" upWardMappingList="//@provided.85" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase1pad0enabledummy" upWardMappingList="//@provided.122 //@provided.122/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase1pad0chardummy" upWardMappingList="//@provided.123 //@provided.123/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase1pad1enabledummy" upWardMappingList="//@provided.130 //@provided.130/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase1pad1chardummy" upWardMappingList="//@provided.131 //@provided.131/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase2pad0enabledummy" upWardMappingList="//@provided.124 //@provided.124/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase2pad0chardummy" upWardMappingList="//@provided.125 //@provided.125/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase2pad1enabledummy" upWardMappingList="//@provided.132 //@provided.132/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase2pad1chardummy" upWardMappingList="//@provided.133 //@provided.133/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase3pad0enabledummy" upWardMappingList="//@provided.126 //@provided.126/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase3pad0chardummy" upWardMappingList="//@provided.127 //@provided.127/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase3pad1enabledummy" upWardMappingList="//@provided.134 //@provided.134/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase3pad1chardummy" upWardMappingList="//@provided.135 //@provided.135/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase4pad0enabledummy" upWardMappingList="//@provided.128 //@provided.128/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase4pad0chardummy" upWardMappingList="//@provided.129 //@provided.129/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase4pad1enabledummy" upWardMappingList="//@provided.136 //@provided.136/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_phase4pad1chardummy" upWardMappingList="//@provided.137 //@provided.137/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1out0padclassdummy" upWardMappingList="//@provided.138 //@provided.138/@item.0 //@provided.138/@item.1 //@provided.138/@item.2 //@provided.138/@item.3 //@provided.139/@item.0 //@provided.139/@item.1 //@provided.139/@item.2 //@provided.139/@item.3 //@provided.139/@item.4 //@provided.139/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph1out1padclassdummy" upWardMappingList="//@provided.140 //@provided.140/@item.0 //@provided.140/@item.1 //@provided.140/@item.2 //@provided.140/@item.3 //@provided.141/@item.0 //@provided.141/@item.1 //@provided.141/@item.2 //@provided.141/@item.3 //@provided.141/@item.4 //@provided.141/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2out0padclassdummy" upWardMappingList="//@provided.142 //@provided.142/@item.0 //@provided.142/@item.1 //@provided.142/@item.2 //@provided.142/@item.3 //@provided.143/@item.0 //@provided.143/@item.1 //@provided.143/@item.2 //@provided.143/@item.3 //@provided.143/@item.4 //@provided.143/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph2out1padclassdummy" upWardMappingList="//@provided.144 //@provided.144/@item.0 //@provided.144/@item.1 //@provided.144/@item.2 //@provided.144/@item.3 //@provided.145/@item.0 //@provided.145/@item.1 //@provided.145/@item.2 //@provided.145/@item.3 //@provided.145/@item.4 //@provided.145/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3out0padclassdummy" upWardMappingList="//@provided.146 //@provided.146/@item.0 //@provided.146/@item.1 //@provided.146/@item.2 //@provided.146/@item.3 //@provided.147/@item.0 //@provided.147/@item.1 //@provided.147/@item.2 //@provided.147/@item.3 //@provided.147/@item.4 //@provided.147/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph3out1padclassdummy" upWardMappingList="//@provided.148 //@provided.148/@item.0 //@provided.148/@item.1 //@provided.148/@item.2 //@provided.148/@item.3 //@provided.149/@item.0 //@provided.149/@item.1 //@provided.149/@item.2 //@provided.149/@item.3 //@provided.149/@item.4 //@provided.149/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4out0padclassdummy" upWardMappingList="//@provided.150 //@provided.150/@item.0 //@provided.150/@item.1 //@provided.150/@item.2 //@provided.150/@item.3 //@provided.151/@item.0 //@provided.151/@item.1 //@provided.151/@item.2 //@provided.151/@item.3 //@provided.151/@item.4 //@provided.151/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/pwmmp001_ph4out1padclassdummy" upWardMappingList="//@provided.152 //@provided.152/@item.0 //@provided.152/@item.1 //@provided.152/@item.2 //@provided.152/@item.3 //@provided.153/@item.0 //@provided.153/@item.1 //@provided.153/@item.2 //@provided.153/@item.3 //@provided.153/@item.4 //@provided.153/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CCU81/CCU81_1.dd#//@provided.3"/>
    <requiredResource uriString="peripheral/ccu8/*/cc8/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CCU81/CCU81_1.dd#//@provided.56"/>
    <requiredResource uriString="peripheral/ccu8/*/cc8/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          if (phase == 3 || phase == 4) {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3">
    <requiredResource uriString="peripheral/ccu8/*/cc8/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          if (phase == 4) {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4">
    <requiredResource uriString="peripheral/ccu8/*/cc8/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() &#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_erwphase1pad0padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1_directout">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P1/P1_1.dd#//@provided.37"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() &#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_erwphase1pad1padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1_invertedout">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P1/P1_1.dd#//@provided.40"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() &#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_erwphase2pad0padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2_directout">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P1/P1_1.dd#//@provided.43"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() &#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_erwphase2pad1padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2_invertedout">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P1/P1_1.dd#//@provided.46"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition()&#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          var Res1 = Solver.getResource(&quot;pwmmp001_erwphase3pad0padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res1);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            if (phase == 3 || phase == 4)&#xD;&#xA;            {&#xD;&#xA;              return true; &#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3_directout">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition()&#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          var Res1 = Solver.getResource(&quot;pwmmp001_erwphase3pad1padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res1);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            if (phase == 3 || phase == 4)&#xD;&#xA;            {&#xD;&#xA;              return true; &#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3_invertedout">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition()&#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          var Res1 = Solver.getResource(&quot;pwmmp001_erwphase4pad0padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res1);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            if (phase == 4)&#xD;&#xA;            {&#xD;&#xA;              return true; &#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4_directout">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition()&#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          var Res1 = Solver.getResource(&quot;pwmmp001_erwphase4pad1padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res1);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            if (phase == 4)&#xD;&#xA;            {&#xD;&#xA;              return true; &#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4_invertedout">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/ccu8globalapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CCU8GLOBAL/1.0.20/ccu8global_0.app#/"/>
    <requiredResource uriString="app/ccu8global/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/ccu8pwmlib">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../LIBS/1.0.28/libs_0.app#/"/>
    <requiredResource uriString="app/libs/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_erwstartedge/0&quot;);&#xD;&#xA;          var ExtStart = Solver.getIntValue(Res0);&#xD;&#xA;          if (ExtStart == 1) {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/scusyncstart">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.64"/>
    <requiredResource uriString="peripheral/scu/0/gcu/ccu8_global_enable/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/e2as" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/gp2_unsync" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.4"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/gp2_unsync" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/global_signal" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.5"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/gp1_unsync" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.6"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/gp0_unsync" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.7"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/mci0" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/e1as" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.8"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/gidls_ssi" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.9"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/gidlc_csi" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.10"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/gcss_sse" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.11"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/gcss_sdse" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.12"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/gcss_spse" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.13"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/ins" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/ins/ev0em" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.14/@bitFields.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/ins/ev1em" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.14/@bitFields.4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/ins/ev2lm" upWardMappingList="//@provided.86 //@provided.86/@item.0 //@provided.86/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.14/@bitFields.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/cmc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.15"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/cmc/tce" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.15/@bitFields.11"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tcst" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.16"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tcset" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.17"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tcclr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.18"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="18000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.19"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="18000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc/strm" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.19/@bitFields.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc/endm" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.19/@bitFields.7"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc/tssm" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.19/@bitFields.1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc/tcm" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.19/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc/dithe" upWardMappingList="//@provided.113 //@provided.113/@item.0 //@provided.113/@item.1 //@provided.113/@item.2 //@provided.113/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.19/@bitFields.11"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc/trape0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.19/@bitFields.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc/trape1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.19/@bitFields.15"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc/trpse" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.19/@bitFields.18"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/tc/trpsw" upWardMappingList="//@provided.83 //@provided.83/@item.0 //@provided.83/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.19/@bitFields.19"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/psl" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.20"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/psl/psl11" upWardMappingList="//@provided.78 //@provided.78/@item.0 //@provided.78/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.20/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/psl/psl12" upWardMappingList="//@provided.79 //@provided.79/@item.0 //@provided.79/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.20/@bitFields.1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dit" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.21"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dits" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.22"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dits/dcvs" upWardMappingList="//@provided.112" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.22/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/psc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.23"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/psc/psiv" upWardMappingList="//@provided.87 //@provided.88 //@provided.89 //@provided.91 //@provided.100 //@provided.101 //@provided.102 //@provided.103 //@provided.106 //@provided.107 //@provided.108 //@provided.109 //@provided.110" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.23/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/fpc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.24"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/fpcs" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.25"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/pr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.26"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/prs" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.27"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/prs/prs" upWardMappingList="//@provided.90 //@provided.91 //@provided.100 //@provided.101 //@provided.102 //@provided.103" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.27/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/cr1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.28"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/cr1s" upWardMappingList="//@provided.92 //@provided.100" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.29"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/cr2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.30"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/cr2s" upWardMappingList="//@provided.93 //@provided.100" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.31"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/cr1s" upWardMappingList="//@provided.94 //@provided.101" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.57"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/cr2s" upWardMappingList="//@provided.95 //@provided.101" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.58"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/cr1s" upWardMappingList="//@provided.96 //@provided.102" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/cr2s" upWardMappingList="//@provided.97 //@provided.102" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/cr1s" upWardMappingList="//@provided.98 //@provided.103" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/cr2s" upWardMappingList="//@provided.99 //@provided.103" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/chc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.32"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/chc/ase" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.32/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/chc/ocs1" upWardMappingList="//@provided.80 //@provided.80/@item.0 //@provided.80/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.32/@bitFields.1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/chc/ocs2" upWardMappingList="//@provided.81 //@provided.81/@item.0 //@provided.81/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.32/@bitFields.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dtc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.33"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dtc/dte1" upWardMappingList="//@provided.111/@item.0 //@provided.111/@item.1 //@provided.111/@item.2 //@provided.111/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.33/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dtc/dcen1" upWardMappingList="//@provided.111/@item.0 //@provided.111/@item.1 //@provided.111/@item.2 //@provided.111/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.33/@bitFields.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dtc/dcen2" upWardMappingList="//@provided.111/@item.0 //@provided.111/@item.1 //@provided.111/@item.2 //@provided.111/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.33/@bitFields.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dtc/dtcc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.33/@bitFields.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dc1r" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.34"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dc1r/dt1r" upWardMappingList="//@provided.106 //@provided.107 //@provided.108 //@provided.109 //@provided.110" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.34/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dc1r/dt1f" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.34/@bitFields.1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/dc2r" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.35"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/timer" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.36"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/c0v" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.37"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/c1v" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.38"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/c2v" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.39"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/c3v" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.40"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/ints" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.41"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/inte" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.42"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/inte/pme" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.42/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/inte/cmu1e" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.42/@bitFields.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/inte/cmd1e" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.42/@bitFields.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/inte/e0ae" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.42/@bitFields.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/inte/e1ae" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.42/@bitFields.7"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/inte/e2ae" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.42/@bitFields.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/inte" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.59"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/inte/pme" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.59/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/inte/cmu1e" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.59/@bitFields.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/inte/cmd1e" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.59/@bitFields.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/inte/e0ae" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.59/@bitFields.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/inte/e1ae" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.59/@bitFields.7"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/inte/e2ae" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU81/CCU81_1.dd#//@provided.59/@bitFields.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/inte" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/inte/pme" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/inte/cmu1e" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/inte/cmd1e" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/inte/e0ae" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/inte/e1ae" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/inte/e2ae" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/inte" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/inte/pme" upWardMappingList="//@provided.118/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/inte/cmu1e" upWardMappingList="//@provided.116/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/inte/cmd1e" upWardMappingList="//@provided.117/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/inte/e0ae" upWardMappingList="//@provided.119/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/inte/e1ae" upWardMappingList="//@provided.120/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/inte/e2ae" upWardMappingList="//@provided.121/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/sws" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.43"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/swr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU81/CCU81_1.dd#//@provided.44"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/ccu8globalapp/ccu8global_irclock" upWardMappingList="//@provided.87 //@provided.88 //@provided.89 //@provided.90 //@provided.91 //@provided.100 //@provided.101 //@provided.102 //@provided.103 //@provided.106 //@provided.107 //@provided.108 //@provided.109 //@provided.110" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="-1"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../CCU8GLOBAL/1.0.20/ccu8global_0.app#//@provided.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="78"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1_directout/pdr_pd" upWardMappingList="//@provided.138/@item.0 //@provided.138/@item.1 //@provided.138/@item.2 //@provided.139 //@provided.139/@item.0 //@provided.139/@item.1 //@provided.139/@item.2 //@provided.139/@item.3 //@provided.139/@item.4 //@provided.139/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P1/P1_1.dd#//@provided.38"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1_invertedout/pdr_pd" upWardMappingList="//@provided.140/@item.0 //@provided.140/@item.1 //@provided.140/@item.2 //@provided.141 //@provided.141/@item.0 //@provided.141/@item.1 //@provided.141/@item.2 //@provided.141/@item.3 //@provided.141/@item.4 //@provided.141/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P1/P1_1.dd#//@provided.41"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2_directout/pdr_pd" upWardMappingList="//@provided.142/@item.0 //@provided.142/@item.1 //@provided.142/@item.2 //@provided.143 //@provided.143/@item.0 //@provided.143/@item.1 //@provided.143/@item.2 //@provided.143/@item.3 //@provided.143/@item.4 //@provided.143/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P1/P1_1.dd#//@provided.44"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2_invertedout/pdr_pd" upWardMappingList="//@provided.144/@item.0 //@provided.144/@item.1 //@provided.144/@item.2 //@provided.145 //@provided.145/@item.0 //@provided.145/@item.1 //@provided.145/@item.2 //@provided.145/@item.3 //@provided.145/@item.4 //@provided.145/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P1/P1_1.dd#//@provided.47"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3_directout/pdr_pd" upWardMappingList="//@provided.146/@item.0 //@provided.146/@item.1 //@provided.146/@item.2 //@provided.147 //@provided.147/@item.0 //@provided.147/@item.1 //@provided.147/@item.2 //@provided.147/@item.3 //@provided.147/@item.4 //@provided.147/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3_invertedout/pdr_pd" upWardMappingList="//@provided.148/@item.0 //@provided.148/@item.1 //@provided.148/@item.2 //@provided.149 //@provided.149/@item.0 //@provided.149/@item.1 //@provided.149/@item.2 //@provided.149/@item.3 //@provided.149/@item.4 //@provided.149/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4_directout/pdr_pd" upWardMappingList="//@provided.150/@item.0 //@provided.150/@item.1 //@provided.150/@item.2 //@provided.151 //@provided.151/@item.0 //@provided.151/@item.1 //@provided.151/@item.2 //@provided.151/@item.3 //@provided.151/@item.4 //@provided.151/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4_invertedout/pdr_pd" upWardMappingList="//@provided.152/@item.0 //@provided.152/@item.1 //@provided.152/@item.2 //@provided.153 //@provided.153/@item.0 //@provided.153/@item.1 //@provided.153/@item.2 //@provided.153/@item.3 //@provided.153/@item.4 //@provided.153/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/gp2_unsync" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.60"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/gp0_unsync" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/e0as" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.61"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/out0" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/out1" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.62"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/out1" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/e1as" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/scusyncstart/gsc_enable" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SCU/SCU_0.dd#//@provided.65"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/out0" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.45"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/out1" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.46"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/out1" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/st" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.47"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/st" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.63"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/cmd1s_cmu1s" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/global_signal" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/mci0" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.64"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/concat_bus_out" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.65"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4_invertedout/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/cmd1s_cmu1s" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.48"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1_directout/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P1/P1_1.dd#//@provided.39"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/e2as" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.66"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/concat_bus_out" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/mci1" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/mci1" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.49"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3_directout/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/concat_bus_in" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/concat_bus_in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.67"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/out0" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.68"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/mci0" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/ps" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/e2as" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.50"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/cmd1s_cmu1s" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.69"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2_invertedout/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P1/P1_1.dd#//@provided.48"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/gp2_unsync" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/st" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/cmd1s_cmu1s" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/e0as" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/gp1_unsync" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/pmus_omds" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/gp0_unsync" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/pmus_omds" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.70"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/concat_bus_in" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/mci1" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.71"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/gp1_unsync" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/global_signal" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.72"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/e1as" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.73"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/ps" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/ps" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.51"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/mci0" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.52"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/e1as" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4_directout/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/e0as" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/mci1" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/ps" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.74"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2_directout/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P1/P1_1.dd#//@provided.45"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/out0" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/gp1_unsync" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.75"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/concat_bus_out" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.53"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3_invertedout/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/pmus_omds" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/global_signal" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1_invertedout/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P1/P1_1.dd#//@provided.42"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase4/st" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase2/gp0_unsync" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.76"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase3/e2as" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/e0as" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.54"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.20/app/pwmmp001/0/phase1/pmus_omds" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU81/CCU81_1.dd#//@provided.55"/>
  </consumed>
  <propertyConstants name="uridevice" value="device">
    <propertyConstants name="uriPeri_CCU8" value="Peripheral/ccu8/">
      <propertyConstants name="uriPWMMP001App" value="app/pwmmp001/0">
        <propertyConstants name="uriPWMSP002App" value="app/PWMSP002/0">
          <propertyConstants name="uri_clockapp" value="app/clk001/0/"/>
        </propertyConstants>
      </propertyConstants>
    </propertyConstants>
  </propertyConstants>
  <categoryDescription description="Peripheral related Apps" name="Peripheral Specific Apps">
    <subCategory description="Timer-Capture-Compare" name="Timer-Capture-Compare">
      <subCategory description="CAPCOM8" name="Capture/Compare Unit 8 (CAPCOM8)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Apps related to Capture/Compare" name="Time Processing">
      <subCategory description="PWM waveform generation" name="PWM Generation"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.20">
    <keywords>Multiphase Asymmetric PWM</keywords>
    <keywords>Duty Cycle</keywords>
    <keywords>PWM period</keywords>
    <keywords>CCU8</keywords>
    <keywords>PWMMP001</keywords>
    <keywords>Dead Time</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" isIOApp="true"/>
  </manifestInfo>
  <datagenerate fileName="PWMMP001.h" fileType="HFILE" templateFileName="PWMMP001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="PWMMP001_Conf.h" fileType="HFILE" templateFileName="PWMMP001Confh.jet"/>
  <datagenerate fileName="PWMMP001.c" templateFileName="PWMMP001c.jet"/>
  <datagenerate fileName="PWMMP001_Conf.c" templateFileName="PWMMP001Confc.jet"/>
  <connections sourceSignal="ccu8globalapp/ccu8global_globalsignal_vs" targetSignal="app/pwmmp001/0/pwmmp001_globalsignal0_vs"/>
  <connections sourceSignal="ccu8globalapp/ccu8global_globalsignal_vs" targetSignal="app/pwmmp001/0/pwmmp001_globalsignal1_vs"/>
  <connections sourceSignal="ccu8globalapp/ccu8global_globalsignal_vs" targetSignal="app/pwmmp001/0/pwmmp001_globalsignal2_vs"/>
  <connections sourceSignal="ccu8globalapp/ccu8global_globalsignal_vs" targetSignal="app/pwmmp001/0/pwmmp001_globalsignal3_vs"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_out00_vs" targetSignal="app/pwmmp001/0/pwmmp001_out00_pin_vs" constraintFunction="&#xD;&#xA;        function resourceCondition() &#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_erwphase1pad0padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_out01_vs" targetSignal="app/pwmmp001/0/pwmmp001_out01_pin_vs" constraintFunction="&#xD;&#xA;        function resourceCondition() &#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_erwphase1pad1padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_out10_vs" targetSignal="app/pwmmp001/0/pwmmp001_out10_pin_vs" constraintFunction="&#xD;&#xA;        function resourceCondition() &#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_erwphase2pad0padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_out11_vs" targetSignal="app/pwmmp001/0/pwmmp001_out11_pin_vs" constraintFunction="&#xD;&#xA;        function resourceCondition() &#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_erwphase2pad1padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_out20_vs" targetSignal="app/pwmmp001/0/pwmmp001_out20_pin_vs" constraintFunction="function resourceCondition()&#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          var Res1 = Solver.getResource(&quot;pwmmp001_erwphase3pad0padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res1);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            if (phase == 3 || phase == 4)&#xD;&#xA;            {&#xD;&#xA;              return true; &#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          return false;&#xD;&#xA;        }"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_out21_vs" targetSignal="app/pwmmp001/0/pwmmp001_out21_pin_vs" constraintFunction="function resourceCondition()&#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          var Res1 = Solver.getResource(&quot;pwmmp001_erwphase3pad1padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res1);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            if (phase == 3 || phase == 4)&#xD;&#xA;            {&#xD;&#xA;              return true; &#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          return false;&#xD;&#xA;        }"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_out30_vs" targetSignal="app/pwmmp001/0/pwmmp001_out30_pin_vs" constraintFunction="function resourceCondition()&#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          var Res1 = Solver.getResource(&quot;pwmmp001_erwphase4pad0padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res1);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            if (phase == 4)&#xD;&#xA;            {&#xD;&#xA;              return true; &#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          return false;&#xD;&#xA;        }"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_out31_vs" targetSignal="app/pwmmp001/0/pwmmp001_out31_pin_vs" constraintFunction="function resourceCondition()&#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmmp001_irphases&quot;);&#xD;&#xA;          var phase = Solver.getIntValue(Res0);&#xD;&#xA;          var Res1 = Solver.getResource(&quot;pwmmp001_erwphase4pad1padenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res1);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            if (phase == 4)&#xD;&#xA;            {&#xD;&#xA;              return true; &#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          return false;&#xD;&#xA;        }"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_phase1concatout_vs" targetSignal="app/pwmmp001/0/pwmmp001_phase2concatin_vs"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_phase2concatout_vs" targetSignal="app/pwmmp001/0/pwmmp001_phase3concatin_vs"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_phase3concatout_vs" targetSignal="app/pwmmp001/0/pwmmp001_phase4concatin_vs"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_gscenable_vs" targetSignal="app/pwmmp001/0/pwmmp001_ph1extstartinput_vs"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_gscenable_vs" targetSignal="app/pwmmp001/0/pwmmp001_ph2extstartinput_vs"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_gscenable_vs" targetSignal="app/pwmmp001/0/pwmmp001_ph3extstartinput_vs"/>
  <connections sourceSignal="app/pwmmp001/0/pwmmp001_gscenable_vs" targetSignal="app/pwmmp001/0/pwmmp001_ph4extstartinput_vs"/>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
  <softwareIdList>45.4.2</softwareIdList>
  <softwareIdList>45.0200.1</softwareIdList>
  <softwareIdList>45.0200.2</softwareIdList>
  <softwareIdList>45.0200.3</softwareIdList>
  <softwareIdList>45.0202.3</softwareIdList>
  <softwareIdList>45.0204.2</softwareIdList>
  <softwareIdList>45.0204.3</softwareIdList>
  <softwareIdList>44.0.3</softwareIdList>
  <softwareIdList>44.00.5</softwareIdList>
  <softwareIdList>44.02.3</softwareIdList>
  <softwareIdList>44.02.5</softwareIdList>
  <softwareIdList>42.00.4</softwareIdList>
  <softwareIdList>42.00.5</softwareIdList>
  <softwareIdList>42.0.6</softwareIdList>
  <softwareIdList>42.04.5</softwareIdList>
  <softwareIdList>42.04.6</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>13.0101.9</softwareIdList>
  <softwareIdList>13.0101.7</softwareIdList>
  <softwareIdList>42.0200.5</softwareIdList>
  <softwareIdList>42.0204.5</softwareIdList>
  <softwareIdList>42.0204.6</softwareIdList>
  <softwareIdList>42.0200.6</softwareIdList>
  <softwareIdList>42.0208.6</softwareIdList>
  <softwareIdList>44.0200.5</softwareIdList>
  <softwareIdList>44.0202.3</softwareIdList>
  <softwareIdList>44.0202.5</softwareIdList>
  <softwareIdList>44.0200.3</softwareIdList>
  <softwareIdList>45.0300.1</softwareIdList>
  <softwareIdList>45.0300.3</softwareIdList>
  <softwareIdList>45.0302.3</softwareIdList>
  <softwareIdList>45.0304.2</softwareIdList>
  <softwareIdList>45.0300.2</softwareIdList>
  <softwareIdList>45.0304.3</softwareIdList>
  <softwareIdList>13.0101.10</softwareIdList>
  <softwareIdList>13.0101.11</softwareIdList>
  <softwareIdList>13.0102.10</softwareIdList>
  <softwareIdList>13.0102.11</softwareIdList>
  <softwareIdList>13.0102.9</softwareIdList>
</ResourceModel:App>
