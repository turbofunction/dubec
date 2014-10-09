<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.1.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="jne">
<description>By Janne Savukoski 2014</description>
<packages>
<package name="QFN-18">
<smd name="21-22" x="-0.65" y="0" dx="1.25" dy="0.3" layer="1"/>
<smd name="13" x="-0.25" y="-1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="14" x="0.25" y="-1.4" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="15" x="0.75" y="-1.4" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="16" x="1.25" y="-1.4" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="11" x="-1.3" y="-1.4" dx="0.35" dy="0.7" layer="1" stop="no"/>
<smd name="7" x="-2" y="0.8" dx="0.7" dy="0.35" layer="1" stop="no"/>
<smd name="10" x="-2" y="-0.8" dx="0.7" dy="0.35" layer="1" stop="no"/>
<smd name="4" x="-0.25" y="1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="3" x="0.25" y="1.4" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="2" x="0.75" y="1.4" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="1" x="1.25" y="1.4" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="6" x="-1.3" y="1.4" dx="0.34" dy="0.7" layer="1" stop="no"/>
<smd name="18" x="2" y="-0.25" dx="0.7" dy="0.25" layer="1" stop="no"/>
<smd name="19" x="2" y="0.25" dx="0.7" dy="0.25" layer="1" stop="no"/>
<smd name="20" x="2" y="0.75" dx="0.7" dy="0.25" layer="1" stop="no"/>
<smd name="17" x="2" y="-0.75" dx="0.7" dy="0.25" layer="1" stop="no"/>
<circle x="2.57" y="2.05" radius="0.1581125" width="0.3" layer="21"/>
<text x="-1.905" y="2.032" size="0.508" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="0.508" layer="27">&gt;VALUE</text>
<wire x1="-1.6" y1="1.5" x2="-2" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="1.5" x2="-2" y2="1.1" width="0.127" layer="21"/>
<wire x1="1.6" y1="-1.5" x2="2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="2" y1="-1.5" x2="2" y2="-1.1" width="0.127" layer="21"/>
<wire x1="-1.6" y1="-1.5" x2="-2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.5" x2="-2" y2="-1.1" width="0.127" layer="21"/>
<wire x1="1.6" y1="1.5" x2="2" y2="1.5" width="0.127" layer="21"/>
<wire x1="2" y1="1.5" x2="2" y2="1.1" width="0.127" layer="21"/>
<rectangle x1="0.125" y1="1.05" x2="0.375" y2="1.75" layer="29"/>
<rectangle x1="0.625" y1="1.05" x2="0.875" y2="1.75" layer="29"/>
<rectangle x1="1.125" y1="1.05" x2="1.375" y2="1.75" layer="29"/>
<rectangle x1="1.125" y1="-1.75" x2="1.375" y2="-1.05" layer="29"/>
<rectangle x1="0.625" y1="-1.75" x2="0.875" y2="-1.05" layer="29"/>
<rectangle x1="1.875" y1="0.4" x2="2.125" y2="1.1" layer="29" rot="R90"/>
<rectangle x1="1.875" y1="-0.1" x2="2.125" y2="0.6" layer="29" rot="R90"/>
<rectangle x1="1.875" y1="-0.6" x2="2.125" y2="0.1" layer="29" rot="R90"/>
<rectangle x1="1.875" y1="-1.1" x2="2.125" y2="-0.4" layer="29" rot="R90"/>
<smd name="8-9" x="-2.09" y="0" dx="0.9" dy="0.75" layer="1"/>
<rectangle x1="-1.56" y1="1.02" x2="-1.11" y2="1.84" layer="29"/>
<rectangle x1="-2.43" y1="0.6" x2="-1.63" y2="1.06" layer="29"/>
<rectangle x1="-2.43" y1="-1.06" x2="-1.63" y2="-0.6" layer="29"/>
<rectangle x1="-1.55" y1="-1.84" x2="-1.1" y2="-1.02" layer="29"/>
<rectangle x1="0.125" y1="-1.75" x2="0.375" y2="-1.05" layer="29"/>
</package>
<package name="GULLWINGS">
<smd name="6" x="1.5" y="3" dx="0.7" dy="2" layer="1"/>
<smd name="5" x="3.7" y="3" dx="0.7" dy="2" layer="1"/>
<smd name="3" x="1.5" y="-3" dx="0.7" dy="2" layer="1"/>
<smd name="4" x="3.7" y="-3" dx="0.7" dy="2" layer="1"/>
<smd name="7" x="-0.7" y="3" dx="0.7" dy="2" layer="1"/>
<smd name="2" x="-0.7" y="-3" dx="0.7" dy="2" layer="1"/>
<smd name="8" x="-3.9" y="3" dx="0.7" dy="2" layer="1"/>
<smd name="1" x="-3.9" y="-3" dx="0.7" dy="2" layer="1"/>
<text x="-4" y="0.6" size="0.762" layer="25">&gt;NAME</text>
<text x="-4" y="-1.1" size="0.762" layer="27">&gt;VALUE</text>
<wire x1="-4.5" y1="2.4" x2="-5.1" y2="2.4" width="0.127" layer="21"/>
<wire x1="-5.1" y1="2.4" x2="-5.1" y2="-2.4" width="0.127" layer="21"/>
<wire x1="-5.1" y1="-2.4" x2="-4.5" y2="-2.4" width="0.127" layer="21"/>
<wire x1="-3.3" y1="-2.4" x2="-1.3" y2="-2.4" width="0.127" layer="21"/>
<wire x1="-0.1" y1="-2.4" x2="0.9" y2="-2.4" width="0.127" layer="21"/>
<wire x1="2.1" y1="-2.4" x2="3.1" y2="-2.4" width="0.127" layer="21"/>
<wire x1="-3.3" y1="2.4" x2="-1.3" y2="2.4" width="0.127" layer="21"/>
<wire x1="-0.1" y1="2.4" x2="0.9" y2="2.4" width="0.127" layer="21"/>
<wire x1="2.1" y1="2.4" x2="3.1" y2="2.4" width="0.127" layer="21"/>
<wire x1="4.3" y1="-2.4" x2="5.1" y2="-2.4" width="0.127" layer="21"/>
<wire x1="5.1" y1="-2.4" x2="5.1" y2="2.4" width="0.127" layer="21"/>
<wire x1="5.1" y1="2.4" x2="4.3" y2="2.4" width="0.127" layer="21"/>
</package>
<package name="DFN-16">
<smd name="12" x="0.25" y="1.95" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="11" x="0.75" y="1.95" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="10" x="1.25" y="1.95" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="9" x="1.75" y="1.95" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="6" x="0.75" y="-2" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="7" x="1.25" y="-2" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="8" x="1.75" y="-2" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="1" x="-1.75" y="-2" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="2" x="-1.25" y="-2" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="3" x="-0.75" y="-2" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="4-5" x="0" y="-2" dx="0.75" dy="0.7" layer="1"/>
<smd name="16" x="-1.75" y="1.95" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="15" x="-1.25" y="1.95" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="14" x="-0.75" y="1.95" dx="0.25" dy="0.7" layer="1" stop="no"/>
<smd name="13" x="-0.25" y="1.95" dx="0.25" dy="0.7" layer="1" stop="no"/>
<text x="-2.032" y="2.667" size="0.762" layer="25">&gt;NAME</text>
<text x="-2.032" y="-3.429" size="0.762" layer="27">&gt;VALUE</text>
<circle x="-2.893" y="-2.393" radius="0.22360625" width="0.1524" layer="21"/>
<wire x1="2.127" y1="2" x2="2.5" y2="2" width="0.1524" layer="21"/>
<wire x1="2.5" y1="2" x2="2.5" y2="-2" width="0.1524" layer="21"/>
<wire x1="2.5" y1="-2" x2="2.127" y2="-2" width="0.1524" layer="21"/>
<wire x1="-2.127" y1="2" x2="-2.5" y2="2" width="0.1524" layer="21"/>
<wire x1="-2.5" y1="2" x2="-2.5" y2="-2" width="0.1524" layer="21"/>
<wire x1="-2.5" y1="-2" x2="-2.127" y2="-2" width="0.1524" layer="21"/>
<circle x="-1.8" y="0.7" radius="0.45" width="0.3" layer="29"/>
<circle x="-1.8" y="-0.7" radius="0.45" width="0.3" layer="29"/>
<circle x="-1.2" y="0" radius="0.45" width="0.3" layer="29"/>
<circle x="-0.6" y="0.7" radius="0.45" width="0.3" layer="29"/>
<circle x="-0.6" y="-0.7" radius="0.45" width="0.3" layer="29"/>
<circle x="0.6" y="-0.7" radius="0.45" width="0.3" layer="29"/>
<circle x="0" y="0" radius="0.45" width="0.3" layer="29"/>
<circle x="0.6" y="0.7" radius="0.45" width="0.3" layer="29"/>
<circle x="1.2" y="0" radius="0.45" width="0.3" layer="29"/>
<circle x="1.8" y="-0.7" radius="0.45" width="0.3" layer="29"/>
<polygon width="0.3" layer="29">
<vertex x="1.1" y="0.9"/>
<vertex x="2.1" y="0.9"/>
<vertex x="2.1" y="-0.3"/>
</polygon>
<polygon width="0.3" layer="31">
<vertex x="1" y="0.9"/>
<vertex x="2.1" y="0.9"/>
<vertex x="2.1" y="-0.4"/>
</polygon>
<smd name="17" x="-0.6" y="0" dx="3.14" dy="2.44" layer="1" stop="no" cream="no"/>
<polygon width="0.2" layer="31">
<vertex x="-1.4" y="1.2"/>
<vertex x="-1" y="1.2"/>
<vertex x="-1" y="0.4"/>
<vertex x="-1.4" y="0.4"/>
</polygon>
<polygon width="0.2" layer="31">
<vertex x="-0.2" y="1.2"/>
<vertex x="0.2" y="1.2"/>
<vertex x="0.2" y="0.4"/>
<vertex x="-0.2" y="0.4"/>
</polygon>
<polygon width="0.2" layer="31">
<vertex x="-0.2" y="-0.4"/>
<vertex x="0.2" y="-0.4"/>
<vertex x="0.2" y="-1.2"/>
<vertex x="-0.2" y="-1.2"/>
</polygon>
<polygon width="0.2" layer="31">
<vertex x="-1.4" y="-0.4"/>
<vertex x="-1" y="-0.4"/>
<vertex x="-1" y="-1.2"/>
<vertex x="-1.4" y="-1.2"/>
</polygon>
<polygon width="0.2" layer="31">
<vertex x="1" y="-0.4"/>
<vertex x="1.4" y="-0.4"/>
<vertex x="1.4" y="-1.2"/>
<vertex x="1" y="-1.2"/>
</polygon>
<polygon width="0.2" layer="31">
<vertex x="-2.1" y="0.2"/>
<vertex x="-1.7" y="0.2"/>
<vertex x="-1.7" y="-0.2"/>
<vertex x="-2.1" y="-0.2"/>
</polygon>
<circle x="-0.6" y="0" radius="0.14141875" width="0.3" layer="31"/>
<circle x="0.6" y="0" radius="0.14141875" width="0.3" layer="31"/>
<smd name="18" x="1.57" y="-0.12" dx="1.2" dy="2.2" layer="1" rot="R180" stop="no" cream="no"/>
<rectangle x1="-1.875" y1="-2.35" x2="-1.625" y2="-1.65" layer="29"/>
<rectangle x1="-1.375" y1="-2.35" x2="-1.125" y2="-1.65" layer="29"/>
<rectangle x1="-0.875" y1="-2.35" x2="-0.625" y2="-1.65" layer="29"/>
<rectangle x1="0.625" y1="-2.35" x2="0.875" y2="-1.65" layer="29"/>
<rectangle x1="1.125" y1="-2.35" x2="1.375" y2="-1.65" layer="29"/>
<rectangle x1="1.625" y1="-2.35" x2="1.875" y2="-1.65" layer="29"/>
<rectangle x1="-1.875" y1="1.6" x2="-1.625" y2="2.3" layer="29"/>
<rectangle x1="-1.375" y1="1.6" x2="-1.125" y2="2.3" layer="29"/>
<rectangle x1="-0.875" y1="1.6" x2="-0.625" y2="2.3" layer="29"/>
<rectangle x1="-0.375" y1="1.6" x2="-0.125" y2="2.3" layer="29"/>
<rectangle x1="0.125" y1="1.6" x2="0.375" y2="2.3" layer="29"/>
<rectangle x1="0.625" y1="1.6" x2="0.875" y2="2.3" layer="29"/>
<rectangle x1="1.125" y1="1.6" x2="1.375" y2="2.3" layer="29"/>
<rectangle x1="1.625" y1="1.6" x2="1.875" y2="2.3" layer="29"/>
</package>
<package name="1206">
<smd name="1" x="-1.6" y="0" dx="1.35" dy="1.9" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.35" dy="1.9" layer="1"/>
<text x="-2.286" y="1.27" size="0.508" layer="25">&gt;NAME</text>
<text x="-2.286" y="-1.778" size="0.508" layer="27">&gt;VALUE</text>
<wire x1="-0.5476" y1="0.8" x2="0.5476" y2="0.8" width="0.1524" layer="21"/>
<wire x1="-0.5476" y1="-0.8" x2="0.5476" y2="-0.8" width="0.1524" layer="21"/>
</package>
<package name="2020Z">
<smd name="1" x="-2.032" y="0" dx="1.9177" dy="2.794" layer="1"/>
<smd name="2" x="2.032" y="0" dx="1.9177" dy="2.794" layer="1"/>
<text x="-2.667" y="2.921" size="0.762" layer="25">&gt;NAME</text>
<text x="-2.667" y="-3.683" size="0.762" layer="27">&gt;VALUE</text>
<wire x1="-2.7432" y1="2.5908" x2="2.7432" y2="2.5908" width="0.1524" layer="21"/>
<wire x1="2.7432" y1="2.5908" x2="2.7432" y2="1.6764" width="0.127" layer="21"/>
<wire x1="-2.7432" y1="2.54" x2="-2.7432" y2="1.6764" width="0.127" layer="21"/>
<wire x1="-2.7432" y1="-1.6764" x2="-2.7432" y2="-2.5908" width="0.127" layer="21"/>
<wire x1="-2.7432" y1="-2.5908" x2="2.7432" y2="-2.5908" width="0.1524" layer="21"/>
<wire x1="2.7432" y1="-2.5908" x2="2.7432" y2="-1.6764" width="0.127" layer="21"/>
</package>
<package name="2525CZ">
<smd name="P$1" x="-2.7686" y="0" dx="1.8288" dy="3.429" layer="1"/>
<smd name="P$2" x="2.7686" y="0" dx="1.8288" dy="3.429" layer="1"/>
<text x="-3.429" y="3.556" size="0.762" layer="25">&gt;NAME</text>
<text x="-3.429" y="-4.318" size="0.762" layer="27">&gt;VALUE</text>
<wire x1="-3.429" y1="3.2385" x2="3.429" y2="3.2385" width="0.127" layer="21"/>
<wire x1="3.429" y1="3.2385" x2="3.429" y2="1.9685" width="0.127" layer="21"/>
<wire x1="-3.429" y1="3.175" x2="-3.429" y2="1.9685" width="0.127" layer="21"/>
<wire x1="-3.429" y1="-3.2385" x2="3.429" y2="-3.2385" width="0.127" layer="21"/>
<wire x1="3.429" y1="-3.2385" x2="3.429" y2="-1.9685" width="0.127" layer="21"/>
<wire x1="-3.429" y1="-3.2385" x2="-3.429" y2="-1.9685" width="0.127" layer="21"/>
</package>
<package name="0805">
<smd name="1" x="-1" y="0" dx="1.35" dy="1.55" layer="1"/>
<smd name="2" x="1" y="0" dx="1.35" dy="1.55" layer="1"/>
<text x="-1.651" y="1.016" size="0.508" layer="25">&gt;NAME</text>
<text x="-1.651" y="-1.524" size="0.508" layer="27">&gt;VALUE</text>
<wire x1="-0.0226" y1="0.625" x2="0.0226" y2="0.625" width="0.1524" layer="21"/>
<wire x1="-0.0226" y1="-0.625" x2="0.0226" y2="-0.625" width="0.1524" layer="21"/>
<wire x1="-1" y1="0.625" x2="-1" y2="-0.625" width="0.127" layer="49"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.127" layer="49"/>
</package>
<package name="0402">
<smd name="1" x="-0.55" y="0" dx="0.62" dy="0.72" layer="1"/>
<smd name="2" x="0.55" y="0" dx="0.62" dy="0.72" layer="1"/>
<text x="-0.889" y="0.535" size="0.254" layer="25">&gt;NAME</text>
<text x="-0.889" y="-0.789" size="0.254" layer="27">&gt;VALUE</text>
<wire x1="0.0524" y1="0.25" x2="-0.0524" y2="0.25" width="0.1524" layer="21"/>
<wire x1="0.0524" y1="-0.25" x2="-0.0524" y2="-0.25" width="0.1524" layer="21"/>
</package>
<package name="1812">
<smd name="1" x="-2.625" y="0" dx="1.75" dy="3.7" layer="1"/>
<smd name="2" x="2.625" y="0" dx="1.75" dy="3.7" layer="1"/>
<text x="-3.81" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-1.4" y1="1.6" x2="1.4" y2="1.6" width="0.1524" layer="21"/>
<wire x1="-1.4" y1="-1.6" x2="1.4" y2="-1.6" width="0.1524" layer="21"/>
</package>
<package name="1210">
<smd name="1" x="-1.6" y="0" dx="1.35" dy="2.8" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.35" dy="2.8" layer="1"/>
<text x="-2.4" y="1.8" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.4" y="-3" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-0.6" y1="0.8" x2="0.6" y2="0.8" width="0.1524" layer="21"/>
<wire x1="-0.6" y1="-0.8" x2="0.6" y2="-0.8" width="0.1524" layer="21"/>
</package>
<package name="0603">
<wire x1="-0.106" y1="0.432" x2="0.106" y2="0.432" width="0.1016" layer="21"/>
<wire x1="-0.106" y1="-0.419" x2="0.106" y2="-0.419" width="0.1016" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-1.4" y="0.7" size="0.254" layer="25">&gt;NAME</text>
<text x="-1.4" y="-0.95" size="0.254" layer="27">&gt;VALUE</text>
</package>
<package name="0420CDMCB/DS">
<wire x1="-2.25" y1="2.05" x2="2.25" y2="2.05" width="0.127" layer="21"/>
<wire x1="2.25" y1="2.05" x2="2.25" y2="1.6" width="0.127" layer="21"/>
<smd name="2" x="1.85" y="0" dx="1.5" dy="2.7" layer="1"/>
<smd name="1" x="-1.85" y="0" dx="1.5" dy="2.7" layer="1"/>
<wire x1="-2.25" y1="2.05" x2="-2.25" y2="1.6" width="0.127" layer="21"/>
<wire x1="-2.25" y1="-2.05" x2="2.25" y2="-2.05" width="0.127" layer="21"/>
<wire x1="2.25" y1="-2.05" x2="2.25" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-2.25" y1="-2.05" x2="-2.25" y2="-1.6" width="0.127" layer="21"/>
<text x="-2.3" y="2.35" size="0.508" layer="25">&gt;NAME</text>
<text x="-2.3" y="-2.85" size="0.508" layer="27">&gt;VALUE</text>
</package>
<package name="0805NUDE">
<description>NOTE: EXTEND stop to some direction. Pads represent only the chip.</description>
<smd name="1" x="-0.7" y="0" dx="0.75" dy="1.55" layer="1"/>
<smd name="2" x="0.7" y="0" dx="0.75" dy="1.55" layer="1"/>
<text x="-1.651" y="1.016" size="0.508" layer="25">&gt;NAME</text>
<text x="-1.651" y="-1.524" size="0.508" layer="27">&gt;VALUE</text>
<wire x1="-0.0226" y1="0.625" x2="0.0226" y2="0.625" width="0.1524" layer="21"/>
<wire x1="-0.0226" y1="-0.625" x2="0.0226" y2="-0.625" width="0.1524" layer="21"/>
<wire x1="-1" y1="0.625" x2="-1" y2="-0.625" width="0.127" layer="49"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.127" layer="49"/>
</package>
</packages>
<symbols>
<symbol name="LT8614">
<pin name="BST" x="-5.08" y="25.4" visible="pin" length="middle" direction="pwr" rot="R270"/>
<pin name="INTVCC" x="5.08" y="25.4" visible="pin" length="middle" direction="pwr" rot="R270"/>
<pin name="BIAS" x="12.7" y="25.4" visible="pin" length="middle" direction="pwr" rot="R270"/>
<pin name="VIN1" x="-12.7" y="25.4" visible="pin" length="middle" direction="pwr" rot="R270"/>
<pin name="GND1" x="-25.4" y="7.62" visible="pin" length="middle" direction="pwr"/>
<pin name="SW" x="-25.4" y="0" visible="pin" length="middle" direction="pwr"/>
<pin name="GND2" x="-25.4" y="-7.62" visible="pin" length="middle" direction="pwr"/>
<pin name="VIN2" x="-12.7" y="-25.4" visible="pin" length="middle" direction="pwr" rot="R90"/>
<pin name="EN/UV" x="-5.08" y="-25.4" visible="pin" length="middle" direction="in" rot="R90"/>
<pin name="RT" x="5.08" y="-25.4" visible="pin" length="middle" direction="in" rot="R90"/>
<pin name="TR/SS" x="12.7" y="-25.4" visible="pin" length="middle" direction="in" rot="R90"/>
<pin name="SYNC/MODE" x="25.4" y="-12.7" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="GND" x="25.4" y="-5.08" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="PG" x="25.4" y="5.08" visible="pin" length="middle" direction="oc" rot="R180"/>
<pin name="FB" x="25.4" y="12.7" visible="pin" length="middle" rot="R180"/>
<wire x1="-20.32" y1="20.32" x2="20.32" y2="20.32" width="0.254" layer="94"/>
<wire x1="20.32" y1="20.32" x2="20.32" y2="-20.32" width="0.254" layer="94"/>
<wire x1="20.32" y1="-20.32" x2="-20.32" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-20.32" x2="-20.32" y2="20.32" width="0.254" layer="94"/>
<text x="-10.795" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.795" y="-0.635" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="IMRELAY">
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<pin name="VCC" x="12.7" y="-7.62" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="NO_1" x="12.7" y="7.62" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="CO_1" x="12.7" y="5.08" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="NC_1" x="12.7" y="2.54" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="GND" x="-12.7" y="-7.62" visible="pin" length="middle" direction="pwr"/>
<pin name="NC_2" x="-12.7" y="2.54" visible="pin" length="middle" direction="pas"/>
<pin name="CO_2" x="-12.7" y="5.08" visible="pin" length="middle" direction="pas"/>
<pin name="NO_2" x="-12.7" y="7.62" visible="pin" length="middle" direction="pas"/>
<text x="-7.62" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-13.335" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="LTC3115-1">
<pin name="GND" x="-15.24" y="0" visible="pin" length="middle" direction="pwr"/>
<pin name="PVOUT" x="-15.24" y="7.62" visible="pin" length="middle" direction="pwr"/>
<pin name="SW2" x="-15.24" y="12.7" visible="pin" length="middle" direction="pwr"/>
<pin name="RUN" x="-15.24" y="17.78" visible="pin" length="middle" direction="in"/>
<pin name="VC" x="-15.24" y="-7.62" visible="pin" length="middle" direction="pwr"/>
<pin name="FB" x="-15.24" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="RT" x="-15.24" y="-17.78" visible="pin" length="middle" direction="in"/>
<pin name="PWM" x="15.24" y="17.78" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="SW1" x="15.24" y="12.7" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="PVIN" x="15.24" y="7.62" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="BST1" x="15.24" y="2.54" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="BST2" x="15.24" y="-2.54" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="PVCC" x="15.24" y="-7.62" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="VIN" x="15.24" y="-12.7" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="VCC" x="15.24" y="-17.78" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="PGND" x="0" y="-27.94" length="middle" direction="pwr" rot="R90"/>
<wire x1="-10.16" y1="22.86" x2="10.16" y2="22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="22.86" x2="10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="-10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="-10.16" y2="22.86" width="0.254" layer="94"/>
<text x="-10.16" y="25.4" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-35.56" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="CAP">
<pin name="GND" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="V+" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<text x="0.762" y="1.778" size="1.27" layer="95">&gt;NAME</text>
<text x="0.508" y="-3.048" size="1.27" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.508" x2="2.032" y2="0" layer="94"/>
<rectangle x1="-2.032" y1="-2.54" x2="2.032" y2="-2.032" layer="94"/>
</symbol>
<symbol name="IND">
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="-2.54" y1="0" x2="0" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94" curve="-180"/>
<pin name="1" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<pin name="2" x="7.62" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-5.08" y="2.54" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="BEAD">
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<rectangle x1="-2.54" y1="-0.762" x2="0" y2="0.762" layer="94"/>
<pin name="2" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-3.81" y="1.27" size="1.27" layer="95">&gt;NAME</text>
<text x="-3.81" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="RES">
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<wire x1="-1.905" y1="-1.27" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-0.635" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<pin name="GND" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-3.81" y="1.905" size="1.27" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="96">&gt;VALUE</text>
<wire x1="0" y1="1.27" x2="0.635" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0.635" y1="-1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.905" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="-1.27" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LT8614XUDC">
<gates>
<gate name="G$1" symbol="LT8614" x="0" y="0"/>
</gates>
<devices>
<device name="LT8614XUDC" package="QFN-18">
<connects>
<connect gate="G$1" pin="BIAS" pad="1"/>
<connect gate="G$1" pin="BST" pad="3"/>
<connect gate="G$1" pin="EN/UV" pad="14"/>
<connect gate="G$1" pin="FB" pad="20"/>
<connect gate="G$1" pin="GND" pad="18"/>
<connect gate="G$1" pin="GND1" pad="6 7"/>
<connect gate="G$1" pin="GND2" pad="10 11"/>
<connect gate="G$1" pin="INTVCC" pad="2"/>
<connect gate="G$1" pin="PG" pad="19"/>
<connect gate="G$1" pin="RT" pad="15"/>
<connect gate="G$1" pin="SW" pad="8-9 21-22"/>
<connect gate="G$1" pin="SYNC/MODE" pad="17"/>
<connect gate="G$1" pin="TR/SS" pad="16"/>
<connect gate="G$1" pin="VIN1" pad="4"/>
<connect gate="G$1" pin="VIN2" pad="13"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="IM03DGR">
<description>2A DPDT Relay</description>
<gates>
<gate name="G$1" symbol="IMRELAY" x="0" y="0"/>
</gates>
<devices>
<device name="GW" package="GULLWINGS">
<connects>
<connect gate="G$1" pin="CO_1" pad="3"/>
<connect gate="G$1" pin="CO_2" pad="6"/>
<connect gate="G$1" pin="GND" pad="8"/>
<connect gate="G$1" pin="NC_1" pad="2"/>
<connect gate="G$1" pin="NC_2" pad="7"/>
<connect gate="G$1" pin="NO_1" pad="4"/>
<connect gate="G$1" pin="NO_2" pad="5"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LTC3115XDHD-1">
<description>40V, 2A Synchronous Buck-Boost DC/DC Converter</description>
<gates>
<gate name="G$1" symbol="LTC3115-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DFN-16">
<connects>
<connect gate="G$1" pin="BST1" pad="13"/>
<connect gate="G$1" pin="BST2" pad="12"/>
<connect gate="G$1" pin="FB" pad="7"/>
<connect gate="G$1" pin="GND" pad="4-5"/>
<connect gate="G$1" pin="PGND" pad="17 18"/>
<connect gate="G$1" pin="PVCC" pad="11"/>
<connect gate="G$1" pin="PVIN" pad="14"/>
<connect gate="G$1" pin="PVOUT" pad="3"/>
<connect gate="G$1" pin="PWM" pad="16"/>
<connect gate="G$1" pin="RT" pad="8"/>
<connect gate="G$1" pin="RUN" pad="1"/>
<connect gate="G$1" pin="SW1" pad="15"/>
<connect gate="G$1" pin="SW2" pad="2"/>
<connect gate="G$1" pin="VC" pad="6"/>
<connect gate="G$1" pin="VCC" pad="9"/>
<connect gate="G$1" pin="VIN" pad="10"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="C1206" package="1206">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1210" package="1210">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805" package="0805">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0402" package="0402">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603" package="0603">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805NUDE" package="0805NUDE">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="IND" prefix="L">
<gates>
<gate name="G$1" symbol="IND" x="0" y="0"/>
</gates>
<devices>
<device name="I2525Z" package="2525CZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="I2020Z" package="2020Z">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="I0420CDMCB/DS" package="0420CDMCB/DS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BEAD">
<gates>
<gate name="G$1" symbol="BEAD" x="0" y="0"/>
</gates>
<devices>
<device name="B1812" package="1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES" prefix="R">
<gates>
<gate name="G$1" symbol="RES" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="GND" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="V+">
<wire x1="0.889" y1="-1.27" x2="0" y2="0.127" width="0.254" layer="94"/>
<wire x1="0" y1="0.127" x2="-0.889" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-0.889" y1="-1.27" x2="0.889" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="V+" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="V+" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="V+" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="1206">
<description>&lt;b&gt;CHICAGO MINIATURE LAMP, INC.&lt;/b&gt;&lt;p&gt;
7022X Series SMT LEDs 1206 Package Size</description>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.5" x2="0.55" y2="-0.5" width="0.1016" layer="21" curve="95.452622"/>
<wire x1="-0.55" y1="-0.5" x2="-0.55" y2="0.5" width="0.1016" layer="51" curve="-84.547378"/>
<wire x1="-0.55" y1="0.5" x2="0.55" y2="0.5" width="0.1016" layer="21" curve="-95.452622"/>
<wire x1="0.55" y1="0.5" x2="0.55" y2="-0.5" width="0.1016" layer="51" curve="-84.547378"/>
<smd name="A" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="C" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
<rectangle x1="0.45" y1="-0.7" x2="0.8" y2="-0.45" layer="51"/>
<rectangle x1="0.8" y1="-0.7" x2="0.9" y2="0.5" layer="51"/>
<rectangle x1="0.8" y1="0.55" x2="0.9" y2="0.7" layer="51"/>
<rectangle x1="-0.9" y1="-0.7" x2="-0.8" y2="0.5" layer="51"/>
<rectangle x1="-0.9" y1="0.55" x2="-0.8" y2="0.7" layer="51"/>
<rectangle x1="0.45" y1="-0.7" x2="0.6" y2="-0.45" layer="21"/>
</package>
<package name="LD260">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, square, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0" y1="1.27" x2="0.9917" y2="0.7934" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="-0.9917" y1="0.7934" x2="0" y2="1.27" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="0" y1="-1.27" x2="0.9917" y2="-0.7934" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="-0.9917" y1="-0.7934" x2="0" y2="-1.27" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="0.9558" y1="-0.8363" x2="1.27" y2="0" width="0.1524" layer="51" curve="41.185419"/>
<wire x1="0.9756" y1="0.813" x2="1.2699" y2="0" width="0.1524" layer="51" curve="-39.806332"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="-0.8265" width="0.1524" layer="51" curve="40.600331"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="0.8265" width="0.1524" layer="51" curve="-40.600331"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.635" x2="2.032" y2="0.635" layer="51"/>
<rectangle x1="1.905" y1="-0.635" x2="2.032" y2="0.635" layer="21"/>
</package>
<package name="LED2X5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
2 x 5 mm, rectangle</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-0.254" x2="1.143" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="0.9398" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-0.6096" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.651" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.4478" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="-0.6096" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.413" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-1.27" x2="2.413" y2="1.27" layer="21"/>
</package>
<package name="LED3MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
3 mm, round</description>
<wire x1="1.5748" y1="-1.27" x2="1.5748" y2="1.27" width="0.254" layer="51"/>
<wire x1="-1.524" y1="0" x2="-1.1708" y2="0.9756" width="0.1524" layer="51" curve="-39.80361"/>
<wire x1="-1.524" y1="0" x2="-1.1391" y2="-1.0125" width="0.1524" layer="51" curve="41.633208"/>
<wire x1="1.1571" y1="0.9918" x2="1.524" y2="0" width="0.1524" layer="51" curve="-40.601165"/>
<wire x1="1.1708" y1="-0.9756" x2="1.524" y2="0" width="0.1524" layer="51" curve="39.80361"/>
<wire x1="0" y1="1.524" x2="1.2401" y2="0.8858" width="0.1524" layer="21" curve="-54.461337"/>
<wire x1="-1.2192" y1="0.9144" x2="0" y2="1.524" width="0.1524" layer="21" curve="-53.130102"/>
<wire x1="0" y1="-1.524" x2="1.203" y2="-0.9356" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-1.203" y1="-0.9356" x2="0" y2="-1.524" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="-1.016" x2="1.016" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="2.032" x2="1.561" y2="1.3009" width="0.254" layer="21" curve="-50.193108"/>
<wire x1="-1.7929" y1="0.9562" x2="0" y2="2.032" width="0.254" layer="21" curve="-61.926949"/>
<wire x1="0" y1="-2.032" x2="1.5512" y2="-1.3126" width="0.254" layer="21" curve="49.763022"/>
<wire x1="-1.7643" y1="-1.0082" x2="0" y2="-2.032" width="0.254" layer="21" curve="60.255215"/>
<wire x1="-2.032" y1="0" x2="-1.7891" y2="0.9634" width="0.254" layer="51" curve="-28.301701"/>
<wire x1="-2.032" y1="0" x2="-1.7306" y2="-1.065" width="0.254" layer="51" curve="31.60822"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="1.905" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.905" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LED5MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, round</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21" curve="-286.260205"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="3.175" y="0.5334" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.2004" y="-1.8034" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LSU260">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
1 mm, round, Siemens</description>
<wire x1="0" y1="-0.508" x2="-1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.508" x2="-1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.508" x2="0" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-0.254" x2="-1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.254" x2="-1.143" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.254" x2="1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="0.254" x2="0.508" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-0.381" x2="0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-0.381" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.381" x2="0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.508" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0.381" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.254" x2="0.254" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.254" y1="0" x2="0" y2="0.254" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-0.381" x2="0.381" y2="0.381" width="0.1524" layer="21" curve="90"/>
<circle x="0" y="0" radius="0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="0.8382" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-1.8542" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.397" y1="-0.254" x2="-1.143" y2="0.254" layer="51"/>
<rectangle x1="0.508" y1="-0.254" x2="1.397" y2="0.254" layer="51"/>
</package>
<package name="LZR181">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
1 LED, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="0.7439" x2="0" y2="1.143" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="1.143" x2="0.8678" y2="0.7439" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-0.7439" x2="0" y2="-1.143" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-1.143" x2="0.8678" y2="-0.7439" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="0.8678" y1="-0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="0.7439" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="-0.7439" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.889" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.27" y2="0.254" layer="51"/>
</package>
<package name="Q62902-B152">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-2.9718" y1="-1.8542" x2="-2.9718" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-0.254" x2="-2.9718" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="-1.8542" x2="-2.54" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.1082" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="1.8542" x2="2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.54" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-1.1486" y1="0.8814" x2="0" y2="1.4478" width="0.1524" layer="21" curve="-52.498642"/>
<wire x1="0" y1="1.4478" x2="1.1476" y2="0.8827" width="0.1524" layer="21" curve="-52.433716"/>
<wire x1="-1.1351" y1="-0.8987" x2="0" y2="-1.4478" width="0.1524" layer="21" curve="51.629985"/>
<wire x1="0" y1="-1.4478" x2="1.1305" y2="-0.9044" width="0.1524" layer="21" curve="51.339172"/>
<wire x1="1.1281" y1="-0.9074" x2="1.4478" y2="0" width="0.1524" layer="51" curve="38.811177"/>
<wire x1="1.1401" y1="0.8923" x2="1.4478" y2="0" width="0.1524" layer="51" curve="-38.048073"/>
<wire x1="-1.4478" y1="0" x2="-1.1305" y2="-0.9044" width="0.1524" layer="51" curve="38.659064"/>
<wire x1="-1.4478" y1="0" x2="-1.1456" y2="0.8853" width="0.1524" layer="51" curve="-37.696376"/>
<wire x1="0" y1="1.7018" x2="1.4674" y2="0.8618" width="0.1524" layer="21" curve="-59.573488"/>
<wire x1="-1.4618" y1="0.8714" x2="0" y2="1.7018" width="0.1524" layer="21" curve="-59.200638"/>
<wire x1="0" y1="-1.7018" x2="1.4571" y2="-0.8793" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.4571" y1="-0.8793" x2="0" y2="-1.7018" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.7018" y1="0" x2="-1.4447" y2="0.8995" width="0.1524" layer="51" curve="-31.907626"/>
<wire x1="-1.7018" y1="0" x2="-1.4502" y2="-0.8905" width="0.1524" layer="51" curve="31.551992"/>
<wire x1="1.4521" y1="0.8874" x2="1.7018" y2="0" width="0.1524" layer="51" curve="-31.429586"/>
<wire x1="1.4459" y1="-0.8975" x2="1.7018" y2="0" width="0.1524" layer="51" curve="31.828757"/>
<wire x1="-2.1082" y1="1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<wire x1="2.9718" y1="1.8542" x2="2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="-3.556" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B153">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-5.5118" y1="-3.5052" x2="-5.5118" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-0.254" x2="-5.5118" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="-3.5052" x2="-5.08" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-4.6482" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="3.5052" x2="5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.08" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.6482" y1="3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="3.5052" x2="5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.2129" y1="0.0539" x2="-0.0539" y2="2.2129" width="0.1524" layer="51" curve="-90.010616"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-4.191" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B155">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-1.27" y1="-3.048" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="2.921" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-5.207" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.54" x2="-5.207" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="-6.985" y1="0.635" x2="-6.985" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.397" x2="-6.096" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="1.905" x2="-5.207" y2="-1.905" width="0.1524" layer="21"/>
<pad name="K" x="7.62" y="1.27" drill="0.8128" shape="long"/>
<pad name="A" x="7.62" y="-1.27" drill="0.8128" shape="long"/>
<text x="3.302" y="-2.794" size="1.016" layer="21" ratio="14">A+</text>
<text x="3.302" y="1.778" size="1.016" layer="21" ratio="14">K-</text>
<text x="11.684" y="-2.794" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="0.635" y="-4.445" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.921" y1="1.016" x2="6.731" y2="1.524" layer="21"/>
<rectangle x1="2.921" y1="-1.524" x2="6.731" y2="-1.016" layer="21"/>
<hole x="0" y="0" drill="0.8128"/>
</package>
<package name="Q62902-B156">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0.0539" y1="-2.2129" x2="2.2129" y2="-0.0539" width="0.1524" layer="51" curve="90.005308"/>
<wire x1="2.54" y1="3.81" x2="3.81" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.302" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.81" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="-2.54" y2="-3.302" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="4.0894" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.7846" y="-5.3594" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.556" y="-3.302" size="1.016" layer="21" ratio="14">+</text>
<text x="2.794" y="-3.302" size="1.016" layer="21" ratio="14">-</text>
</package>
<package name="SFH480">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SFH482">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="U57X32">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
rectangle, 5.7 x 3.2 mm</description>
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="2.54" y2="1.016" width="0.1524" layer="51"/>
<wire x1="2.286" y1="1.27" x2="2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="2.54" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="2.54" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-1.016" x2="2.54" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="1.27" x2="-1.778" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.27" x2="0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.762" y1="1.27" x2="0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.27" x2="1.778" y2="-1.27" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="3.683" y="0.254" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.683" y="-1.524" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="IRL80A">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
IR transmitter Siemens</description>
<wire x1="0.889" y1="2.286" x2="0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.778" x2="0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="0.889" y1="0.762" x2="0.889" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-0.635" x2="0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-1.778" x2="0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.286" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="-0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.778" x2="-0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0.762" x2="-0.889" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-1.778" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="0.889" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="0.762" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.397" y1="0.254" x2="-1.397" y2="-0.254" width="0.0508" layer="21"/>
<wire x1="-1.143" y1="0.508" x2="-1.143" y2="-0.508" width="0.0508" layer="21"/>
<pad name="K" x="0" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="A" x="0" y="-1.27" drill="0.8128" shape="octagon"/>
<text x="1.27" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.27" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="P-LCC-2">
<description>&lt;b&gt;TOPLED® High-optical Power LED (HOP)&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... ls_t675.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.8" x2="1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-1.8" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="C" x="0" y="-2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="2.54" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-2.25" x2="1.3" y2="-0.75" layer="31"/>
<rectangle x1="-1.3" y1="0.75" x2="1.3" y2="2.25" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.4" y1="0.65" x2="1.4" y2="2.35" layer="29"/>
<rectangle x1="-1.4" y1="-2.35" x2="1.4" y2="-0.65" layer="29"/>
</package>
<package name="OSRAM-MINI-TOP-LED">
<description>&lt;b&gt;BLUE LINETM Hyper Mini TOPLED® Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LB M676.pdf</description>
<wire x1="-0.6" y1="0.9" x2="-0.6" y2="-0.7" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="-0.9" x2="0.6" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="-0.9" x2="0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="0.9" x2="-0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.95" x2="-0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="1.1" x2="0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="1.1" x2="0.45" y2="0.95" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="-0.7" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-1.1" x2="0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="-1.1" x2="0.45" y2="-0.95" width="0.1016" layer="51"/>
<smd name="A" x="0" y="2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="1.905" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.175" size="1.27" layer="21">C</text>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.5" y1="0.6" x2="0.5" y2="1.4" layer="29"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-0.6" layer="29"/>
<rectangle x1="-0.15" y1="-0.6" x2="0.15" y2="-0.3" layer="51"/>
<rectangle x1="-0.45" y1="0.65" x2="0.45" y2="1.35" layer="31"/>
<rectangle x1="-0.45" y1="-1.35" x2="0.45" y2="-0.65" layer="31"/>
</package>
<package name="OSRAM-SIDELED">
<description>&lt;b&gt;Super SIDELED® High-Current LED&lt;/b&gt;&lt;p&gt;
LG A672, LP A672 &lt;br&gt;
Source: http://www.osram.convergy.de/ ... LG_LP_A672.pdf (2004.05.13)</description>
<wire x1="-1.85" y1="-2.05" x2="-1.85" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="-0.75" x2="-1.7" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="-0.75" x2="-1.7" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="0.75" x2="-1.85" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="0.75" x2="-1.85" y2="2.05" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="2.05" x2="0.9" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="-1.85" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="-2.05" x2="1.85" y2="-1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="-1.85" x2="1.85" y2="1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="1.85" x2="1.05" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.9" x2="-0.55" y2="0.9" width="0.1016" layer="51" curve="-167.319617"/>
<wire x1="-0.55" y1="-0.9" x2="0.85" y2="-1.2" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.55" y1="0.9" x2="0.85" y2="1.2" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="-2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="0.635" y="-3.175" size="1.27" layer="21" rot="R90">C</text>
<text x="0.635" y="2.54" size="1.27" layer="21" rot="R90">A</text>
<text x="-2.54" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1" y1="-2.2" x2="2.1" y2="-0.4" layer="29"/>
<rectangle x1="-2.1" y1="0.4" x2="2.1" y2="2.2" layer="29"/>
<rectangle x1="-1.9" y1="-2.1" x2="1.9" y2="-0.6" layer="31"/>
<rectangle x1="-1.9" y1="0.6" x2="1.9" y2="2.1" layer="31"/>
<rectangle x1="-1.85" y1="-2.05" x2="-0.7" y2="-1" layer="51"/>
</package>
<package name="SMART-LED">
<description>&lt;b&gt;SmartLEDTM Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY L896.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="A" x="0" y="0.725" dx="0.35" dy="0.35" layer="1"/>
<smd name="B" x="0" y="-0.725" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-0.635" size="1.016" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.016" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
</package>
<package name="P-LCC-2-TOPLED-RG">
<description>&lt;b&gt;Hyper TOPLED® RG Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY T776.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="2.45" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-2.45" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="21"/>
<smd name="C" x="0" y="-3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="3.29" size="1.27" layer="21">A</text>
<text x="-0.635" y="-4.56" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-3" x2="1.3" y2="-1.5" layer="31"/>
<rectangle x1="-1.3" y1="1.5" x2="1.3" y2="3" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.15" y1="2.4" x2="1.15" y2="2.7" layer="51"/>
<rectangle x1="-1.15" y1="-2.7" x2="1.15" y2="-2.4" layer="51"/>
<rectangle x1="-1.5" y1="1.5" x2="1.5" y2="3.2" layer="29"/>
<rectangle x1="-1.5" y1="-3.2" x2="1.5" y2="-1.5" layer="29"/>
<hole x="0" y="0" drill="2.8"/>
</package>
<package name="MICRO-SIDELED">
<description>&lt;b&gt;Hyper Micro SIDELED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY Y876.pdf</description>
<wire x1="0.65" y1="1.1" x2="-0.1" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="1.1" x2="-0.35" y2="1" width="0.1016" layer="51"/>
<wire x1="-0.35" y1="1" x2="-0.35" y2="-0.9" width="0.1016" layer="21"/>
<wire x1="-0.35" y1="-0.9" x2="-0.1" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="-1.1" x2="0.65" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.65" y1="-1.1" x2="0.65" y2="1.1" width="0.1016" layer="21"/>
<wire x1="0.6" y1="0.9" x2="0.25" y2="0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="0.7" x2="0.25" y2="-0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="-0.7" x2="0.6" y2="-0.9" width="0.0508" layer="21"/>
<smd name="A" x="0" y="1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.4" y1="1.1" x2="0.4" y2="1.8" layer="29"/>
<rectangle x1="-0.4" y1="-1.8" x2="0.4" y2="-1.1" layer="29"/>
<rectangle x1="-0.35" y1="-1.75" x2="0.35" y2="-1.15" layer="31"/>
<rectangle x1="-0.35" y1="1.15" x2="0.35" y2="1.75" layer="31"/>
<rectangle x1="-0.125" y1="1.125" x2="0.125" y2="1.75" layer="51"/>
<rectangle x1="-0.125" y1="-1.75" x2="0.125" y2="-1.125" layer="51"/>
</package>
<package name="P-LCC-4">
<description>&lt;b&gt;Power TOPLED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LA_LY E67B.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="1.8" x2="-0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="1.8" x2="-0.5" y2="1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.65" x2="0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.8" x2="-0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="-1.8" x2="-0.5" y2="-1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.65" x2="0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.8" x2="1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1" y1="-1.8" x2="1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="A" x="-2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@3" x="2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@4" x="2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="-2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-1.905" y="-3.81" size="1.27" layer="21">C</text>
<text x="-1.905" y="2.54" size="1.27" layer="21">A</text>
<text x="1.27" y="2.54" size="1.27" layer="21">C</text>
<text x="1.27" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.15" y1="0.75" x2="-0.35" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="0.75" x2="1.15" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="-1.85" x2="1.15" y2="-0.75" layer="29"/>
<rectangle x1="-1.15" y1="-1.85" x2="-0.35" y2="-0.75" layer="29"/>
<rectangle x1="-1.1" y1="-1.8" x2="-0.4" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="-1.8" x2="1.1" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="0.8" x2="1.1" y2="1.8" layer="31"/>
<rectangle x1="-1.1" y1="0.8" x2="-0.4" y2="1.8" layer="31"/>
<rectangle x1="-0.2" y1="-0.2" x2="0.2" y2="0.2" layer="21"/>
</package>
<package name="CHIP-LED0603">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB Q993&lt;br&gt;
Source: http://www.osram.convergy.de/ ... Lb_q993.pdf</description>
<wire x1="-0.4" y1="0.45" x2="-0.4" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.45" x2="0.4" y2="-0.45" width="0.1016" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-0.635" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.45" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="0.45" y2="-0.45" layer="51"/>
<rectangle x1="-0.45" y1="0" x2="-0.3" y2="0.3" layer="21"/>
<rectangle x1="0.3" y1="0" x2="0.45" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
</package>
<package name="CHIP-LED0805">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB R99A&lt;br&gt;
Source: http://www.osram.convergy.de/ ... lb_r99a.pdf</description>
<wire x1="-0.625" y1="0.45" x2="-0.625" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.625" y1="0.45" x2="0.625" y2="-0.475" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.675" y1="0" x2="-0.525" y2="0.3" layer="21"/>
<rectangle x1="0.525" y1="0" x2="0.675" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
<rectangle x1="-0.675" y1="0.45" x2="0.675" y2="1.05" layer="51"/>
<rectangle x1="-0.675" y1="-1.05" x2="0.675" y2="-0.45" layer="51"/>
</package>
<package name="MINI-TOPLED-SANTANA">
<description>&lt;b&gt;Mini TOPLED Santana®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG M470.pdf</description>
<wire x1="0.7" y1="-1" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.35" y1="-1" x2="-0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="-1" x2="-0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="1" x2="0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="0.7" y1="1" x2="0.7" y2="-0.65" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.45" y1="-0.7" x2="-0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="-0.7" x2="-0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="0.7" x2="0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="0.45" y1="0.7" x2="0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<smd name="C" x="0" y="-2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.55" y1="1.5" x2="0.55" y2="2.1" layer="29"/>
<rectangle x1="-0.55" y1="-2.1" x2="0.55" y2="-1.5" layer="29"/>
<rectangle x1="-0.5" y1="-2.05" x2="0.5" y2="-1.55" layer="31"/>
<rectangle x1="-0.5" y1="1.55" x2="0.5" y2="2.05" layer="31"/>
<rectangle x1="-0.2" y1="-0.4" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.5" y1="-2.1" x2="0.5" y2="-1.4" layer="51"/>
<rectangle x1="-0.5" y1="1.4" x2="0.5" y2="2.05" layer="51"/>
<rectangle x1="-0.5" y1="1" x2="0.5" y2="1.4" layer="21"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-1.05" layer="21"/>
<hole x="0" y="0" drill="2.7"/>
</package>
<package name="CHIPLED_0805">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_R971.pdf</description>
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.1" y1="0" x2="0.1" y2="0.2" layer="21"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.8" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
</package>
<package name="CHIPLED_1206">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY N971.pdf</description>
<wire x1="-0.4" y1="1.6" x2="0.4" y2="1.6" width="0.1016" layer="51" curve="172.619069"/>
<wire x1="-0.8" y1="-0.95" x2="-0.8" y2="0.95" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.95" x2="0.8" y2="-0.95" width="0.1016" layer="51"/>
<circle x="-0.55" y="1.425" radius="0.1" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.75" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="0" y="-1.75" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.85" y1="1.525" x2="-0.35" y2="1.65" layer="51"/>
<rectangle x1="-0.85" y1="1.225" x2="-0.625" y2="1.55" layer="51"/>
<rectangle x1="-0.45" y1="1.225" x2="-0.325" y2="1.45" layer="51"/>
<rectangle x1="-0.65" y1="1.225" x2="-0.225" y2="1.35" layer="51"/>
<rectangle x1="0.35" y1="1.3" x2="0.85" y2="1.65" layer="51"/>
<rectangle x1="0.25" y1="1.225" x2="0.85" y2="1.35" layer="51"/>
<rectangle x1="-0.85" y1="0.95" x2="0.85" y2="1.25" layer="51"/>
<rectangle x1="-0.85" y1="-1.65" x2="0.85" y2="-0.95" layer="51"/>
<rectangle x1="-0.85" y1="0.35" x2="-0.525" y2="0.775" layer="21"/>
<rectangle x1="0.525" y1="0.35" x2="0.85" y2="0.775" layer="21"/>
<rectangle x1="-0.175" y1="0" x2="0.175" y2="0.35" layer="21"/>
</package>
<package name="CHIPLED_0603">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY Q971.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
</package>
<package name="CHIPLED-0603-TTW">
<description>&lt;b&gt;CHIPLED-0603&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.4" y1="0.625" x2="0.4" y2="1.125" layer="29"/>
<rectangle x1="-0.4" y1="-1.125" x2="0.4" y2="-0.625" layer="29"/>
<rectangle x1="-0.175" y1="-0.675" x2="0.175" y2="-0.325" layer="29"/>
</package>
<package name="SMARTLED-TTW">
<description>&lt;b&gt;SmartLED TTW&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
<rectangle x1="-0.225" y1="0.3" x2="0.225" y2="0.975" layer="31"/>
<rectangle x1="-0.175" y1="-0.7" x2="0.175" y2="-0.325" layer="29" rot="R180"/>
<rectangle x1="-0.225" y1="-0.975" x2="0.225" y2="-0.3" layer="31" rot="R180"/>
</package>
<package name="LUMILED+">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; with cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="1">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LUMILED">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; without cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LED10MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
10 mm, round</description>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.254" layer="21" curve="-306.869898"/>
<wire x1="4.445" y1="0" x2="0" y2="-4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="3.81" y1="0" x2="0" y2="-3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="3.175" y1="0" x2="0" y2="-3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="-4.445" y1="0" x2="0" y2="4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.81" y1="0" x2="0" y2="3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.175" y1="0" x2="0" y2="3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="0" y2="2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<circle x="0" y="0" radius="5.08" width="0.127" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.6764" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.6764" shape="octagon"/>
<text x="6.35" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="6.35" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="KA-3528ASYC">
<description>&lt;b&gt;SURFACE MOUNT LED LAMP&lt;/b&gt; 3.5x2.8mm&lt;p&gt;
Source: http://www.kingbright.com/manager/upload/pdf/KA-3528ASYC(Ver1189474662.1)</description>
<wire x1="-1.55" y1="1.35" x2="1.55" y2="1.35" width="0.1016" layer="21"/>
<wire x1="1.55" y1="1.35" x2="1.55" y2="-1.35" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-1.35" x2="-1.55" y2="-1.35" width="0.1016" layer="21"/>
<wire x1="-1.55" y1="-1.35" x2="-1.55" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="0.95" x2="0.65" y2="0.95" width="0.1016" layer="21" curve="-68.40813"/>
<wire x1="0.65" y1="-0.95" x2="-0.65" y2="-0.95" width="0.1016" layer="21" curve="-68.40813"/>
<circle x="0" y="0" radius="1.15" width="0.1016" layer="51"/>
<smd name="A" x="-1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<smd name="C" x="1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.75" y1="0.6" x2="-1.6" y2="1.1" layer="51"/>
<rectangle x1="-1.75" y1="-1.1" x2="-1.6" y2="-0.6" layer="51"/>
<rectangle x1="1.6" y1="-1.1" x2="1.75" y2="-0.6" layer="51" rot="R180"/>
<rectangle x1="1.6" y1="0.6" x2="1.75" y2="1.1" layer="51" rot="R180"/>
<polygon width="0.1016" layer="51">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-0.625"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
<polygon width="0.1016" layer="21">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-1.175"/>
<vertex x="1" y="-1.175"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
</package>
<package name="SML0805">
<description>&lt;b&gt;SML0805-2CW-TR (0805 PROFILE)&lt;/b&gt; COOL WHITE&lt;p&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0093.pdf</description>
<wire x1="-0.95" y1="-0.55" x2="0.95" y2="-0.55" width="0.1016" layer="51"/>
<wire x1="0.95" y1="-0.55" x2="0.95" y2="0.55" width="0.1016" layer="51"/>
<wire x1="0.95" y1="0.55" x2="-0.95" y2="0.55" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="0.55" x2="-0.95" y2="-0.55" width="0.1016" layer="51"/>
<wire x1="-0.175" y1="-0.025" x2="0" y2="0.15" width="0.0634" layer="21"/>
<wire x1="0" y1="0.15" x2="0.15" y2="0" width="0.0634" layer="21"/>
<wire x1="0.15" y1="0" x2="-0.025" y2="-0.175" width="0.0634" layer="21"/>
<wire x1="-0.025" y1="-0.175" x2="-0.175" y2="-0.025" width="0.0634" layer="21"/>
<circle x="-0.275" y="0.4" radius="0.125" width="0" layer="21"/>
<smd name="C" x="-1.05" y="0" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="1.05" y="0" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.5" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SML1206">
<description>&lt;b&gt;SML10XXKH-TR (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;SML10R3KH-TR&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10E3KH-TR&lt;/td&gt;&lt;td&gt;SUPER REDSUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10O3KH-TR&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10PY3KH-TR&lt;/td&gt;&lt;td&gt;PURE YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10OY3KH-TR&lt;/td&gt;&lt;td&gt;ULTRA YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10AG3KH-TR&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10BG3KH-TR&lt;/td&gt;&lt;td&gt;BLUE GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10PB1KH-TR&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10CW1KH-TR&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;

Source: http://www.ledtronics.com/ds/smd-1206/dstr0094.PDF</description>
<wire x1="-1.5" y1="0.5" x2="-1.5" y2="-0.5" width="0.2032" layer="51" curve="-180"/>
<wire x1="1.5" y1="-0.5" x2="1.5" y2="0.5" width="0.2032" layer="51" curve="-180"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<circle x="-0.725" y="0.525" radius="0.125" width="0" layer="21"/>
<smd name="C" x="-1.75" y="0" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="1.75" y="0" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.5" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2.5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="0.4" x2="-1.15" y2="0.8" layer="51"/>
<rectangle x1="-1.6" y1="-0.8" x2="-1.15" y2="-0.4" layer="51"/>
<rectangle x1="-1.175" y1="-0.6" x2="-1" y2="-0.275" layer="51"/>
<rectangle x1="1.15" y1="-0.8" x2="1.6" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="1.15" y1="0.4" x2="1.6" y2="0.8" layer="51" rot="R180"/>
<rectangle x1="1" y1="0.275" x2="1.175" y2="0.6" layer="51" rot="R180"/>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
</package>
<package name="SML0603">
<description>&lt;b&gt;SML0603-XXX (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;AG3K&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;B1K&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R1K&lt;/td&gt;&lt;td&gt;SUPER RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R3K&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3K&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3KH&lt;/td&gt;&lt;td&gt;SOFT ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3KH&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3K&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2CW&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0092.pdf</description>
<wire x1="-0.75" y1="0.35" x2="0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="0.35" x2="0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="-0.35" x2="-0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.75" y1="-0.35" x2="-0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.3" x2="-0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="0.45" y1="0.3" x2="0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="0.35" x2="0.2" y2="0.35" width="0.1016" layer="21"/>
<wire x1="-0.2" y1="-0.35" x2="0.2" y2="-0.35" width="0.1016" layer="21"/>
<smd name="C" x="-0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<text x="-1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.4" y1="0.175" x2="0" y2="0.4" layer="51"/>
<rectangle x1="-0.25" y1="0.175" x2="0" y2="0.4" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED" prefix="LED" uservalue="yes">
<description>&lt;b&gt;LED&lt;/b&gt;&lt;p&gt;
&lt;u&gt;OSRAM&lt;/u&gt;:&lt;br&gt;

- &lt;u&gt;CHIPLED&lt;/u&gt;&lt;br&gt;
LG R971, LG N971, LY N971, LG Q971, LY Q971, LO R971, LY R971
LH N974, LH R974&lt;br&gt;
LS Q976, LO Q976, LY Q976&lt;br&gt;
LO Q996&lt;br&gt;

- &lt;u&gt;Hyper CHIPLED&lt;/u&gt;&lt;br&gt;
LW Q18S&lt;br&gt;
LB Q993, LB Q99A, LB R99A&lt;br&gt;

- &lt;u&gt;SideLED&lt;/u&gt;&lt;br&gt;
LS A670, LO A670, LY A670, LG A670, LP A670&lt;br&gt;
LB A673, LV A673, LT A673, LW A673&lt;br&gt;
LH A674&lt;br&gt;
LY A675&lt;br&gt;
LS A676, LA A676, LO A676, LY A676, LW A676&lt;br&gt;
LS A679, LY A679, LG A679&lt;br&gt;

-  &lt;u&gt;Hyper Micro SIDELED®&lt;/u&gt;&lt;br&gt;
LS Y876, LA Y876, LO Y876, LY Y876&lt;br&gt;
LT Y87S&lt;br&gt;

- &lt;u&gt;SmartLED&lt;/u&gt;&lt;br&gt;
LW L88C, LW L88S&lt;br&gt;
LB L89C, LB L89S, LG L890&lt;br&gt;
LS L89K, LO L89K, LY L89K&lt;br&gt;
LS L896, LA L896, LO L896, LY L896&lt;br&gt;

- &lt;u&gt;TOPLED&lt;/u&gt;&lt;br&gt;
LS T670, LO T670, LY T670, LG T670, LP T670&lt;br&gt;
LSG T670, LSP T670, LSY T670, LOP T670, LYG T670&lt;br&gt;
LG T671, LOG T671, LSG T671&lt;br&gt;
LB T673, LV T673, LT T673, LW T673&lt;br&gt;
LH T674&lt;br&gt;
LS T676, LA T676, LO T676, LY T676, LB T676, LH T676, LSB T676, LW T676&lt;br&gt;
LB T67C, LV T67C, LT T67C, LS T67K, LO T67K, LY T67K, LW E67C&lt;br&gt;
LS E67B, LA E67B, LO E67B, LY E67B, LB E67C, LV E67C, LT E67C&lt;br&gt;
LW T67C&lt;br&gt;
LS T679, LY T679, LG T679&lt;br&gt;
LS T770, LO T770, LY T770, LG T770, LP T770&lt;br&gt;
LB T773, LV T773, LT T773, LW T773&lt;br&gt;
LH T774&lt;br&gt;
LS E675, LA E675, LY E675, LS T675&lt;br&gt;
LS T776, LA T776, LO T776, LY T776, LB T776&lt;br&gt;
LHGB T686&lt;br&gt;
LT T68C, LB T68C&lt;br&gt;

- &lt;u&gt;Hyper Mini TOPLED®&lt;/u&gt;&lt;br&gt;
LB M676&lt;br&gt;

- &lt;u&gt;Mini TOPLED Santana®&lt;/u&gt;&lt;br&gt;
LG M470&lt;br&gt;
LS M47K, LO M47K, LY M47K
&lt;p&gt;
Source: http://www.osram.convergy.de&lt;p&gt;

&lt;u&gt;LUXEON:&lt;/u&gt;&lt;br&gt;
- &lt;u&gt;LUMILED®&lt;/u&gt;&lt;br&gt;
LXK2-PW12-R00, LXK2-PW12-S00, LXK2-PW14-U00, LXK2-PW14-V00&lt;br&gt;
LXK2-PM12-R00, LXK2-PM12-S00, LXK2-PM14-U00&lt;br&gt;
LXK2-PE12-Q00, LXK2-PE12-R00, LXK2-PE12-S00, LXK2-PE14-T00, LXK2-PE14-U00&lt;br&gt;
LXK2-PB12-K00, LXK2-PB12-L00, LXK2-PB12-M00, LXK2-PB14-N00, LXK2-PB14-P00, LXK2-PB14-Q00&lt;br&gt;
LXK2-PR12-L00, LXK2-PR12-M00, LXK2-PR14-Q00, LXK2-PR14-R00&lt;br&gt;
LXK2-PD12-Q00, LXK2-PD12-R00, LXK2-PD12-S00&lt;br&gt;
LXK2-PH12-R00, LXK2-PH12-S00&lt;br&gt;
LXK2-PL12-P00, LXK2-PL12-Q00, LXK2-PL12-R00
&lt;p&gt;
Source: www.luxeon.com&lt;p&gt;

&lt;u&gt;KINGBRIGHT:&lt;/U&gt;&lt;p&gt;
KA-3528ASYC&lt;br&gt;
Source: www.kingbright.com</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="SMT1206" package="1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LD260" package="LD260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SQR2X5" package="LED2X5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3MM" package="LED3MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="LED5MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LSU260" package="LSU260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LZR181" package="LZR181">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B152" package="Q62902-B152">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B153" package="Q62902-B153">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B155" package="Q62902-B155">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B156" package="Q62902-B156">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SFH480" package="SFH480">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SFH482" package="SFH482">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SQR5.7X3.2" package="U57X32">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="IRL80A" package="IRL80A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-2" package="P-LCC-2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MINI-TOP" package="OSRAM-MINI-TOP-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SIDELED" package="OSRAM-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMART-LED" package="SMART-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="B"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-2-BACK" package="P-LCC-2-TOPLED-RG">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MICRO-SIDELED" package="MICRO-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-4" package="P-LCC-4">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C@4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIP-LED0603" package="CHIP-LED0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIP-LED0805" package="CHIP-LED0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TOPLED-SANTANA" package="MINI-TOPLED-SANTANA">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_0805" package="CHIPLED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_1206" package="CHIPLED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_0603" package="CHIPLED_0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED-0603-TTW" package="CHIPLED-0603-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="SMARTLED-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-LUMILED+" package="LUMILED+">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-LUMILED" package="LUMILED">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10MM" package="LED10MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KA-3528ASYC" package="KA-3528ASYC">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SML0805" package="SML0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SML1206" package="SML1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SML0603" package="SML0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="dubec">
<description>By Janne Savukoski 2014</description>
<packages>
<package name="D0402">
<smd name="A" x="-0.55" y="0" dx="0.62" dy="0.72" layer="1"/>
<smd name="C" x="0.55" y="0" dx="0.62" dy="0.72" layer="1"/>
<text x="-0.889" y="0.535" size="0.254" layer="25">&gt;NAME</text>
<text x="-0.889" y="-0.789" size="0.254" layer="27">&gt;VALUE</text>
<wire x1="0.0524" y1="0.25" x2="-0.0524" y2="0.25" width="0.1524" layer="21"/>
<wire x1="0.0524" y1="-0.25" x2="-0.0524" y2="-0.25" width="0.1524" layer="21"/>
<text x="0.7" y="-0.5" size="0.2" layer="51" font="vector" ratio="15" rot="SR270">C</text>
</package>
<package name="0402">
<smd name="1" x="-0.55" y="0" dx="0.62" dy="0.72" layer="1"/>
<smd name="2" x="0.55" y="0" dx="0.62" dy="0.72" layer="1"/>
<text x="-0.889" y="0.535" size="0.254" layer="25">&gt;NAME</text>
<text x="-0.889" y="-0.789" size="0.254" layer="27">&gt;VALUE</text>
<wire x1="0.0524" y1="0.25" x2="-0.0524" y2="0.25" width="0.1524" layer="21"/>
<wire x1="0.0524" y1="-0.25" x2="-0.0524" y2="-0.25" width="0.1524" layer="21"/>
</package>
<package name="3-DFN1006">
<smd name="B" x="-0.35" y="0.225" dx="0.4" dy="0.25" layer="1" stop="no"/>
<smd name="E" x="-0.35" y="-0.225" dx="0.4" dy="0.25" layer="1" stop="no"/>
<smd name="C" x="0.35" y="0" dx="0.4" dy="0.7" layer="1"/>
<text x="-0.65" y="0.55" size="0.4" layer="25">&gt;NAME</text>
<text x="-0.65" y="-0.95" size="0.4" layer="27">&gt;VALUE</text>
<rectangle x1="-0.55" y1="0.1" x2="-0.15" y2="0.35" layer="29"/>
<rectangle x1="-0.55" y1="-0.35" x2="-0.15" y2="-0.1" layer="29"/>
</package>
<package name="PHB_1.5F">
<pad name="A" x="-5.9" y="0" drill="0.8" shape="square"/>
<pad name="C" x="5.9" y="0" drill="0.8"/>
<text x="-6" y="2" size="1.27" layer="25">&gt;NAME</text>
<text x="-6" y="-3" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-6.6" y1="0.2" x2="-6.6" y2="0.7" width="0.1524" layer="41"/>
<wire x1="-6.6" y1="0.7" x2="-6.1" y2="0.7" width="0.1524" layer="41"/>
<wire x1="-6.1" y1="-0.7" x2="-6.6" y2="-0.7" width="0.1524" layer="41"/>
<wire x1="-6.6" y1="-0.7" x2="-6.6" y2="-0.2" width="0.1524" layer="41"/>
<wire x1="-5.2" y1="-0.2" x2="-5.2" y2="-0.7" width="0.1524" layer="41"/>
<wire x1="-5.2" y1="-0.7" x2="-5.7" y2="-0.7" width="0.1524" layer="41"/>
<wire x1="-5.7" y1="0.7" x2="-5.2" y2="0.7" width="0.1524" layer="41"/>
<wire x1="-5.2" y1="0.7" x2="-5.2" y2="0.2" width="0.1524" layer="41"/>
<wire x1="-6.6" y1="0.2" x2="-6.6" y2="0.7" width="0.1524" layer="42"/>
<wire x1="-6.6" y1="0.7" x2="-6.1" y2="0.7" width="0.1524" layer="42"/>
<wire x1="-5.2" y1="-0.2" x2="-5.2" y2="-0.7" width="0.1524" layer="42"/>
<wire x1="-5.2" y1="-0.7" x2="-5.7" y2="-0.7" width="0.1524" layer="42"/>
<wire x1="-6.1" y1="-0.7" x2="-6.6" y2="-0.7" width="0.1524" layer="42"/>
<wire x1="-6.6" y1="-0.7" x2="-6.6" y2="-0.2" width="0.1524" layer="42"/>
<wire x1="-5.7" y1="0.7" x2="-5.2" y2="0.7" width="0.1524" layer="42"/>
<wire x1="-5.2" y1="0.7" x2="-5.2" y2="0.2" width="0.1524" layer="42"/>
<wire x1="5.2" y1="0.2" x2="5.7" y2="0.7" width="0.1524" layer="41" curve="-58.109208"/>
<wire x1="5.7" y1="-0.7" x2="5.2" y2="-0.2" width="0.1524" layer="41" curve="-58.109208"/>
<wire x1="6.6" y1="-0.2" x2="6.1" y2="-0.7" width="0.1524" layer="42" curve="-58.109208"/>
<wire x1="6.1" y1="0.7" x2="6.6" y2="0.2" width="0.1524" layer="42" curve="-58.109208"/>
<wire x1="5.2" y1="0.2" x2="5.7" y2="0.7" width="0.1524" layer="42" curve="-58.109208"/>
<wire x1="5.7" y1="-0.7" x2="5.2" y2="-0.2" width="0.1524" layer="42" curve="-58.109208"/>
<wire x1="6.6" y1="-0.2" x2="6.1" y2="-0.7" width="0.1524" layer="41" curve="-58.109208"/>
<wire x1="6.1" y1="0.7" x2="6.6" y2="0.2" width="0.1524" layer="41" curve="-58.109208"/>
</package>
<package name="1206">
<smd name="1" x="-1.6" y="0" dx="1.35" dy="1.9" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.35" dy="1.9" layer="1"/>
<text x="-2.286" y="1.27" size="0.508" layer="25">&gt;NAME</text>
<text x="-2.286" y="-1.778" size="0.508" layer="27">&gt;VALUE</text>
<wire x1="-0.5476" y1="0.8" x2="0.5476" y2="0.8" width="0.1524" layer="21"/>
<wire x1="-0.5476" y1="-0.8" x2="0.5476" y2="-0.8" width="0.1524" layer="21"/>
</package>
<package name="1210">
<smd name="1" x="-1.6" y="0" dx="1.35" dy="2.8" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.35" dy="2.8" layer="1"/>
<text x="-2.4" y="1.8" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.4" y="-3" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-0.6" y1="0.8" x2="0.6" y2="0.8" width="0.1524" layer="21"/>
<wire x1="-0.6" y1="-0.8" x2="0.6" y2="-0.8" width="0.1524" layer="21"/>
</package>
<package name="0805">
<smd name="1" x="-1" y="0" dx="1.35" dy="1.55" layer="1"/>
<smd name="2" x="1" y="0" dx="1.35" dy="1.55" layer="1"/>
<text x="-1.651" y="1.016" size="0.508" layer="25">&gt;NAME</text>
<text x="-1.651" y="-1.524" size="0.508" layer="27">&gt;VALUE</text>
<wire x1="-0.0226" y1="0.625" x2="0.0226" y2="0.625" width="0.1524" layer="21"/>
<wire x1="-0.0226" y1="-0.625" x2="0.0226" y2="-0.625" width="0.1524" layer="21"/>
<wire x1="-1" y1="0.625" x2="-1" y2="-0.625" width="0.127" layer="49"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.127" layer="49"/>
</package>
<package name="0805NUDE">
<smd name="1" x="-0.7" y="0" dx="0.75" dy="1.55" layer="1"/>
<smd name="2" x="0.7" y="0" dx="0.75" dy="1.55" layer="1"/>
<text x="-1.651" y="1.016" size="0.508" layer="25">&gt;NAME</text>
<text x="-1.651" y="-1.524" size="0.508" layer="27">&gt;VALUE</text>
<wire x1="-0.0226" y1="0.625" x2="0.0226" y2="0.625" width="0.1524" layer="21"/>
<wire x1="-0.0226" y1="-0.625" x2="0.0226" y2="-0.625" width="0.1524" layer="21"/>
<wire x1="-1" y1="0.625" x2="-1" y2="-0.625" width="0.127" layer="49"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.127" layer="49"/>
</package>
<package name="JST-SH_6-TOP">
<smd name="4" x="0.5" y="-1.3" dx="0.6" dy="1.55" layer="1"/>
<smd name="3" x="-0.5" y="-1.3" dx="0.6" dy="1.55" layer="1"/>
<smd name="5" x="1.5" y="-1.3" dx="0.6" dy="1.55" layer="1"/>
<smd name="6" x="2.5" y="-1.3" dx="0.6" dy="1.55" layer="1"/>
<smd name="2" x="-1.5" y="-1.3" dx="0.6" dy="1.55" layer="1"/>
<smd name="1" x="-2.5" y="-1.3" dx="0.6" dy="1.55" layer="1"/>
<smd name="X2" x="3.8" y="1.2" dx="1.2" dy="1.8" layer="1"/>
<smd name="X1" x="-3.8" y="1.2" dx="1.2" dy="1.8" layer="1"/>
<wire x1="-3.15" y1="-0.9" x2="-4" y2="-0.9" width="0.127" layer="21"/>
<wire x1="-4" y1="-0.9" x2="-4" y2="0" width="0.127" layer="21"/>
<wire x1="3.15" y1="-0.9" x2="4" y2="-0.9" width="0.127" layer="21"/>
<wire x1="4" y1="-0.9" x2="4" y2="0" width="0.127" layer="21"/>
<wire x1="-2.9" y1="2" x2="2.9" y2="2" width="0.127" layer="21"/>
<text x="-4" y="3" size="1.27" layer="25">&gt;NAME</text>
<text x="-4" y="-4.2" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="2525CZ">
<smd name="P$1" x="-2.7686" y="0" dx="1.8288" dy="3.429" layer="1"/>
<smd name="P$2" x="2.7686" y="0" dx="1.8288" dy="3.429" layer="1"/>
<text x="-3.429" y="3.556" size="0.762" layer="25">&gt;NAME</text>
<text x="-3.429" y="-4.318" size="0.762" layer="27">&gt;VALUE</text>
<wire x1="-3.429" y1="3.2385" x2="3.429" y2="3.2385" width="0.127" layer="21"/>
<wire x1="3.429" y1="3.2385" x2="3.429" y2="1.9685" width="0.127" layer="21"/>
<wire x1="-3.429" y1="3.175" x2="-3.429" y2="1.9685" width="0.127" layer="21"/>
<wire x1="-3.429" y1="-3.2385" x2="3.429" y2="-3.2385" width="0.127" layer="21"/>
<wire x1="3.429" y1="-3.2385" x2="3.429" y2="-1.9685" width="0.127" layer="21"/>
<wire x1="-3.429" y1="-3.2385" x2="-3.429" y2="-1.9685" width="0.127" layer="21"/>
</package>
<package name="2020Z">
<smd name="1" x="-2.032" y="0" dx="1.9177" dy="2.794" layer="1"/>
<smd name="2" x="2.032" y="0" dx="1.9177" dy="2.794" layer="1"/>
<text x="-2.667" y="2.921" size="0.762" layer="25">&gt;NAME</text>
<text x="-2.667" y="-3.683" size="0.762" layer="27">&gt;VALUE</text>
<wire x1="-2.7432" y1="2.5908" x2="2.7432" y2="2.5908" width="0.1524" layer="21"/>
<wire x1="2.7432" y1="2.5908" x2="2.7432" y2="1.6764" width="0.127" layer="21"/>
<wire x1="-2.7432" y1="2.54" x2="-2.7432" y2="1.6764" width="0.127" layer="21"/>
<wire x1="-2.7432" y1="-1.6764" x2="-2.7432" y2="-2.5908" width="0.127" layer="21"/>
<wire x1="-2.7432" y1="-2.5908" x2="2.7432" y2="-2.5908" width="0.1524" layer="21"/>
<wire x1="2.7432" y1="-2.5908" x2="2.7432" y2="-1.6764" width="0.127" layer="21"/>
</package>
<package name="0420CDMCB/DS">
<wire x1="-2.25" y1="2.05" x2="2.25" y2="2.05" width="0.127" layer="21"/>
<wire x1="2.25" y1="2.05" x2="2.25" y2="1.6" width="0.127" layer="21"/>
<smd name="2" x="1.85" y="0" dx="1.5" dy="2.7" layer="1"/>
<smd name="1" x="-1.85" y="0" dx="1.5" dy="2.7" layer="1"/>
<wire x1="-2.25" y1="2.05" x2="-2.25" y2="1.6" width="0.127" layer="21"/>
<wire x1="-2.25" y1="-2.05" x2="2.25" y2="-2.05" width="0.127" layer="21"/>
<wire x1="2.25" y1="-2.05" x2="2.25" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-2.25" y1="-2.05" x2="-2.25" y2="-1.6" width="0.127" layer="21"/>
<text x="-2.3" y="2.35" size="0.508" layer="25">&gt;NAME</text>
<text x="-2.3" y="-2.85" size="0.508" layer="27">&gt;VALUE</text>
</package>
<package name="10-MLF">
<smd name="8" x="1.35" y="0" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="9" x="1.35" y="0.5" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="7" x="1.35" y="-0.5" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="10" x="1.35" y="1" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="6" x="1.35" y="-1" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="3" x="-1.35" y="0" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="2" x="-1.35" y="0.5" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="1" x="-1.35" y="1" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="4" x="-1.35" y="-0.5" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="5" x="-1.35" y="-1" dx="0.5" dy="0.25" layer="1" stop="no" thermals="no"/>
<smd name="11" x="0" y="0" dx="1.6" dy="2.5" layer="1" stop="no" thermals="no"/>
<rectangle x1="-0.8" y1="-1.25" x2="0.8" y2="1.25" layer="29"/>
<wire x1="-1.5" y1="1.5" x2="1.5" y2="1.5" width="0.1" layer="21"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="1.3" width="0.1" layer="21"/>
<wire x1="1.5" y1="-1.3" x2="1.5" y2="-1.5" width="0.1" layer="21"/>
<wire x1="1.5" y1="-1.5" x2="-1.5" y2="-1.5" width="0.1" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="-1.3" width="0.1" layer="21"/>
<wire x1="-1.5" y1="1.5" x2="-1.5" y2="1.3" width="0.1" layer="21"/>
<text x="-1.5" y="1.8" size="0.6" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2.4" size="0.6" layer="27">&gt;VALUE</text>
<circle x="-2.04" y="1.27" radius="0.156521875" width="0.1" layer="21"/>
<rectangle x1="-1.6" y1="0.875" x2="-1.1" y2="1.125" layer="29"/>
<rectangle x1="-1.6" y1="0.375" x2="-1.1" y2="0.625" layer="29"/>
<rectangle x1="-1.6" y1="-0.125" x2="-1.1" y2="0.125" layer="29"/>
<rectangle x1="-1.6" y1="-0.625" x2="-1.1" y2="-0.375" layer="29"/>
<rectangle x1="-1.6" y1="-1.125" x2="-1.1" y2="-0.875" layer="29"/>
<rectangle x1="1.1" y1="-1.125" x2="1.6" y2="-0.875" layer="29"/>
<rectangle x1="1.1" y1="-0.625" x2="1.6" y2="-0.375" layer="29"/>
<rectangle x1="1.1" y1="-0.125" x2="1.6" y2="0.125" layer="29"/>
<rectangle x1="1.1" y1="0.375" x2="1.6" y2="0.625" layer="29"/>
<rectangle x1="1.1" y1="0.875" x2="1.6" y2="1.125" layer="29"/>
</package>
<package name="DF13-6P">
<pad name="3" x="-0.625" y="0" drill="0.45" shape="long" rot="R90" stop="no"/>
<pad name="4" x="0.625" y="0" drill="0.45" shape="long" rot="R90" stop="no"/>
<pad name="5" x="1.875" y="0" drill="0.45" shape="long" rot="R90" stop="no"/>
<pad name="6" x="3.125" y="0" drill="0.45" shape="long" rot="R90" stop="no"/>
<pad name="2" x="-1.875" y="0" drill="0.45" shape="long" rot="R90" stop="no"/>
<pad name="1" x="-3.125" y="0" drill="0.45" shape="long" rot="R90" stop="no"/>
<wire x1="-4.575" y1="-1.7" x2="-4.575" y2="1.7" width="0.127" layer="21"/>
<wire x1="-4.575" y1="1.7" x2="4.575" y2="1.7" width="0.127" layer="21"/>
<wire x1="4.575" y1="1.7" x2="4.575" y2="-1.7" width="0.127" layer="21"/>
<wire x1="4.575" y1="-1.7" x2="-4.575" y2="-1.7" width="0.127" layer="21"/>
<text x="-4.6" y="2.2" size="1" layer="25">&gt;NAME</text>
<text x="-4.6" y="-3.2" size="1" layer="27">&gt;VALUE</text>
<polygon width="0.127" layer="29">
<vertex x="-1.05" y="-0.3"/>
<vertex x="-1.05" y="0.475" curve="-90"/>
<vertex x="-0.625" y="0.9" curve="-90"/>
<vertex x="-0.225" y="0.5"/>
<vertex x="-0.225" y="-0.3"/>
<vertex x="-0.225" y="-0.5" curve="-90"/>
<vertex x="-0.625" y="-0.9" curve="-90"/>
<vertex x="-1.05" y="-0.475"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="0.2" y="-0.3"/>
<vertex x="0.2" y="0.475" curve="-90"/>
<vertex x="0.625" y="0.9" curve="-90"/>
<vertex x="1.025" y="0.5"/>
<vertex x="1.025" y="-0.3"/>
<vertex x="1.025" y="-0.5" curve="-90"/>
<vertex x="0.625" y="-0.9" curve="-90"/>
<vertex x="0.2" y="-0.475"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1.45" y="-0.3"/>
<vertex x="1.45" y="0.475" curve="-90"/>
<vertex x="1.875" y="0.9" curve="-90"/>
<vertex x="2.275" y="0.5"/>
<vertex x="2.275" y="-0.3"/>
<vertex x="2.275" y="-0.5" curve="-90"/>
<vertex x="1.875" y="-0.9" curve="-90"/>
<vertex x="1.45" y="-0.475"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="2.7" y="-0.3"/>
<vertex x="2.7" y="0.475" curve="-90"/>
<vertex x="3.125" y="0.9" curve="-90"/>
<vertex x="3.525" y="0.5"/>
<vertex x="3.525" y="-0.3"/>
<vertex x="3.525" y="-0.5" curve="-90"/>
<vertex x="3.125" y="-0.9" curve="-90"/>
<vertex x="2.7" y="-0.475"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-2.3" y="-0.3"/>
<vertex x="-2.3" y="0.475" curve="-90"/>
<vertex x="-1.875" y="0.9" curve="-90"/>
<vertex x="-1.475" y="0.5"/>
<vertex x="-1.475" y="-0.3"/>
<vertex x="-1.475" y="-0.5" curve="-90"/>
<vertex x="-1.875" y="-0.9" curve="-90"/>
<vertex x="-2.3" y="-0.475"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.55" y="-0.3"/>
<vertex x="-3.55" y="0.475" curve="-90"/>
<vertex x="-3.125" y="0.9" curve="-90"/>
<vertex x="-2.725" y="0.5"/>
<vertex x="-2.725" y="-0.3"/>
<vertex x="-2.725" y="-0.5" curve="-90"/>
<vertex x="-3.125" y="-0.9" curve="-90"/>
<vertex x="-3.55" y="-0.475"/>
</polygon>
<wire x1="-3.675" y1="0.525" x2="-3.35" y2="0.975" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="-2.575" y1="0.525" x2="-2.9" y2="0.975" width="0.127" layer="41" curve="60.577826"/>
<wire x1="-2.575" y1="-0.55" x2="-2.9" y2="-1" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="-3.675" y1="-0.55" x2="-3.35" y2="-1" width="0.127" layer="41" curve="60.577826"/>
<wire x1="-3.675" y1="0.525" x2="-3.675" y2="-0.55" width="0.127" layer="41"/>
<wire x1="-2.575" y1="0.525" x2="-2.575" y2="-0.55" width="0.127" layer="41"/>
<wire x1="-2.425" y1="0.525" x2="-2.1" y2="0.975" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="-1.325" y1="0.525" x2="-1.65" y2="0.975" width="0.127" layer="41" curve="60.577826"/>
<wire x1="-1.325" y1="-0.55" x2="-1.65" y2="-1" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="-2.425" y1="-0.55" x2="-2.1" y2="-1" width="0.127" layer="41" curve="60.577826"/>
<wire x1="-2.425" y1="0.525" x2="-2.425" y2="-0.55" width="0.127" layer="41"/>
<wire x1="-1.325" y1="0.525" x2="-1.325" y2="-0.55" width="0.127" layer="41"/>
<wire x1="-1.175" y1="0.525" x2="-0.85" y2="0.975" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="-0.075" y1="0.525" x2="-0.4" y2="0.975" width="0.127" layer="41" curve="60.577826"/>
<wire x1="-0.075" y1="-0.55" x2="-0.4" y2="-1" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="-1.175" y1="-0.55" x2="-0.85" y2="-1" width="0.127" layer="41" curve="60.577826"/>
<wire x1="-1.175" y1="0.525" x2="-1.175" y2="-0.55" width="0.127" layer="41"/>
<wire x1="-0.075" y1="0.525" x2="-0.075" y2="-0.55" width="0.127" layer="41"/>
<wire x1="0.075" y1="0.525" x2="0.4" y2="0.975" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="1.175" y1="0.525" x2="0.85" y2="0.975" width="0.127" layer="41" curve="60.577826"/>
<wire x1="1.175" y1="-0.55" x2="0.85" y2="-1" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="0.075" y1="-0.55" x2="0.4" y2="-1" width="0.127" layer="41" curve="60.577826"/>
<wire x1="0.075" y1="0.525" x2="0.075" y2="-0.55" width="0.127" layer="41"/>
<wire x1="1.175" y1="0.525" x2="1.175" y2="-0.55" width="0.127" layer="41"/>
<wire x1="1.325" y1="0.525" x2="1.65" y2="0.975" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="2.425" y1="0.525" x2="2.1" y2="0.975" width="0.127" layer="41" curve="60.577826"/>
<wire x1="2.425" y1="-0.55" x2="2.1" y2="-1" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="1.325" y1="-0.55" x2="1.65" y2="-1" width="0.127" layer="41" curve="60.577826"/>
<wire x1="1.325" y1="0.525" x2="1.325" y2="-0.55" width="0.127" layer="41"/>
<wire x1="2.425" y1="0.525" x2="2.425" y2="-0.55" width="0.127" layer="41"/>
<wire x1="2.575" y1="0.525" x2="2.9" y2="0.975" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="3.675" y1="0.525" x2="3.35" y2="0.975" width="0.127" layer="41" curve="60.577826"/>
<wire x1="3.675" y1="-0.55" x2="3.35" y2="-1" width="0.127" layer="41" curve="-60.577826"/>
<wire x1="2.575" y1="-0.55" x2="2.9" y2="-1" width="0.127" layer="41" curve="60.577826"/>
<wire x1="2.575" y1="0.525" x2="2.575" y2="-0.55" width="0.127" layer="41"/>
<wire x1="3.675" y1="0.525" x2="3.675" y2="-0.55" width="0.127" layer="41"/>
</package>
<package name="PINHEAD2MM-3X2">
<text x="-3.23" y="2.45" size="1" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.28" y="-3.45" size="1" layer="27">&gt;VALUE</text>
<rectangle x1="-2.2" y1="-1.2" x2="-1.8" y2="-0.8" layer="51"/>
<rectangle x1="-0.2" y1="-1.2" x2="0.2" y2="-0.8" layer="51"/>
<rectangle x1="1.8" y1="-1.2" x2="2.2" y2="-0.8" layer="51"/>
<rectangle x1="1.8" y1="0.8" x2="2.2" y2="1.2" layer="51"/>
<rectangle x1="-0.2" y1="0.8" x2="0.2" y2="1.2" layer="51"/>
<rectangle x1="-2.2" y1="0.8" x2="-1.8" y2="1.2" layer="51"/>
<wire x1="-3.25" y1="2" x2="3.25" y2="2" width="0.127" layer="21"/>
<wire x1="3.25" y1="2" x2="3.25" y2="-2" width="0.127" layer="21"/>
<wire x1="3.25" y1="-2" x2="-3.25" y2="-2" width="0.127" layer="21"/>
<wire x1="-3.25" y1="-2" x2="-3.25" y2="1.95" width="0.127" layer="21"/>
<pad name="2" x="-2" y="1" drill="0.6"/>
<pad name="4" x="0" y="1" drill="0.6"/>
<pad name="6" x="2" y="1" drill="0.6"/>
<pad name="1" x="-2" y="-1" drill="0.6" shape="square"/>
<pad name="3" x="0" y="-1" drill="0.6"/>
<pad name="5" x="2" y="-1" drill="0.6"/>
</package>
<package name="D0503">
<wire x1="-0.006" y1="0.432" x2="0.006" y2="0.432" width="0.1016" layer="21"/>
<wire x1="-0.006" y1="-0.419" x2="0.006" y2="-0.419" width="0.1016" layer="21"/>
<smd name="A" x="-0.425" y="0" dx="0.55" dy="0.85" layer="1"/>
<text x="-0.7" y="0.65" size="0.254" layer="25">&gt;NAME</text>
<text x="-0.7" y="-0.85" size="0.254" layer="27">&gt;VALUE</text>
<text x="0.45" y="-0.6" size="0.3" layer="51" font="vector" ratio="20" rot="SR270">C</text>
<smd name="C" x="0.425" y="0" dx="0.55" dy="0.85" layer="1"/>
</package>
<package name="0603">
<wire x1="-0.106" y1="0.432" x2="0.106" y2="0.432" width="0.1016" layer="21"/>
<wire x1="-0.106" y1="-0.419" x2="0.106" y2="-0.419" width="0.1016" layer="21"/>
<smd name="A" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="C" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-1.4" y="0.7" size="0.254" layer="25">&gt;NAME</text>
<text x="-1.4" y="-0.95" size="0.254" layer="27">&gt;VALUE</text>
<text x="1.1" y="-0.7" size="0.3" layer="51" font="vector" ratio="20" rot="SR270">C</text>
</package>
<package name="0508">
<smd name="1" x="-0.95" y="0" dx="0.9" dy="1.1" layer="1"/>
<text x="-1.4" y="0.8" size="0.254" layer="25">&gt;NAME</text>
<text x="-1.4" y="-1.1" size="0.254" layer="27">&gt;VALUE</text>
<wire x1="0.1774" y1="0.625" x2="-0.1774" y2="0.625" width="0.1524" layer="21"/>
<wire x1="0.1524" y1="-0.65" x2="-0.2024" y2="-0.65" width="0.1524" layer="21"/>
<smd name="2" x="0.95" y="0" dx="0.9" dy="1.1" layer="1"/>
</package>
<package name="PINHEAD3">
<pad name="2" x="0" y="0" drill="1.1" diameter="2.032"/>
<pad name="1" x="-2.54" y="0" drill="1.1" diameter="2.032"/>
<pad name="3" x="2.54" y="0" drill="1.1" diameter="2.032"/>
</package>
<package name="PIN1-0.8MM">
<pad name="1" x="0" y="0" drill="0.8" diameter="1.8"/>
</package>
</packages>
<symbols>
<symbol name="AVRISP">
<pin name="SCK" x="-5.08" y="0" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="MISO" x="-5.08" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="RESET" x="-5.08" y="-7.62" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="VCC" x="5.08" y="7.62" visible="pin" length="middle" direction="pwr"/>
<pin name="GND" x="5.08" y="-7.62" visible="pin" length="middle" direction="pwr"/>
<wire x1="-10.16" y1="12.7" x2="10.16" y2="12.7" width="0.508" layer="94"/>
<wire x1="10.16" y1="12.7" x2="10.16" y2="-12.7" width="0.508" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="-10.16" y2="-12.7" width="0.508" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="12.7" width="0.508" layer="94"/>
<text x="-10.16" y="15.24" size="3.81" layer="95">&gt;NAME</text>
<text x="-10.16" y="-19.05" size="3.81" layer="96">&gt;VALUE</text>
<circle x="-5.08" y="7.62" radius="2.54" width="0.508" layer="94"/>
<circle x="-5.08" y="0" radius="2.54" width="0.508" layer="94"/>
<circle x="-5.08" y="-7.62" radius="2.54" width="0.508" layer="94"/>
<circle x="5.08" y="7.62" radius="2.54" width="0.508" layer="94"/>
<circle x="5.08" y="0" radius="2.54" width="0.508" layer="94"/>
<circle x="5.08" y="-7.62" radius="2.54" width="0.508" layer="94"/>
<pin name="MOSI" x="5.08" y="0" visible="pin" length="middle"/>
</symbol>
<symbol name="SCH_DIODE">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.27" x2="1.905" y2="1.016" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="0.635" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0.635" y1="-1.016" x2="0.635" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.286" y="1.905" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.286" y="-3.429" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="NPN">
<wire x1="2.54" y1="2.54" x2="0.508" y2="1.524" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-1.524" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.778" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.54" y1="-2.04" x2="0.308" y2="-1.424" width="0.1524" layer="94"/>
<wire x1="1.524" y1="-2.413" x2="2.286" y2="-2.413" width="0.254" layer="94"/>
<wire x1="2.286" y1="-2.413" x2="1.778" y2="-1.778" width="0.254" layer="94"/>
<wire x1="1.778" y1="-1.778" x2="1.524" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.286" x2="1.905" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.905" y1="-2.286" x2="1.778" y2="-2.032" width="0.254" layer="94"/>
<text x="-10.16" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="5.08" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="E" x="2.54" y="-5.08" visible="off" length="short" direction="pas" swaplevel="3" rot="R90"/>
<pin name="C" x="2.54" y="5.08" visible="off" length="short" direction="pas" swaplevel="2" rot="R270"/>
</symbol>
<symbol name="CAP">
<pin name="GND" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="V+" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<text x="0.762" y="1.778" size="1.27" layer="95">&gt;NAME</text>
<text x="0.508" y="-5.588" size="1.27" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.508" x2="2.032" y2="0" layer="94"/>
<rectangle x1="-2.032" y1="-2.54" x2="2.032" y2="-2.032" layer="94"/>
</symbol>
<symbol name="IND">
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="-2.54" y1="0" x2="0" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94" curve="-180"/>
<pin name="1" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<pin name="2" x="7.62" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-5.08" y="2.54" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="ATTINY13">
<pin name="PB4" x="-12.7" y="-2.54" visible="pin" length="middle"/>
<pin name="PB3" x="-12.7" y="2.54" visible="pin" length="middle"/>
<pin name="PB5" x="-12.7" y="7.62" visible="pin" length="middle"/>
<pin name="GND" x="-12.7" y="-7.62" visible="pin" length="middle" direction="pwr"/>
<pin name="VCC" x="12.7" y="7.62" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="PB2" x="12.7" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="PB1" x="12.7" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="PB0" x="12.7" y="-7.62" visible="pin" length="middle" rot="R180"/>
<wire x1="-7.62" y1="12.7" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<text x="-7.62" y="15.24" size="2.54" layer="95">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="2.54" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="RES">
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<wire x1="-1.905" y1="-1.27" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-0.635" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<pin name="GND" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-3.81" y="1.905" size="1.27" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="96">&gt;VALUE</text>
<wire x1="0" y1="1.27" x2="0.635" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0.635" y1="-1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.905" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="-1.27" width="0.254" layer="94"/>
</symbol>
<symbol name="Z-DIODE">
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="1.905" x2="1.397" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="-1.905" x2="2.032" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="1.905" x2="0.762" y2="1.905" width="0.254" layer="94"/>
<text x="-2.9464" y="2.6416" size="1.778" layer="95">&gt;NAME</text>
<text x="-4.4704" y="-4.4958" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="RCHEAD">
<wire x1="-1.27" y1="-5.08" x2="3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="5.08" x2="-1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="SIG" x="0" y="2.54" visible="pad" length="short" function="dot"/>
<pin name="V+" x="0" y="0" visible="pad" length="short" direction="pwr" function="dot"/>
<pin name="GND" x="0" y="-2.54" visible="pad" length="short" direction="pwr" function="dot"/>
</symbol>
<symbol name="PIN1">
<pin name="1" x="0" y="0" visible="off" length="middle" direction="pas"/>
<circle x="5.08" y="0" radius="2.54" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AVRISP">
<gates>
<gate name="G$1" symbol="AVRISP" x="0" y="0"/>
</gates>
<devices>
<device name="JST-SH" package="JST-SH_6-TOP">
<connects>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="MISO" pad="1"/>
<connect gate="G$1" pin="MOSI" pad="4"/>
<connect gate="G$1" pin="RESET" pad="5"/>
<connect gate="G$1" pin="SCK" pad="3"/>
<connect gate="G$1" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="HIROSE" package="DF13-6P">
<connects>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="MISO" pad="1"/>
<connect gate="G$1" pin="MOSI" pad="4"/>
<connect gate="G$1" pin="RESET" pad="5"/>
<connect gate="G$1" pin="SCK" pad="3"/>
<connect gate="G$1" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PIN3X2" package="PINHEAD2MM-3X2">
<connects>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="MISO" pad="1"/>
<connect gate="G$1" pin="MOSI" pad="4"/>
<connect gate="G$1" pin="RESET" pad="5"/>
<connect gate="G$1" pin="SCK" pad="3"/>
<connect gate="G$1" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SCH_DIODE" prefix="D">
<gates>
<gate name="G$1" symbol="SCH_DIODE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="D0402">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TR_NPN">
<gates>
<gate name="G$1" symbol="NPN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="3-DFN1006">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="1210">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402" package="0402">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603">
<connects>
<connect gate="G$1" pin="GND" pad="C"/>
<connect gate="G$1" pin="V+" pad="A"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805NUDE" package="0805NUDE">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POWERSTOR_1.5F" package="PHB_1.5F">
<connects>
<connect gate="G$1" pin="GND" pad="C"/>
<connect gate="G$1" pin="V+" pad="A"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0508" package="0508">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="IND" prefix="L">
<gates>
<gate name="G$1" symbol="IND" x="0" y="0"/>
</gates>
<devices>
<device name="I2525Z" package="2525CZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="I2020Z" package="2020Z">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="I0420CDMCB/DS" package="0420CDMCB/DS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ATTINY13">
<gates>
<gate name="G$1" symbol="ATTINY13" x="0" y="0"/>
</gates>
<devices>
<device name="10M1" package="10-MLF">
<connects>
<connect gate="G$1" pin="GND" pad="5 11"/>
<connect gate="G$1" pin="PB0" pad="6"/>
<connect gate="G$1" pin="PB1" pad="7"/>
<connect gate="G$1" pin="PB2" pad="9"/>
<connect gate="G$1" pin="PB3" pad="2"/>
<connect gate="G$1" pin="PB4" pad="4"/>
<connect gate="G$1" pin="PB5" pad="1"/>
<connect gate="G$1" pin="VCC" pad="10"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES" prefix="R">
<gates>
<gate name="G$1" symbol="RES" x="0" y="0"/>
</gates>
<devices>
<device name="0402" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="GND" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="Z-DIODE">
<gates>
<gate name="G$1" symbol="Z-DIODE" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0503" package="D0503">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RCHDR">
<gates>
<gate name="G$1" symbol="RCHEAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PINHEAD3">
<connects>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="SIG" pad="1"/>
<connect gate="G$1" pin="V+" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN1">
<gates>
<gate name="G$1" symbol="PIN1" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="PIN1-0.8MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="varistor">
<description>&lt;b&gt;Varistors/Thermistors&lt;/b&gt;&lt;p&gt;
Block, Siemens and generic&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="R-5">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.27" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="1.778" y2="0" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-1.27" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="R-7,5">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0" x2="3.048" y2="0" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-3.048" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="CT/CN0402">
<description>&lt;b&gt;EPCOS SMD Varistors, MLV; Standard Series&lt;/b&gt;&lt;p&gt;
Source: www.farnell.com/datasheets/49238.pdf</description>
<wire x1="-0.45" y1="0.2" x2="0.45" y2="0.2" width="0.1016" layer="51"/>
<wire x1="0.45" y1="0.2" x2="0.45" y2="-0.2" width="0.1016" layer="51"/>
<wire x1="0.45" y1="-0.2" x2="-0.45" y2="-0.2" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.2" x2="-0.45" y2="0.2" width="0.1016" layer="51"/>
<smd name="1" x="-0.55" y="0" dx="0.6" dy="0.6" layer="1"/>
<smd name="2" x="0.55" y="0" dx="0.6" dy="0.6" layer="1"/>
<text x="-0.75" y="0.5" size="0.8128" layer="25">&gt;NAME</text>
<text x="-0.75" y="-1.25" size="0.8128" layer="27">&gt;VALUE</text>
<rectangle x1="-0.45" y1="-0.2" x2="-0.2" y2="0.2" layer="51"/>
<rectangle x1="0.2" y1="-0.2" x2="0.45" y2="0.2" layer="51" rot="R180"/>
</package>
<package name="CT/CN0603">
<description>&lt;b&gt;EPCOS SMD Varistors, MLV; Standard Series&lt;/b&gt;&lt;p&gt;
Source: www.farnell.com/datasheets/49238.pdf</description>
<wire x1="-0.75" y1="0.35" x2="0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="0.35" x2="0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="-0.35" x2="-0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.75" y1="-0.35" x2="-0.75" y2="0.35" width="0.1016" layer="51"/>
<smd name="1" x="-1" y="0" dx="1" dy="1" layer="1"/>
<smd name="2" x="1" y="0" dx="1" dy="1" layer="1"/>
<text x="-1.5" y="1" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.75" y1="-0.35" x2="-0.4" y2="0.35" layer="51"/>
<rectangle x1="0.4" y1="-0.35" x2="0.75" y2="0.35" layer="51" rot="R180"/>
</package>
<package name="CT/CN0805">
<description>&lt;b&gt;EPCOS SMD Varistors, MLV; Standard Series&lt;/b&gt;&lt;p&gt;
Source: www.farnell.com/datasheets/49238.pdf</description>
<wire x1="-0.95" y1="0.6" x2="0.95" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.95" y1="0.6" x2="0.95" y2="-0.6" width="0.1016" layer="51"/>
<wire x1="0.95" y1="-0.6" x2="-0.95" y2="-0.6" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="-0.6" x2="-0.95" y2="0.6" width="0.1016" layer="51"/>
<smd name="1" x="-1.1" y="0" dx="1.2" dy="1.4" layer="1"/>
<smd name="2" x="1.1" y="0" dx="1.2" dy="1.4" layer="1"/>
<text x="-1.5" y="1" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.95" y1="-0.6" x2="-0.4" y2="0.6" layer="51"/>
<rectangle x1="0.4" y1="-0.6" x2="0.95" y2="0.6" layer="51" rot="R180"/>
</package>
<package name="CT/CN1206">
<description>&lt;b&gt;EPCOS SMD Varistors, MLV; Standard Series&lt;/b&gt;&lt;p&gt;
Source: www.farnell.com/datasheets/49238.pdf</description>
<wire x1="-1.65" y1="0.75" x2="1.65" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.65" y1="0.75" x2="1.65" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="1.65" y1="-0.75" x2="-1.65" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.65" y1="-0.75" x2="-1.65" y2="0.75" width="0.1016" layer="51"/>
<smd name="1" x="-1.65" y="0" dx="1.2" dy="1.8" layer="1"/>
<smd name="2" x="1.65" y="0" dx="1.2" dy="1.8" layer="1"/>
<text x="-2" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-2" y="-2.5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.65" y1="-0.75" x2="-0.95" y2="0.75" layer="51"/>
<rectangle x1="0.95" y1="-0.75" x2="1.65" y2="0.75" layer="51" rot="R180"/>
</package>
<package name="CT/CN1210">
<description>&lt;b&gt;EPCOS SMD Varistors, MLV; Standard Series&lt;/b&gt;&lt;p&gt;
Source: www.farnell.com/datasheets/49238.pdf</description>
<wire x1="-1.65" y1="1.25" x2="1.65" y2="1.25" width="0.1016" layer="51"/>
<wire x1="1.65" y1="1.25" x2="1.65" y2="-1.25" width="0.1016" layer="51"/>
<wire x1="1.65" y1="-1.25" x2="-1.65" y2="-1.25" width="0.1016" layer="51"/>
<wire x1="-1.65" y1="-1.25" x2="-1.65" y2="1.25" width="0.1016" layer="51"/>
<smd name="1" x="-1.65" y="0" dx="1.2" dy="2.8" layer="1"/>
<smd name="2" x="1.65" y="0" dx="1.2" dy="2.8" layer="1"/>
<text x="-2" y="1.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-2" y="-3" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.65" y1="-1.25" x2="-0.95" y2="1.25" layer="51"/>
<rectangle x1="0.95" y1="-1.25" x2="1.65" y2="1.25" layer="51" rot="R180"/>
</package>
<package name="CT/CN1812">
<description>&lt;b&gt;EPCOS SMD Varistors, MLV; Standard Series&lt;/b&gt;&lt;p&gt;
Source: www.farnell.com/datasheets/49238.pdf</description>
<wire x1="-2.35" y1="1.55" x2="2.35" y2="1.55" width="0.1016" layer="51"/>
<wire x1="2.35" y1="1.55" x2="2.35" y2="-1.55" width="0.1016" layer="51"/>
<wire x1="2.35" y1="-1.55" x2="-2.35" y2="-1.55" width="0.1016" layer="51"/>
<wire x1="-2.35" y1="-1.55" x2="-2.35" y2="1.55" width="0.1016" layer="51"/>
<smd name="1" x="-2.25" y="0" dx="1.5" dy="3.6" layer="1"/>
<smd name="2" x="2.25" y="0" dx="1.5" dy="3.6" layer="1"/>
<text x="-2.5" y="2.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.5" y="-3.5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.35" y1="-1.55" x2="-1.4" y2="1.55" layer="51"/>
<rectangle x1="1.4" y1="-1.55" x2="2.35" y2="1.55" layer="51" rot="R180"/>
</package>
<package name="CT/CN2220">
<description>&lt;b&gt;EPCOS SMD Varistors, MLV; Standard Series&lt;/b&gt;&lt;p&gt;
Source: www.farnell.com/datasheets/49238.pdf</description>
<wire x1="-2.95" y1="2.45" x2="2.95" y2="2.45" width="0.1016" layer="51"/>
<wire x1="2.95" y1="2.45" x2="2.95" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="2.95" y1="-2.45" x2="-2.95" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="-2.95" y1="-2.45" x2="-2.95" y2="2.45" width="0.1016" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="5.5" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="5.5" layer="1"/>
<text x="-3.5" y="3" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.5" y="-4.5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.95" y1="-2.45" x2="-2.01" y2="2.44" layer="51"/>
<rectangle x1="2.01" y1="-2.44" x2="2.95" y2="2.45" layer="51" rot="R180"/>
</package>
<package name="S05K11">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-0.762" y1="3.683" x2="0.762" y2="3.683" width="0.1524" layer="21"/>
<wire x1="1.778" y1="2.667" x2="1.778" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="2.667" x2="-1.778" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-3.683" x2="0.762" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.143" x2="-1.016" y2="2.032" width="0.0508" layer="21"/>
<wire x1="1.016" y1="-2.032" x2="1.016" y2="1.143" width="0.0508" layer="21"/>
<wire x1="0.762" y1="-3.683" x2="1.778" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.778" y1="2.667" x2="-0.762" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-2.667" x2="-0.762" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="3.683" x2="1.778" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.762" y1="0" x2="0.762" y2="1.143" width="0.0508" layer="21"/>
<wire x1="-0.762" y1="-1.143" x2="-0.762" y2="0" width="0.0508" layer="21"/>
<pad name="1" x="-0.635" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="0.635" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.032" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.302" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K17">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-0.889" y1="3.683" x2="0.889" y2="3.683" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.667" x2="1.905" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.667" x2="-1.905" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-3.683" x2="0.889" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-1.143" x2="-1.143" y2="2.032" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.032" x2="1.143" y2="1.143" width="0.0508" layer="21"/>
<wire x1="0.889" y1="-3.683" x2="1.905" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.905" y1="2.667" x2="-0.889" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.905" y1="-2.667" x2="-0.889" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="0.889" y1="3.683" x2="1.905" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.889" y1="0" x2="0.889" y2="1.143" width="0.0508" layer="21"/>
<wire x1="-0.889" y1="-1.143" x2="-0.889" y2="0" width="0.0508" layer="21"/>
<pad name="1" x="-0.762" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="0.762" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.286" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.556" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K175">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.143" y1="3.683" x2="1.143" y2="3.683" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.667" x2="2.159" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="2.667" x2="-2.159" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-3.683" x2="1.143" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="-1.143" x2="-1.397" y2="2.032" width="0.0508" layer="21"/>
<wire x1="1.27" y1="-2.032" x2="1.27" y2="1.143" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-3.683" x2="2.159" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.159" y1="2.667" x2="-1.143" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-2.667" x2="-1.143" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="1.143" y1="3.683" x2="2.159" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.016" y1="0" x2="1.016" y2="1.143" width="0.0508" layer="21"/>
<wire x1="-1.143" y1="-1.143" x2="-1.143" y2="0" width="0.0508" layer="21"/>
<pad name="1" x="-1.016" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.016" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.54" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K230">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.397" y1="3.683" x2="1.397" y2="3.683" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.667" x2="2.413" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.667" x2="-2.413" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="-3.683" x2="1.397" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.143" x2="-1.524" y2="2.032" width="0.0508" layer="21"/>
<wire x1="1.524" y1="-2.032" x2="1.524" y2="1.143" width="0.0508" layer="21"/>
<wire x1="1.397" y1="-3.683" x2="2.413" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="2.667" x2="-1.397" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="-2.667" x2="-1.397" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="1.397" y1="3.683" x2="2.413" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.27" y1="0" x2="1.27" y2="1.143" width="0.0508" layer="21"/>
<wire x1="-1.27" y1="-1.143" x2="-1.27" y2="0" width="0.0508" layer="21"/>
<pad name="1" x="-1.27" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.27" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.794" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.064" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K250">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.524" y1="3.683" x2="1.524" y2="3.683" width="0.1524" layer="21"/>
<wire x1="2.54" y1="2.667" x2="2.54" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="2.667" x2="-2.54" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-3.683" x2="1.524" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-1.143" x2="-1.651" y2="2.032" width="0.0508" layer="21"/>
<wire x1="1.651" y1="-2.032" x2="1.651" y2="1.143" width="0.0508" layer="21"/>
<wire x1="1.524" y1="-3.683" x2="2.54" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="2.667" x2="-1.524" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-2.667" x2="-1.524" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="3.683" x2="2.54" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.397" y1="0" x2="1.397" y2="1.143" width="0.0508" layer="21"/>
<wire x1="-1.397" y1="-1.143" x2="-1.397" y2="0" width="0.0508" layer="21"/>
<pad name="1" x="-1.397" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.397" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.921" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.191" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K275">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.651" y1="3.683" x2="1.651" y2="3.683" width="0.1524" layer="21"/>
<wire x1="2.667" y1="2.667" x2="2.667" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="2.667" x2="-2.667" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-3.683" x2="1.651" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-1.143" x2="-1.778" y2="2.032" width="0.0508" layer="21"/>
<wire x1="1.778" y1="-2.032" x2="1.778" y2="1.143" width="0.0508" layer="21"/>
<wire x1="1.651" y1="-3.683" x2="2.667" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.667" y1="2.667" x2="-1.651" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.667" y1="-2.667" x2="-1.651" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="3.683" x2="2.667" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.524" y1="0" x2="1.524" y2="1.143" width="0.0508" layer="21"/>
<wire x1="-1.524" y1="-1.143" x2="-1.524" y2="0" width="0.0508" layer="21"/>
<pad name="1" x="-1.524" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.524" y="2.54" drill="0.9144" shape="long"/>
<text x="-3.175" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.318" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K300">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.651" y1="3.683" x2="1.651" y2="3.683" width="0.1524" layer="21"/>
<wire x1="2.667" y1="2.667" x2="2.667" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="2.667" x2="-2.667" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-3.683" x2="1.651" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-1.143" x2="-1.778" y2="2.032" width="0.0508" layer="21"/>
<wire x1="1.778" y1="-2.032" x2="1.778" y2="1.143" width="0.0508" layer="21"/>
<wire x1="1.651" y1="-3.683" x2="2.667" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.667" y1="2.667" x2="-1.651" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.667" y1="-2.667" x2="-1.651" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="3.683" x2="2.667" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.524" y1="0" x2="1.524" y2="1.143" width="0.0508" layer="21"/>
<wire x1="-1.524" y1="-1.143" x2="-1.524" y2="0" width="0.0508" layer="21"/>
<pad name="1" x="-1.524" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.524" y="2.54" drill="0.9144" shape="long"/>
<text x="-3.175" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.318" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K385">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-2.159" y1="3.683" x2="2.159" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.667" x2="3.175" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.667" x2="-3.175" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-3.683" x2="2.159" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.143" x2="-2.286" y2="1.905" width="0.0508" layer="21"/>
<wire x1="2.286" y1="-1.905" x2="2.286" y2="1.143" width="0.0508" layer="21"/>
<wire x1="2.159" y1="-3.683" x2="3.175" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.175" y1="2.667" x2="-2.159" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-2.667" x2="-2.159" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="2.159" y1="3.683" x2="3.175" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.905" y1="-1.143" x2="-1.905" y2="0" width="0.0508" layer="21"/>
<wire x1="1.905" y1="0" x2="1.905" y2="1.143" width="0.0508" layer="21"/>
<pad name="1" x="-1.905" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.905" y="2.54" drill="0.9144" shape="long"/>
<text x="-3.556" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.826" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K40">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.143" y1="3.683" x2="1.143" y2="3.683" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.667" x2="2.159" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="2.667" x2="-2.159" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-3.683" x2="1.143" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="2.032" width="0.0508" layer="21"/>
<wire x1="1.27" y1="-2.032" x2="1.27" y2="1.27" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-3.683" x2="2.159" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.159" y1="2.667" x2="-1.143" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-2.667" x2="-1.143" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="1.143" y1="3.683" x2="2.159" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="-1.27" x2="-1.016" y2="0" width="0.0508" layer="21"/>
<wire x1="1.016" y1="0" x2="1.016" y2="1.27" width="0.0508" layer="21"/>
<pad name="1" x="-0.889" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="0.889" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.54" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K420">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-2.286" y1="3.683" x2="2.286" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.302" y1="2.667" x2="3.302" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="2.667" x2="-3.302" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-3.683" x2="2.286" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.143" x2="-2.54" y2="1.905" width="0.0508" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.143" width="0.0508" layer="21"/>
<wire x1="2.286" y1="-3.683" x2="3.302" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.302" y1="2.667" x2="-2.286" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.302" y1="-2.667" x2="-2.286" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="3.683" x2="3.302" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="0" x2="2.159" y2="1.143" width="0.0508" layer="21"/>
<wire x1="-2.159" y1="-1.143" x2="-2.159" y2="0" width="0.0508" layer="21"/>
<pad name="1" x="-2.159" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="2.159" y="2.54" drill="0.9144" shape="long"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.953" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K440">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-2.413" y1="3.683" x2="2.413" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.667" x2="3.429" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="2.667" x2="-3.429" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-3.683" x2="2.413" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-1.143" x2="-2.032" y2="0" width="0.0508" layer="21"/>
<wire x1="2.032" y1="0" x2="2.032" y2="1.143" width="0.0508" layer="21"/>
<wire x1="2.413" y1="-3.683" x2="3.429" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.429" y1="2.667" x2="-2.413" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.429" y1="-2.667" x2="-2.413" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="2.413" y1="3.683" x2="3.429" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="-1.905" x2="2.286" y2="1.143" width="0.0508" layer="21"/>
<wire x1="-2.286" y1="-1.143" x2="-2.286" y2="1.905" width="0.0508" layer="21"/>
<pad name="1" x="-2.286" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="2.286" y="2.54" drill="0.9144" shape="long"/>
<text x="-4.064" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.334" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S05K460">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-2.54" y1="3.683" x2="2.54" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.556" y1="2.667" x2="3.556" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="2.667" x2="-3.556" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.683" x2="2.54" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0.889" x2="-2.286" y2="1.905" width="0.0508" layer="21"/>
<wire x1="2.286" y1="-1.905" x2="2.286" y2="-0.889" width="0.0508" layer="21"/>
<wire x1="2.54" y1="-3.683" x2="3.556" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.556" y1="2.667" x2="-2.54" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.556" y1="-2.667" x2="-2.54" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="2.54" y1="3.683" x2="3.556" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-1.143" x2="-2.54" y2="1.905" width="0.0508" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.143" width="0.0508" layer="21"/>
<pad name="1" x="-2.413" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="2.413" y="2.54" drill="0.9144" shape="long"/>
<text x="-4.064" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.334" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K11">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-0.508" y1="4.572" x2="0.508" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.397" x2="-0.635" y2="2.54" width="0.0508" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0.635" y2="1.397" width="0.0508" layer="21"/>
<wire x1="0.381" y1="-1.905" x2="0.381" y2="0" width="0.0508" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.381" y2="1.905" width="0.0508" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.635" x2="-1.778" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-1.524" x2="-1.143" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="1.143" y1="1.524" x2="1.143" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.143" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-2.413" x2="-1.143" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="1.143" y1="3.048" x2="1.778" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="1.143" y1="-1.27" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.143" y1="-3.937" x2="1.143" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-1.524" x2="-1.143" y2="3.937" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-4.572" x2="1.143" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.143" y1="-3.937" x2="-0.508" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.143" y1="3.937" x2="-0.508" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="4.572" x2="1.143" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.508" y1="-4.572" x2="0.508" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="1.143" y1="3.556" x2="1.143" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-3.937" x2="-1.143" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-0.635" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="0.635" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.032" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.429" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K17">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-0.635" y1="4.572" x2="0.635" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.397" x2="-0.762" y2="2.54" width="0.0508" layer="21"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="1.397" width="0.0508" layer="21"/>
<wire x1="0.508" y1="-2.54" x2="0.508" y2="0" width="0.0508" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="2.54" width="0.0508" layer="21"/>
<wire x1="1.905" y1="-0.635" x2="1.905" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0.635" x2="-1.905" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.524" x2="-1.27" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.524" x2="1.27" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="0.635" x2="-1.27" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.905" y1="-2.413" x2="-1.27" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="1.27" y1="3.048" x2="1.905" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="1.27" y1="-1.27" x2="1.905" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="-3.937" x2="1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.524" x2="-1.27" y2="3.937" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-4.572" x2="1.27" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.27" y1="-3.937" x2="-0.635" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.27" y1="3.937" x2="-0.635" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.635" y1="4.572" x2="1.27" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.635" y1="-4.572" x2="0.635" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.556" x2="1.27" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.937" x2="-1.27" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-0.762" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="0.762" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.286" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.556" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K175">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-0.889" y1="4.572" x2="0.889" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.397" x2="-1.016" y2="2.54" width="0.0508" layer="21"/>
<wire x1="1.016" y1="-2.54" x2="1.016" y2="1.397" width="0.0508" layer="21"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="0" width="0.0508" layer="21"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="2.54" width="0.0508" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-2.159" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.524" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-2.413" x2="-1.524" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="1.524" y1="3.048" x2="2.159" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="1.524" y1="-1.27" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-3.937" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="3.937" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-4.572" x2="1.524" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.524" y1="-3.937" x2="-0.889" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.524" y1="3.937" x2="-0.889" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.889" y1="4.572" x2="1.524" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.889" y1="-4.572" x2="0.889" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="1.524" y1="3.556" x2="1.524" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-3.937" x2="-1.524" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-1.016" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.016" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.54" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.81" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K230">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.143" y1="4.572" x2="1.143" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.397" x2="-1.27" y2="2.54" width="0.0508" layer="21"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="1.397" width="0.0508" layer="21"/>
<wire x1="1.016" y1="-2.54" x2="1.016" y2="0" width="0.0508" layer="21"/>
<wire x1="-1.016" y1="0" x2="-1.016" y2="2.54" width="0.0508" layer="21"/>
<wire x1="2.413" y1="-0.635" x2="2.413" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="0.635" x2="-2.413" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-1.524" x2="-1.778" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.524" x2="1.778" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="0.635" x2="-1.778" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="-2.413" x2="-1.778" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="1.778" y1="3.048" x2="2.413" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="1.778" y1="-1.27" x2="2.413" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.778" y1="-3.937" x2="1.778" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-1.524" x2="-1.778" y2="3.937" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-4.572" x2="1.778" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.778" y1="-3.937" x2="-1.143" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.778" y1="3.937" x2="-1.143" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.143" y1="4.572" x2="1.778" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.143" y1="-4.572" x2="1.143" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="1.778" y1="3.556" x2="1.778" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-3.937" x2="-1.778" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.27" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.794" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.064" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K250">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.27" y1="4.572" x2="1.27" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="-1.397" x2="-1.397" y2="2.54" width="0.0508" layer="21"/>
<wire x1="1.397" y1="-2.54" x2="1.397" y2="1.397" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.54" x2="1.143" y2="0" width="0.0508" layer="21"/>
<wire x1="-1.143" y1="0" x2="-1.143" y2="2.54" width="0.0508" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="2.54" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.524" x2="-1.905" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="1.905" y1="1.524" x2="1.905" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-2.413" x2="-1.905" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="1.905" y1="3.048" x2="2.54" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.905" y1="-3.937" x2="1.905" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.524" x2="-1.905" y2="3.937" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-4.572" x2="1.905" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.905" y1="-3.937" x2="-1.27" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.905" y1="3.937" x2="-1.27" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.27" y1="4.572" x2="1.905" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-4.572" x2="1.27" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="1.905" y1="3.556" x2="1.905" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-3.937" x2="-1.905" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-1.397" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.397" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.921" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.191" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K275">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.397" y1="4.572" x2="1.397" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.397" x2="-1.524" y2="2.54" width="0.0508" layer="21"/>
<wire x1="1.524" y1="-2.54" x2="1.524" y2="1.397" width="0.0508" layer="21"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="0" width="0.0508" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="2.54" width="0.0508" layer="21"/>
<wire x1="2.667" y1="-0.635" x2="2.667" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0.635" x2="-2.667" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-1.524" x2="-2.032" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="2.032" y1="1.524" x2="2.032" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="0.635" x2="-2.032" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.667" y1="-2.413" x2="-2.032" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="2.032" y1="3.048" x2="2.667" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="2.032" y1="-1.27" x2="2.667" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-3.937" x2="2.032" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-1.524" x2="-2.032" y2="3.937" width="0.1524" layer="21"/>
<wire x1="1.397" y1="-4.572" x2="2.032" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.032" y1="-3.937" x2="-1.397" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.032" y1="3.937" x2="-1.397" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.397" y1="4.572" x2="2.032" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.397" y1="-4.572" x2="1.397" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="2.032" y1="3.556" x2="2.032" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-3.937" x2="-2.032" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-1.524" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.524" y="2.54" drill="0.9144" shape="long"/>
<text x="-3.048" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.318" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K385">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-1.905" y1="4.572" x2="1.905" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-1.397" x2="-2.032" y2="2.54" width="0.0508" layer="21"/>
<wire x1="2.032" y1="-2.54" x2="2.032" y2="1.397" width="0.0508" layer="21"/>
<wire x1="1.778" y1="-2.54" x2="1.778" y2="0" width="0.0508" layer="21"/>
<wire x1="-1.778" y1="0" x2="-1.778" y2="2.54" width="0.0508" layer="21"/>
<wire x1="3.175" y1="-0.635" x2="3.175" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0.635" x2="-3.175" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.524" x2="-2.54" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="2.54" y1="1.524" x2="2.54" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-3.175" y1="0.635" x2="-2.54" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-2.413" x2="-2.54" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="2.54" y1="3.048" x2="3.175" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="2.54" y1="-1.27" x2="3.175" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="2.54" y1="-3.937" x2="2.54" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.524" x2="-2.54" y2="3.937" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-4.572" x2="2.54" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="-3.937" x2="-1.905" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="3.937" x2="-1.905" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.905" y1="4.572" x2="2.54" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.905" y1="-4.572" x2="1.905" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="2.54" y1="3.556" x2="2.54" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.937" x2="-2.54" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-1.905" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="1.905" y="2.54" drill="0.9144" shape="long"/>
<text x="-3.556" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.826" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K40">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-0.762" y1="4.572" x2="0.762" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.397" x2="-0.889" y2="2.54" width="0.0508" layer="21"/>
<wire x1="0.889" y1="-2.54" x2="0.889" y2="1.397" width="0.0508" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0.635" y2="0" width="0.0508" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="2.54" width="0.0508" layer="21"/>
<wire x1="2.032" y1="-0.635" x2="2.032" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="0.635" x2="-2.032" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="-1.524" x2="-1.397" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="1.397" y1="1.524" x2="1.397" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="0.635" x2="-1.397" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.032" y1="-2.413" x2="-1.397" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="1.397" y1="3.048" x2="2.032" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="1.397" y1="-1.27" x2="2.032" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.397" y1="-3.937" x2="1.397" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="-1.524" x2="-1.397" y2="3.937" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-4.572" x2="1.397" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.397" y1="-3.937" x2="-0.762" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.397" y1="3.937" x2="-0.762" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.762" y1="4.572" x2="1.397" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.762" y1="-4.572" x2="0.762" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="1.397" y1="3.556" x2="1.397" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="-3.937" x2="-1.397" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-0.889" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="0.889" y="2.54" drill="0.9144" shape="long"/>
<text x="-2.413" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.683" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K420">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-2.032" y1="4.572" x2="2.032" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-1.397" x2="-2.159" y2="2.54" width="0.0508" layer="21"/>
<wire x1="2.159" y1="-2.54" x2="2.159" y2="1.397" width="0.0508" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="1.905" y2="0" width="0.0508" layer="21"/>
<wire x1="-1.905" y1="0" x2="-1.905" y2="2.54" width="0.0508" layer="21"/>
<wire x1="3.302" y1="-0.635" x2="3.302" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.635" x2="-3.302" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-1.524" x2="-2.667" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="2.667" y1="1.524" x2="2.667" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.635" x2="-2.667" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.302" y1="-2.413" x2="-2.667" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="2.667" y1="3.048" x2="3.302" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="2.667" y1="-1.27" x2="3.302" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="2.667" y1="-3.937" x2="2.667" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-1.524" x2="-2.667" y2="3.937" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-4.572" x2="2.667" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.667" y1="-3.937" x2="-2.032" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.667" y1="3.937" x2="-2.032" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.032" y1="4.572" x2="2.667" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.032" y1="-4.572" x2="2.032" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="2.667" y1="3.556" x2="2.667" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-3.937" x2="-2.667" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-2.159" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="2.159" y="2.54" drill="0.9144" shape="long"/>
<text x="-3.683" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.953" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K440">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-2.159" y1="4.572" x2="2.159" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.397" x2="-2.286" y2="2.54" width="0.0508" layer="21"/>
<wire x1="2.286" y1="-2.54" x2="2.286" y2="1.397" width="0.0508" layer="21"/>
<wire x1="2.032" y1="-2.54" x2="2.032" y2="0" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="0" x2="-2.032" y2="2.54" width="0.0508" layer="21"/>
<wire x1="3.429" y1="-0.635" x2="3.429" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="0.635" x2="-3.429" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-1.524" x2="-2.794" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="2.794" y1="1.524" x2="2.794" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="0.635" x2="-2.794" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.429" y1="-2.413" x2="-2.794" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="2.794" y1="3.048" x2="3.429" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="2.794" y1="-1.27" x2="3.429" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="-3.937" x2="2.794" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-1.524" x2="-2.794" y2="3.937" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-4.572" x2="2.794" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.794" y1="-3.937" x2="-2.159" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.794" y1="3.937" x2="-2.159" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="4.572" x2="2.794" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-4.572" x2="2.159" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="2.794" y1="3.556" x2="2.794" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-3.937" x2="-2.794" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-2.286" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="2.286" y="2.54" drill="0.9144" shape="long"/>
<text x="-3.81" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.08" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="S07K460">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<wire x1="-2.286" y1="4.572" x2="2.286" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.397" x2="-2.413" y2="2.54" width="0.0508" layer="21"/>
<wire x1="2.413" y1="-2.54" x2="2.413" y2="1.397" width="0.0508" layer="21"/>
<wire x1="2.159" y1="-2.54" x2="2.159" y2="0" width="0.0508" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="2.54" width="0.0508" layer="21"/>
<wire x1="3.556" y1="-0.635" x2="3.556" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0.635" x2="-3.556" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.524" x2="-2.921" y2="-3.556" width="0.1524" layer="51"/>
<wire x1="2.921" y1="1.524" x2="2.921" y2="3.556" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="0.635" x2="-2.921" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.556" y1="-2.413" x2="-2.921" y2="-3.048" width="0.1524" layer="51" curve="90"/>
<wire x1="2.921" y1="3.048" x2="3.556" y2="2.413" width="0.1524" layer="51" curve="-90"/>
<wire x1="2.921" y1="-1.27" x2="3.556" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-3.937" x2="2.921" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.524" x2="-2.921" y2="3.937" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-4.572" x2="2.921" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.921" y1="-3.937" x2="-2.286" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.921" y1="3.937" x2="-2.286" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="4.572" x2="2.921" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-4.572" x2="2.286" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="2.921" y1="3.556" x2="2.921" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-3.937" x2="-2.921" y2="-3.556" width="0.1524" layer="21"/>
<pad name="1" x="-2.413" y="-2.54" drill="0.9144" shape="long"/>
<pad name="2" x="2.413" y="2.54" drill="0.9144" shape="long"/>
<text x="-3.937" y="-4.064" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.207" y="-4.064" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="CU3225K">
<description>&lt;b&gt;SMD Varistors Monolithic; Standard Series&lt;/b&gt;&lt;p&gt;
Source: www.epcos.com .. 01430148.pdf</description>
<wire x1="-3.5" y1="3.05" x2="3.5" y2="3.05" width="0.2032" layer="21"/>
<wire x1="3.5" y1="3.05" x2="3.5" y2="-3.05" width="0.2032" layer="51"/>
<wire x1="3.5" y1="-3.05" x2="-3.5" y2="-3.05" width="0.2032" layer="21"/>
<wire x1="-3.5" y1="-3.05" x2="-3.5" y2="3.05" width="0.2032" layer="51"/>
<wire x1="-3.5" y1="-3.05" x2="-3.5" y2="-1.95" width="0.2032" layer="21"/>
<wire x1="3.5" y1="-1.95" x2="3.5" y2="-3.05" width="0.2032" layer="21"/>
<wire x1="3.5" y1="3.05" x2="3.5" y2="1.95" width="0.2032" layer="21"/>
<wire x1="-3.5" y1="1.95" x2="-3.5" y2="3.05" width="0.2032" layer="21"/>
<smd name="1" x="-3.65" y="0" dx="2.8" dy="3.5" layer="1"/>
<smd name="2" x="3.65" y="0" dx="2.8" dy="3.5" layer="1"/>
<text x="-3.5" y="3.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.5" y="-5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4" y1="-1.5" x2="-3.6" y2="1.5" layer="51"/>
<rectangle x1="3.6" y1="-1.5" x2="4" y2="1.5" layer="51" rot="R180"/>
</package>
<package name="CU4032K">
<description>&lt;b&gt;SMD Varistors Monolithic; Standard Series&lt;/b&gt;&lt;p&gt;
Source: www.epcos.com .. 01430148.pdf</description>
<wire x1="-4.55" y1="3.9" x2="4.55" y2="3.9" width="0.2032" layer="21"/>
<wire x1="4.55" y1="3.9" x2="4.55" y2="-3.9" width="0.2032" layer="51"/>
<wire x1="4.55" y1="-3.9" x2="-4.55" y2="-3.9" width="0.2032" layer="21"/>
<wire x1="-4.55" y1="-3.9" x2="-4.55" y2="3.9" width="0.2032" layer="51"/>
<wire x1="-4.55" y1="-3.9" x2="-4.55" y2="-1.95" width="0.2032" layer="21"/>
<wire x1="4.55" y1="-1.95" x2="4.55" y2="-3.9" width="0.2032" layer="21"/>
<wire x1="4.55" y1="3.9" x2="4.55" y2="1.95" width="0.2032" layer="21"/>
<wire x1="-4.55" y1="1.95" x2="-4.55" y2="3.9" width="0.2032" layer="21"/>
<smd name="1" x="-4.65" y="0" dx="2.8" dy="3.5" layer="1"/>
<smd name="2" x="4.65" y="0" dx="2.8" dy="3.5" layer="1"/>
<text x="-4.55" y="4.35" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.55" y="-5.85" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.05" y1="-1.5" x2="-4.65" y2="1.5" layer="51"/>
<rectangle x1="4.65" y1="-1.5" x2="5.05" y2="1.5" layer="51" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="VARISTOR">
<wire x1="2.54" y1="1.016" x2="2.54" y2="-1.016" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.016" x2="-2.54" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.016" x2="-2.54" y2="1.016" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.016" x2="2.54" y2="1.016" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.032" x2="2.032" y2="-2.032" width="0.254" layer="94"/>
<wire x1="-2.032" y1="2.032" x2="-2.54" y2="2.032" width="0.254" layer="94"/>
<wire x1="2.032" y1="-2.032" x2="-2.032" y2="2.032" width="0.254" layer="94"/>
<text x="-2.54" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VARISTOR" prefix="R">
<description>&lt;b&gt;VARISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VARISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="-2,5" package="R-5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-7,5" package="R-7,5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-5" package="R-5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CN0402" package="CT/CN0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CN0603" package="CT/CN0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CN0805" package="CT/CN0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CN1206" package="CT/CN1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CN1210" package="CT/CN1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CN1812" package="CT/CN1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CN2220" package="CT/CN2220">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K11" package="S05K11">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K17" package="S05K17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K175" package="S05K175">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K230" package="S05K230">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K250" package="S05K250">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K275" package="S05K275">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K300" package="S05K300">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K385" package="S05K385">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K40" package="S05K40">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K420" package="S05K420">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K440" package="S05K440">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S05K460" package="S05K460">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K11" package="S07K11">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K17" package="S07K17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K175" package="S07K175">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K230" package="S07K230">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K250" package="S07K250">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K275" package="S07K275">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K285" package="S07K385">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K40" package="S07K40">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K420" package="S07K420">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K440" package="S07K440">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S07K460" package="S07K460">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CU3225K" package="CU3225K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CU4032K" package="CU4032K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0.127" drill="0">
<clearance class="0" value="0.127"/>
</class>
<class number="1" name="2.5oz" width="0.3302" drill="0">
<clearance class="1" value="0.3302"/>
</class>
</classes>
<parts>
<part name="5V-4A" library="jne" deviceset="LT8614XUDC" device="LT8614XUDC"/>
<part name="MCU" library="dubec" deviceset="ATTINY13" device="10M1"/>
<part name="RELAY" library="jne" deviceset="IM03DGR" device="GW"/>
<part name="12V-1A4" library="jne" deviceset="LTC3115XDHD-1" device=""/>
<part name="DC_C1" library="jne" deviceset="CAP" device="C0805" value="22uF"/>
<part name="5V_C2" library="jne" deviceset="CAP" device="C0603" value="4.7uF"/>
<part name="5V_L2" library="jne" deviceset="IND" device="I2525Z" value="6.8uH"/>
<part name="5V_FB1" library="jne" deviceset="BEAD" device="B0805"/>
<part name="5V_C3" library="jne" deviceset="CAP" device="C0805" value="10uF"/>
<part name="5V_CIN1" library="jne" deviceset="CAP" device="C0402" value="1uF"/>
<part name="5V_CIN2" library="jne" deviceset="CAP" device="C0402" value="1uF"/>
<part name="DC_C2" library="jne" deviceset="CAP" device="0805NUDE" value="22uF"/>
<part name="12V_CBST1" library="jne" deviceset="CAP" device="C0402" value="0.1uF"/>
<part name="12V_CBST2" library="jne" deviceset="CAP" device="C0402" value="0.1uF"/>
<part name="12V_L1" library="jne" deviceset="IND" device="I2020Z" value="10uH"/>
<part name="12V_C3" library="jne" deviceset="CAP" device="C0805" value="4.7uF"/>
<part name="12V_RT" library="jne" deviceset="RES" device="R0402" value="35.7kOhm"/>
<part name="12V_RBOT" library="jne" deviceset="RES" device="R0402" value="90.9kOhm"/>
<part name="12V_RFF" library="jne" deviceset="RES" device="R0402" value="10kOhm"/>
<part name="12V_CFF" library="jne" deviceset="CAP" device="C0402" value="33pF"/>
<part name="12V_RFB" library="jne" deviceset="RES" device="R0402" value="40.2kOhm"/>
<part name="12V_CFB" library="jne" deviceset="CAP" device="C0402" value="820pF"/>
<part name="12V_RTOP" library="jne" deviceset="RES" device="R0402" value="1MOhm"/>
<part name="12V_CO" library="jne" deviceset="CAP" device="C1206" value="22uF"/>
<part name="12V_CIN" library="jne" deviceset="CAP" device="C0402" value="0.1uF"/>
<part name="5V_L1" library="dubec" deviceset="IND" device="I2525Z" value="2.2uH"/>
<part name="5V_CBST" library="jne" deviceset="CAP" device="C0402" value="0.1uF"/>
<part name="5V_CVCC" library="jne" deviceset="CAP" device="C0402" value="1uF"/>
<part name="5V_R2A" library="jne" deviceset="RES" device="R0402" value="RESR0402"/>
<part name="5V_R2B" library="jne" deviceset="RES" device="R0402" value="121kOhm"/>
<part name="5V_CBIAS" library="dubec" deviceset="CAP" device="0402" value="4.7pF"/>
<part name="5V_R1" library="jne" deviceset="RES" device="R0402" value="1MOhm"/>
<part name="5V_CSS" library="jne" deviceset="CAP" device="C0402" value="10nF"/>
<part name="5V_RT" library="jne" deviceset="RES" device="R0402" value="18.2kOhm"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="35V_NO" library="supply1" deviceset="V+" device=""/>
<part name="35V_NC" library="supply1" deviceset="V+" device=""/>
<part name="LED_5V" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="35V_NO1" library="supply1" deviceset="V+" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="LED_12V" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="LED_AUX" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="R_LED_AUX" library="dubec" deviceset="RES" device="0402" value="324Ohm"/>
<part name="R_LED_12V" library="jne" deviceset="RES" device="R0402" value="2.2kOhm"/>
<part name="R_LED_5V" library="jne" deviceset="RES" device="R0402" value="470Ohm"/>
<part name="U$1" library="dubec" deviceset="AVRISP" device="PIN3X2" value="AVRISPPIN3X2"/>
<part name="D5V_ISP" library="dubec" deviceset="SCH_DIODE" device=""/>
<part name="TR_RELAY" library="dubec" deviceset="TR_NPN" device=""/>
<part name="D_RELAY" library="dubec" deviceset="SCH_DIODE" device=""/>
<part name="D12V" library="dubec" deviceset="SCH_DIODE" device=""/>
<part name="R_DIV_1" library="dubec" deviceset="RES" device="0402" value="15kOhm"/>
<part name="R_DIV_2" library="dubec" deviceset="RES" device="0402" value="2.5kOhm"/>
<part name="ZD_DIV" library="dubec" deviceset="Z-DIODE" device="0503" value="5.1V"/>
<part name="5V_COUT" library="dubec" deviceset="CAP" device="1210"/>
<part name="MCU_C" library="dubec" deviceset="CAP" device="0402"/>
<part name="R1" library="varistor" deviceset="VARISTOR" device="CN0805"/>
<part name="D5V" library="dubec" deviceset="SCH_DIODE" device=""/>
<part name="R2" library="dubec" deviceset="RES" device="0402" value="220"/>
<part name="U$2" library="dubec" deviceset="RCHDR" device=""/>
<part name="U$3" library="dubec" deviceset="PIN1" device=""/>
<part name="U$4" library="dubec" deviceset="PIN1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-187.96" y="13.97" size="1.778" layer="97">BOM:

R1 = AVR-M2012C390KT6AB
MCU = ATTINY13A-MMF
MCU_C = CL05A106MP5NUNC
DC_C1, DC_C2, 12V_CO = C2012X5R1V226M125AC
5V_C2 = C1608JB1V475K080AC
5V_CBIAS = GRM1555C1E4R7BA01D
5V_FB1 = 742792012
5V_L2 = IHLP2525CZER6R8M01
5V_C3 = C2012JB1V106K085AC
5V_CIN1, 5V_CIN2 = C1005JB1V105K050BC
5V_L1 = IHLP2525CZER2R2M01 [0420CDMCBDS-2R2MC]
5V_R2 = 2x TNPW0402121RBEED
5V_CSS = CGA2B3X7R1V103K050BB
5V_RT = 5-1879215-9
5V_COUT = GRM32ER70J476KE20L
12V_CBST1, 12V_CBST2, 12V_CIN = UMK105B7104KV-FR
12V_L1 = IHLP2020CZER100M01
12V_RT = TNPW040235K7BEED
12V_RBOT = TNPW040290K9BEED
12V_RFF = MCS0402MD1002BE100
12V_CFF = C0402C330F5GACTU
12V_CFB = VJ0402Y821KNAAJ
12V_RTOP = CRCW04021M00DHEDP
12V_CO = CL31X226KOHN3NE
12V_RFB = 1-1879213-9
D12V, D5V = CDBQR40
LED_12V, LED_5V, LED_AUX = LTST-C193TGKT-5A
R_LED_AUX = CRCW0402324RFKEDHP
R_LED_5V = CRCW0402470RJNEDHP
R_LED_12V = CRCW04022K20JNEDHP
D5V_ISP, D_RELAY = CDBQR0130L
TR_RELAY = 2DC4617QLP-7
CAP_5V = PHB-5R0H155-R
AVRISP = M22-2520305
R_DIV_1 = MCS0402MD1502BE100
R_DIV_2 = MCS0402MD2491BE100
ZD_DIV = CZRER52C5V1
</text>
<text x="-121.92" y="27.94" size="1.778" layer="91">NOTE: ATtiny10 output
high voltage “min. 4.3V”.
Should be enough for
relay and LED, though.</text>
<wire x1="114.3" y1="114.3" x2="129.54" y2="114.3" width="0.1524" layer="94"/>
<wire x1="129.54" y1="114.3" x2="129.54" y2="83.82" width="0.1524" layer="94"/>
<wire x1="129.54" y1="83.82" x2="114.3" y2="83.82" width="0.1524" layer="94"/>
<wire x1="114.3" y1="83.82" x2="114.3" y2="114.3" width="0.1524" layer="94"/>
</plain>
<instances>
<instance part="5V-4A" gate="G$1" x="71.12" y="50.8"/>
<instance part="MCU" gate="G$1" x="-40.64" y="45.72" rot="R180"/>
<instance part="RELAY" gate="G$1" x="-91.44" y="-12.7" rot="R180"/>
<instance part="12V-1A4" gate="G$1" x="53.34" y="-45.72"/>
<instance part="DC_C1" gate="G$1" x="-33.02" y="-17.78"/>
<instance part="5V_C2" gate="G$1" x="27.94" y="53.34"/>
<instance part="5V_L2" gate="G$1" x="17.78" y="55.88"/>
<instance part="5V_FB1" gate="G$1" x="2.54" y="55.88"/>
<instance part="5V_C3" gate="G$1" x="7.62" y="53.34"/>
<instance part="5V_CIN1" gate="G$1" x="45.72" y="68.58"/>
<instance part="5V_CIN2" gate="G$1" x="45.72" y="33.02" rot="R180"/>
<instance part="DC_C2" gate="G$1" x="-25.4" y="-17.78"/>
<instance part="12V_CBST1" gate="G$1" x="73.66" y="-17.78" rot="R180"/>
<instance part="12V_CBST2" gate="G$1" x="35.56" y="-17.78" rot="R180"/>
<instance part="12V_L1" gate="G$1" x="53.34" y="-12.7"/>
<instance part="12V_C3" gate="G$1" x="81.28" y="-55.88" rot="R90"/>
<instance part="12V_RT" gate="G$1" x="35.56" y="-68.58" rot="R270"/>
<instance part="12V_RBOT" gate="G$1" x="25.4" y="-45.72" rot="R180"/>
<instance part="12V_RFF" gate="G$1" x="10.16" y="-45.72" rot="R180"/>
<instance part="12V_CFF" gate="G$1" x="5.08" y="-35.56"/>
<instance part="12V_RFB" gate="G$1" x="30.48" y="-53.34" rot="R180"/>
<instance part="12V_CFB" gate="G$1" x="17.78" y="-50.8"/>
<instance part="12V_RTOP" gate="G$1" x="17.78" y="-38.1" rot="R270"/>
<instance part="12V_CO" gate="G$1" x="27.94" y="-33.02" rot="R180"/>
<instance part="12V_CIN" gate="G$1" x="81.28" y="-38.1" rot="R90"/>
<instance part="5V_L1" gate="G$1" x="81.28" y="91.44"/>
<instance part="5V_CBST" gate="G$1" x="63.5" y="81.28" rot="R270"/>
<instance part="5V_CVCC" gate="G$1" x="73.66" y="81.28" rot="R270"/>
<instance part="5V_R2A" gate="G$1" x="46.99" y="91.44"/>
<instance part="5V_R2B" gate="G$1" x="59.69" y="91.44"/>
<instance part="5V_CBIAS" gate="G$1" x="96.52" y="73.66"/>
<instance part="5V_R1" gate="G$1" x="105.41" y="73.66" rot="R90"/>
<instance part="5V_CSS" gate="G$1" x="83.82" y="20.32"/>
<instance part="5V_RT" gate="G$1" x="76.2" y="17.78" rot="R90"/>
<instance part="GND1" gate="1" x="-114.3" y="-17.78" rot="R270"/>
<instance part="35V_NO" gate="1" x="-71.12" y="-20.32" rot="R270"/>
<instance part="35V_NC" gate="1" x="-71.12" y="-15.24" rot="R270"/>
<instance part="LED_5V" gate="G$1" x="109.22" y="48.26"/>
<instance part="35V_NO1" gate="1" x="-71.12" y="-17.78" rot="R270"/>
<instance part="GND2" gate="1" x="-111.76" y="-12.7" rot="R270"/>
<instance part="GND3" gate="1" x="-111.76" y="-22.86" rot="R270"/>
<instance part="LED_12V" gate="G$1" x="20.32" y="-12.7" rot="R180"/>
<instance part="LED_AUX" gate="G$1" x="-67.31" y="29.21"/>
<instance part="R_LED_AUX" gate="G$1" x="-67.31" y="40.64" rot="R90"/>
<instance part="R_LED_12V" gate="G$1" x="25.4" y="-22.86" rot="R180"/>
<instance part="R_LED_5V" gate="G$1" x="109.22" y="60.96" rot="R270"/>
<instance part="U$1" gate="G$1" x="-40.64" y="88.9"/>
<instance part="D5V_ISP" gate="G$1" x="-50.8" y="27.94" rot="R90"/>
<instance part="TR_RELAY" gate="G$1" x="-106.68" y="5.08"/>
<instance part="D_RELAY" gate="G$1" x="-91.44" y="5.08" rot="R180"/>
<instance part="D12V" gate="G$1" x="7.62" y="-25.4"/>
<instance part="R_DIV_1" gate="G$1" x="-40.64" y="-5.08"/>
<instance part="R_DIV_2" gate="G$1" x="-40.64" y="2.54"/>
<instance part="ZD_DIV" gate="G$1" x="-22.86" y="0" rot="R180"/>
<instance part="5V_COUT" gate="G$1" x="88.9" y="96.52" rot="R180"/>
<instance part="MCU_C" gate="G$1" x="-58.42" y="35.56"/>
<instance part="R1" gate="G$1" x="-66.04" y="-22.86" rot="R90"/>
<instance part="D5V" gate="G$1" x="96.52" y="96.52" rot="R270"/>
<instance part="R2" gate="G$1" x="-86.36" y="43.18"/>
<instance part="U$2" gate="G$1" x="2.54" y="99.06" rot="R90"/>
<instance part="U$3" gate="G$1" x="116.84" y="106.68"/>
<instance part="U$4" gate="G$1" x="116.84" y="91.44"/>
</instances>
<busses>
</busses>
<nets>
<net name="35V" class="1">
<segment>
<pinref part="5V_L2" gate="G$1" pin="1"/>
<wire x1="7.62" y1="55.88" x2="10.16" y2="55.88" width="0.1524" layer="91"/>
<pinref part="5V_C3" gate="G$1" pin="V+"/>
<pinref part="5V_FB1" gate="G$1" pin="2"/>
<wire x1="5.08" y1="55.88" x2="7.62" y2="55.88" width="0.1524" layer="91"/>
<junction x="7.62" y="55.88"/>
</segment>
<segment>
<pinref part="DC_C1" gate="G$1" pin="V+"/>
<pinref part="DC_C2" gate="G$1" pin="V+"/>
<wire x1="-33.02" y1="-15.24" x2="-25.4" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="5V_FB1" gate="G$1" pin="1"/>
<wire x1="-25.4" y1="-15.24" x2="-2.54" y2="55.88" width="0.1524" layer="91"/>
<junction x="-25.4" y="-15.24"/>
<wire x1="-25.4" y1="-15.24" x2="53.34" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="12V-1A4" gate="G$1" pin="PVIN"/>
<wire x1="53.34" y1="-20.32" x2="60.96" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-35.56" x2="68.58" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="12V-1A4" gate="G$1" pin="RUN"/>
<wire x1="38.1" y1="-27.94" x2="53.34" y2="-20.32" width="0.1524" layer="91"/>
<junction x="53.34" y="-20.32"/>
<pinref part="12V_CIN" gate="G$1" pin="V+"/>
<pinref part="12V-1A4" gate="G$1" pin="VIN"/>
<wire x1="78.74" y1="-38.1" x2="68.58" y2="-38.1" width="0.1524" layer="91"/>
<junction x="68.58" y="-38.1"/>
<pinref part="RELAY" gate="G$1" pin="CO_2"/>
<wire x1="-78.74" y1="-17.78" x2="-66.04" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-17.78" x2="-46.99" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-46.99" y1="-15.24" x2="-33.02" y2="-15.24" width="0.1524" layer="91"/>
<junction x="-33.02" y="-15.24"/>
<pinref part="35V_NO1" gate="1" pin="V+"/>
<wire x1="-73.66" y1="-17.78" x2="-78.74" y2="-17.78" width="0.1524" layer="91"/>
<junction x="-78.74" y="-17.78"/>
<wire x1="68.58" y1="-58.42" x2="53.34" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-48.26" x2="53.34" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="R_DIV_1" gate="G$1" pin="1"/>
<wire x1="-46.99" y1="-15.24" x2="-45.72" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-46.99" y="-15.24"/>
<pinref part="R1" gate="G$1" pin="1"/>
<junction x="-66.04" y="-17.78"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="5V_R2A" gate="G$1" pin="GND"/>
<pinref part="5V_R2B" gate="G$1" pin="1"/>
<wire x1="52.07" y1="91.44" x2="54.61" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="5V_R2B" gate="G$1" pin="GND"/>
<pinref part="5V_CBIAS" gate="G$1" pin="GND"/>
<wire x1="64.77" y1="91.44" x2="96.52" y2="68.58" width="0.1524" layer="91"/>
<pinref part="5V-4A" gate="G$1" pin="FB"/>
<wire x1="96.52" y1="68.58" x2="96.52" y2="63.5" width="0.1524" layer="91"/>
<junction x="96.52" y="68.58"/>
<pinref part="5V_R1" gate="G$1" pin="1"/>
<wire x1="96.52" y1="68.58" x2="105.41" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="5V_RT" gate="G$1" pin="GND"/>
<pinref part="5V-4A" gate="G$1" pin="RT"/>
<wire x1="76.2" y1="22.86" x2="76.2" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="5V_CSS" gate="G$1" pin="V+"/>
<pinref part="5V-4A" gate="G$1" pin="TR/SS"/>
<wire x1="83.82" y1="22.86" x2="83.82" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V" class="1">
<segment>
<pinref part="5V_CBIAS" gate="G$1" pin="V+"/>
<pinref part="5V-4A" gate="G$1" pin="BIAS"/>
<wire x1="96.52" y1="76.2" x2="83.82" y2="76.2" width="0.1524" layer="91"/>
<pinref part="5V_L1" gate="G$1" pin="2"/>
<wire x1="88.9" y1="91.44" x2="96.52" y2="76.2" width="0.1524" layer="91"/>
<junction x="96.52" y="76.2"/>
<pinref part="5V_R1" gate="G$1" pin="GND"/>
<wire x1="96.52" y1="76.2" x2="105.41" y2="78.74" width="0.1524" layer="91"/>
<junction x="88.9" y="91.44"/>
<pinref part="R_LED_5V" gate="G$1" pin="1"/>
<wire x1="109.22" y1="66.04" x2="109.22" y2="81.28" width="0.1524" layer="91"/>
<wire x1="109.22" y1="81.28" x2="96.52" y2="93.98" width="0.1524" layer="91"/>
<wire x1="96.52" y1="93.98" x2="88.9" y2="91.44" width="0.1524" layer="91"/>
<pinref part="D5V_ISP" gate="G$1" pin="A"/>
<wire x1="-50.8" y1="25.4" x2="-50.8" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="20.32" x2="-20.32" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="38.1" x2="-7.62" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="63.5" x2="46.99" y2="101.6" width="0.1524" layer="91"/>
<wire x1="46.99" y1="101.6" x2="78.74" y2="101.6" width="0.1524" layer="91"/>
<wire x1="78.74" y1="101.6" x2="88.9" y2="91.44" width="0.1524" layer="91"/>
<junction x="-50.8" y="20.32"/>
<pinref part="TR_RELAY" gate="G$1" pin="C"/>
<wire x1="-104.14" y1="10.16" x2="-50.8" y2="20.32" width="0.1524" layer="91"/>
<pinref part="5V_COUT" gate="G$1" pin="V+"/>
<wire x1="88.9" y1="93.98" x2="88.9" y2="91.44" width="0.1524" layer="91"/>
<pinref part="D5V" gate="G$1" pin="C"/>
<junction x="96.52" y="93.98"/>
<pinref part="U$2" gate="G$1" pin="V+"/>
<wire x1="-7.62" y1="63.5" x2="2.54" y2="99.06" width="0.1524" layer="91"/>
<junction x="-7.62" y="63.5"/>
<pinref part="U$4" gate="G$1" pin="1"/>
<wire x1="88.9" y1="91.44" x2="116.84" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="5V_CVCC" gate="G$1" pin="V+"/>
<pinref part="5V-4A" gate="G$1" pin="INTVCC"/>
<wire x1="76.2" y1="81.28" x2="76.2" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="5V_CBST" gate="G$1" pin="V+"/>
<pinref part="5V-4A" gate="G$1" pin="BST"/>
<wire x1="66.04" y1="81.28" x2="66.04" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="12V_SW" class="1">
<segment>
<pinref part="12V-1A4" gate="G$1" pin="BST2"/>
<pinref part="12V_CBST2" gate="G$1" pin="V+"/>
<wire x1="68.58" y1="-48.26" x2="35.56" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="12V-1A4" gate="G$1" pin="SW2"/>
<pinref part="12V_CBST2" gate="G$1" pin="GND"/>
<pinref part="12V_L1" gate="G$1" pin="1"/>
<wire x1="45.72" y1="-12.7" x2="38.1" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-12.7" x2="45.72" y2="-12.7" width="0.1524" layer="91"/>
<junction x="45.72" y="-12.7"/>
</segment>
<segment>
<pinref part="12V_CBST1" gate="G$1" pin="GND"/>
<pinref part="12V_L1" gate="G$1" pin="2"/>
<wire x1="73.66" y1="-12.7" x2="60.96" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="12V-1A4" gate="G$1" pin="SW1"/>
<wire x1="68.58" y1="-33.02" x2="60.96" y2="-12.7" width="0.1524" layer="91"/>
<junction x="60.96" y="-12.7"/>
</segment>
<segment>
<pinref part="12V-1A4" gate="G$1" pin="BST1"/>
<pinref part="12V_CBST1" gate="G$1" pin="V+"/>
<wire x1="68.58" y1="-43.18" x2="73.66" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-33.02" x2="73.66" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="12V" class="0">
<segment>
<pinref part="12V-1A4" gate="G$1" pin="PVOUT"/>
<pinref part="12V_CO" gate="G$1" pin="V+"/>
<wire x1="38.1" y1="-38.1" x2="27.94" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="12V_RTOP" gate="G$1" pin="1"/>
<wire x1="17.78" y1="-33.02" x2="27.94" y2="-35.56" width="0.1524" layer="91"/>
<junction x="27.94" y="-35.56"/>
<pinref part="12V_CFF" gate="G$1" pin="V+"/>
<wire x1="17.78" y1="-33.02" x2="5.08" y2="-33.02" width="0.1524" layer="91"/>
<junction x="17.78" y="-33.02"/>
<pinref part="R_LED_12V" gate="G$1" pin="1"/>
<wire x1="30.48" y1="-22.86" x2="35.56" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-27.94" x2="27.94" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="D12V" gate="G$1" pin="C"/>
<wire x1="10.16" y1="-25.4" x2="27.94" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-25.4" x2="38.1" y2="-38.1" width="0.1524" layer="91"/>
<junction x="38.1" y="-38.1"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="12V_RFB" gate="G$1" pin="GND"/>
<pinref part="12V_CFB" gate="G$1" pin="GND"/>
<wire x1="25.4" y1="-53.34" x2="17.78" y2="-55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="12V_RFB" gate="G$1" pin="1"/>
<pinref part="12V-1A4" gate="G$1" pin="VC"/>
<wire x1="35.56" y1="-53.34" x2="38.1" y2="-53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="12V_CFB" gate="G$1" pin="V+"/>
<pinref part="12V_RTOP" gate="G$1" pin="GND"/>
<wire x1="17.78" y1="-43.18" x2="17.78" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="12V_RBOT" gate="G$1" pin="GND"/>
<wire x1="17.78" y1="-45.72" x2="17.78" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="12V-1A4" gate="G$1" pin="FB"/>
<pinref part="12V_RFF" gate="G$1" pin="1"/>
<wire x1="15.24" y1="-45.72" x2="17.78" y2="-45.72" width="0.1524" layer="91"/>
<junction x="17.78" y="-45.72"/>
<wire x1="17.78" y1="-45.72" x2="12.7" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-50.8" x2="12.7" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-60.96" x2="25.4" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-60.96" x2="38.1" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-45.72" x2="20.32" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="12V_CFF" gate="G$1" pin="GND"/>
<pinref part="12V_RFF" gate="G$1" pin="GND"/>
<wire x1="5.08" y1="-40.64" x2="5.08" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="12V_RT" gate="G$1" pin="1"/>
<pinref part="12V-1A4" gate="G$1" pin="RT"/>
<wire x1="35.56" y1="-63.5" x2="38.1" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="12VCC" class="0">
<segment>
<pinref part="12V_C3" gate="G$1" pin="V+"/>
<pinref part="12V-1A4" gate="G$1" pin="VCC"/>
<wire x1="78.74" y1="-55.88" x2="68.58" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="12V-1A4" gate="G$1" pin="PVCC"/>
<wire x1="78.74" y1="-55.88" x2="68.58" y2="-53.34" width="0.1524" layer="91"/>
<junction x="78.74" y="-55.88"/>
<pinref part="12V-1A4" gate="G$1" pin="PWM"/>
<wire x1="78.74" y1="-55.88" x2="68.58" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="35V_F" class="1">
<segment>
<pinref part="5V_L2" gate="G$1" pin="2"/>
<pinref part="5V-4A" gate="G$1" pin="EN/UV"/>
<wire x1="25.4" y1="55.88" x2="27.94" y2="55.88" width="0.1524" layer="91"/>
<junction x="27.94" y="55.88"/>
<pinref part="5V_C2" gate="G$1" pin="V+"/>
<pinref part="5V_CIN1" gate="G$1" pin="V+"/>
<pinref part="5V-4A" gate="G$1" pin="VIN1"/>
<wire x1="45.72" y1="71.12" x2="58.42" y2="76.2" width="0.1524" layer="91"/>
<junction x="45.72" y="71.12"/>
<pinref part="5V_CIN2" gate="G$1" pin="V+"/>
<pinref part="5V-4A" gate="G$1" pin="VIN2"/>
<wire x1="58.42" y1="25.4" x2="45.72" y2="30.48" width="0.1524" layer="91"/>
<junction x="45.72" y="30.48"/>
<wire x1="27.94" y1="55.88" x2="33.02" y2="55.88" width="0.1524" layer="91"/>
<wire x1="33.02" y1="55.88" x2="45.72" y2="71.12" width="0.1524" layer="91"/>
<wire x1="33.02" y1="55.88" x2="66.04" y2="25.4" width="0.1524" layer="91"/>
<junction x="33.02" y="55.88"/>
<wire x1="33.02" y1="55.88" x2="45.72" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="35V_NO" class="0">
<segment>
<pinref part="RELAY" gate="G$1" pin="NO_2"/>
<pinref part="35V_NO" gate="1" pin="V+"/>
<wire x1="-78.74" y1="-20.32" x2="-73.66" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="35V_NC" class="0">
<segment>
<pinref part="RELAY" gate="G$1" pin="NC_2"/>
<pinref part="35V_NC" gate="1" pin="V+"/>
<wire x1="-78.74" y1="-15.24" x2="-73.66" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND_NC" class="0">
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="RELAY" gate="G$1" pin="NC_1"/>
<wire x1="-109.22" y1="-12.7" x2="-104.14" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND_NO" class="0">
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="RELAY" gate="G$1" pin="NO_1"/>
<wire x1="-109.22" y1="-22.86" x2="-104.14" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="1">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="RELAY" gate="G$1" pin="CO_1"/>
<wire x1="-111.76" y1="-17.78" x2="-104.14" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="5V-4A" gate="G$1" pin="GND1"/>
<pinref part="5V-4A" gate="G$1" pin="GND"/>
<pinref part="DC_C2" gate="G$1" pin="GND"/>
<pinref part="DC_C1" gate="G$1" pin="GND"/>
<pinref part="RELAY" gate="G$1" pin="GND"/>
<wire x1="-78.74" y1="-5.08" x2="-68.58" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-5.08" x2="-55.88" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-27.94" x2="-33.02" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-33.02" y="-22.86"/>
<wire x1="-33.02" y1="-22.86" x2="-25.4" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="5V_C3" gate="G$1" pin="GND"/>
<wire x1="-25.4" y1="-22.86" x2="7.62" y2="48.26" width="0.1524" layer="91"/>
<junction x="-25.4" y="-22.86"/>
<pinref part="5V_C2" gate="G$1" pin="GND"/>
<wire x1="7.62" y1="48.26" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<junction x="7.62" y="48.26"/>
<junction x="27.94" y="48.26"/>
<pinref part="5V_CIN1" gate="G$1" pin="GND"/>
<pinref part="5V_CIN2" gate="G$1" pin="GND"/>
<pinref part="5V-4A" gate="G$1" pin="GND2"/>
<wire x1="45.72" y1="38.1" x2="45.72" y2="43.18" width="0.1524" layer="91"/>
<junction x="45.72" y="38.1"/>
<wire x1="45.72" y1="63.5" x2="45.72" y2="58.42" width="0.1524" layer="91"/>
<junction x="45.72" y="63.5"/>
<pinref part="5V-4A" gate="G$1" pin="SYNC/MODE"/>
<wire x1="96.52" y1="45.72" x2="96.52" y2="38.1" width="0.1524" layer="91"/>
<junction x="96.52" y="45.72"/>
<wire x1="27.94" y1="48.26" x2="36.83" y2="48.26" width="0.1524" layer="91"/>
<pinref part="5V_R2A" gate="G$1" pin="1"/>
<pinref part="5V_RT" gate="G$1" pin="1"/>
<pinref part="5V_CSS" gate="G$1" pin="GND"/>
<pinref part="5V_CVCC" gate="G$1" pin="GND"/>
<wire x1="-25.4" y1="-22.86" x2="-20.32" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-22.86" x2="-2.54" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="12V_CO" gate="G$1" pin="GND"/>
<pinref part="12V-1A4" gate="G$1" pin="GND"/>
<pinref part="12V-1A4" gate="G$1" pin="PGND"/>
<pinref part="12V_RBOT" gate="G$1" pin="1"/>
<pinref part="12V_CIN" gate="G$1" pin="GND"/>
<pinref part="12V_C3" gate="G$1" pin="GND"/>
<pinref part="MCU" gate="G$1" pin="GND"/>
<wire x1="-27.94" y1="53.34" x2="-22.86" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="50.8" x2="-22.86" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="27.94" x2="-43.18" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="15.24" x2="-25.4" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-104.14" y="-17.78"/>
<junction x="-78.74" y="-5.08"/>
<pinref part="LED_5V" gate="G$1" pin="C"/>
<pinref part="LED_AUX" gate="G$1" pin="C"/>
<pinref part="D_RELAY" gate="G$1" pin="A"/>
<wire x1="-78.74" y1="-5.08" x2="-88.9" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-22.86" x2="-2.54" y2="-27.94" width="0.1524" layer="91"/>
<junction x="-2.54" y="-22.86"/>
<wire x1="-2.54" y1="-27.94" x2="-2.54" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-58.42" x2="35.56" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-78.74" x2="48.26" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-78.74" x2="53.34" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-78.74" x2="73.66" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-78.74" x2="91.44" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-60.96" x2="91.44" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-55.88" x2="91.44" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-38.1" x2="91.44" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-15.24" x2="68.58" y2="2.54" width="0.1524" layer="91"/>
<wire x1="68.58" y1="2.54" x2="25.4" y2="2.54" width="0.1524" layer="91"/>
<wire x1="25.4" y1="2.54" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-5.08" x2="-2.54" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="12V_RT" gate="G$1" pin="GND"/>
<wire x1="35.56" y1="-73.66" x2="35.56" y2="-78.74" width="0.1524" layer="91"/>
<junction x="35.56" y="-78.74"/>
<wire x1="53.34" y1="-73.66" x2="53.34" y2="-78.74" width="0.1524" layer="91"/>
<junction x="53.34" y="-78.74"/>
<wire x1="86.36" y1="-55.88" x2="91.44" y2="-55.88" width="0.1524" layer="91"/>
<junction x="91.44" y="-55.88"/>
<wire x1="86.36" y1="-38.1" x2="91.44" y2="-38.1" width="0.1524" layer="91"/>
<junction x="91.44" y="-38.1"/>
<pinref part="LED_12V" gate="G$1" pin="C"/>
<wire x1="20.32" y1="-7.62" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
<junction x="17.78" y="-5.08"/>
<junction x="-2.54" y="-27.94"/>
<wire x1="27.94" y1="-27.94" x2="-2.54" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-45.72" x2="30.48" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="-17.78" x2="-99.06" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-99.06" y1="-27.94" x2="-66.04" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-27.94" x2="-55.88" y2="-27.94" width="0.1524" layer="91"/>
<junction x="-55.88" y="-27.94"/>
<wire x1="38.1" y1="-45.72" x2="48.26" y2="-55.88" width="0.1524" layer="91"/>
<junction x="38.1" y="-45.72"/>
<wire x1="48.26" y1="-55.88" x2="48.26" y2="-78.74" width="0.1524" layer="91"/>
<junction x="48.26" y="-78.74"/>
<wire x1="-67.31" y1="24.13" x2="-43.18" y2="15.24" width="0.1524" layer="91"/>
<junction x="-43.18" y="15.24"/>
<pinref part="D12V" gate="G$1" pin="A"/>
<wire x1="-2.54" y1="-27.94" x2="5.08" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="-27.94" y1="53.34" x2="-35.56" y2="81.28" width="0.1524" layer="91"/>
<junction x="-27.94" y="53.34"/>
<junction x="36.83" y="48.26"/>
<wire x1="45.72" y1="38.1" x2="38.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="76.2" y1="12.7" x2="76.2" y2="8.89" width="0.1524" layer="91"/>
<wire x1="83.82" y1="15.24" x2="83.82" y2="8.89" width="0.1524" layer="91"/>
<wire x1="36.83" y1="48.26" x2="38.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="38.1" y1="38.1" x2="43.18" y2="16.51" width="0.1524" layer="91"/>
<junction x="38.1" y="38.1"/>
<wire x1="43.18" y1="16.51" x2="76.2" y2="8.89" width="0.1524" layer="91"/>
<wire x1="76.2" y1="8.89" x2="83.82" y2="8.89" width="0.1524" layer="91"/>
<junction x="76.2" y="8.89"/>
<wire x1="109.22" y1="43.18" x2="116.84" y2="43.18" width="0.1524" layer="91"/>
<wire x1="68.58" y1="81.28" x2="68.58" y2="106.68" width="0.1524" layer="91"/>
<wire x1="41.91" y1="91.44" x2="38.1" y2="91.44" width="0.1524" layer="91"/>
<wire x1="38.1" y1="91.44" x2="36.83" y2="91.44" width="0.1524" layer="91"/>
<wire x1="45.72" y1="63.5" x2="36.83" y2="63.5" width="0.1524" layer="91"/>
<junction x="83.82" y="8.89"/>
<wire x1="116.84" y1="43.18" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
<junction x="116.84" y="43.18"/>
<wire x1="88.9" y1="106.68" x2="68.58" y2="106.68" width="0.1524" layer="91"/>
<wire x1="68.58" y1="106.68" x2="43.18" y2="105.41" width="0.1524" layer="91"/>
<junction x="68.58" y="106.68"/>
<wire x1="43.18" y1="105.41" x2="36.83" y2="91.44" width="0.1524" layer="91"/>
<wire x1="36.83" y1="91.44" x2="36.83" y2="63.5" width="0.1524" layer="91"/>
<junction x="36.83" y="91.44"/>
<wire x1="36.83" y1="48.26" x2="36.83" y2="63.5" width="0.1524" layer="91"/>
<junction x="36.83" y="63.5"/>
<wire x1="96.52" y1="45.72" x2="110.49" y2="30.48" width="0.1524" layer="91"/>
<wire x1="83.82" y1="8.89" x2="110.49" y2="30.48" width="0.1524" layer="91"/>
<wire x1="110.49" y1="30.48" x2="116.84" y2="43.18" width="0.1524" layer="91"/>
<junction x="110.49" y="30.48"/>
<pinref part="R_DIV_2" gate="G$1" pin="1"/>
<wire x1="-45.72" y1="2.54" x2="-55.88" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="5V_COUT" gate="G$1" pin="GND"/>
<wire x1="88.9" y1="101.6" x2="88.9" y2="106.68" width="0.1524" layer="91"/>
<wire x1="88.9" y1="106.68" x2="96.52" y2="99.06" width="0.1524" layer="91"/>
<wire x1="96.52" y1="99.06" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
<junction x="88.9" y="106.68"/>
<pinref part="MCU_C" gate="G$1" pin="GND"/>
<wire x1="-58.42" y1="30.48" x2="-43.18" y2="15.24" width="0.1524" layer="91"/>
<pinref part="ZD_DIV" gate="G$1" pin="A"/>
<wire x1="-20.32" y1="0" x2="-20.32" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-20.32" y="-22.86"/>
<pinref part="R1" gate="G$1" pin="2"/>
<junction x="-66.04" y="-27.94"/>
<pinref part="D5V" gate="G$1" pin="A"/>
<junction x="96.52" y="99.06"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="38.1" y1="91.44" x2="5.08" y2="99.06" width="0.1524" layer="91"/>
<junction x="38.1" y="91.44"/>
<pinref part="U$3" gate="G$1" pin="1"/>
<wire x1="88.9" y1="106.68" x2="116.84" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V_PG" class="0">
<segment>
<pinref part="5V-4A" gate="G$1" pin="PG"/>
<pinref part="LED_5V" gate="G$1" pin="A"/>
<pinref part="R_LED_5V" gate="G$1" pin="GND"/>
<wire x1="109.22" y1="55.88" x2="109.22" y2="50.8" width="0.1524" layer="91"/>
<junction x="109.22" y="55.88"/>
<wire x1="109.22" y1="55.88" x2="96.52" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R_LED_12V" gate="G$1" pin="GND"/>
<pinref part="LED_12V" gate="G$1" pin="A"/>
<wire x1="20.32" y1="-22.86" x2="20.32" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="1">
<segment>
<pinref part="R_LED_AUX" gate="G$1" pin="1"/>
<pinref part="LED_AUX" gate="G$1" pin="A"/>
<wire x1="-67.31" y1="35.56" x2="-67.31" y2="31.75" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RELAY_CONTROL" class="1">
<segment>
<pinref part="MCU" gate="G$1" pin="PB0"/>
<pinref part="R_LED_AUX" gate="G$1" pin="GND"/>
<wire x1="-67.31" y1="45.72" x2="-67.31" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-67.31" y1="50.8" x2="-53.34" y2="53.34" width="0.1524" layer="91"/>
<pinref part="TR_RELAY" gate="G$1" pin="B"/>
<wire x1="-109.22" y1="5.08" x2="-109.22" y2="13.97" width="0.1524" layer="91"/>
<wire x1="-109.22" y1="13.97" x2="-67.31" y2="50.8" width="0.1524" layer="91"/>
<junction x="-67.31" y="50.8"/>
<pinref part="U$1" gate="G$1" pin="MOSI"/>
<wire x1="-53.34" y1="53.34" x2="-35.56" y2="88.9" width="0.1524" layer="91"/>
<junction x="-53.34" y="53.34"/>
</segment>
</net>
<net name="IN_1" class="0">
<segment>
<pinref part="MCU" gate="G$1" pin="PB2"/>
<label x="-60.96" y="68.58" size="1.778" layer="95"/>
<pinref part="U$1" gate="G$1" pin="SCK"/>
<wire x1="-53.34" y1="43.18" x2="-62.23" y2="46.99" width="0.1524" layer="91"/>
<wire x1="-62.23" y1="46.99" x2="-62.23" y2="82.55" width="0.1524" layer="91"/>
<wire x1="-62.23" y1="82.55" x2="-45.72" y2="88.9" width="0.1524" layer="91"/>
<label x="-83.82" y="45.72" size="1.778" layer="95"/>
<pinref part="R2" gate="G$1" pin="GND"/>
<wire x1="-53.34" y1="43.18" x2="-81.28" y2="43.18" width="0.1524" layer="91"/>
<junction x="-53.34" y="43.18"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-91.44" y1="43.18" x2="-106.68" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="SIG"/>
<wire x1="-91.44" y1="43.18" x2="0" y2="99.06" width="0.1524" layer="91"/>
<junction x="-91.44" y="43.18"/>
</segment>
</net>
<net name="5V_ISP" class="0">
<segment>
<pinref part="D5V_ISP" gate="G$1" pin="C"/>
<pinref part="MCU" gate="G$1" pin="VCC"/>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<wire x1="-53.34" y1="38.1" x2="-41.91" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-41.91" y1="45.72" x2="-41.91" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-41.91" y1="93.98" x2="-35.56" y2="96.52" width="0.1524" layer="91"/>
<junction x="-53.34" y="38.1"/>
<pinref part="MCU_C" gate="G$1" pin="V+"/>
<wire x1="-58.42" y1="38.1" x2="-53.34" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="30.48" x2="-58.42" y2="38.1" width="0.1524" layer="91"/>
<junction x="-58.42" y="38.1"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="RELAY" gate="G$1" pin="VCC"/>
<pinref part="TR_RELAY" gate="G$1" pin="E"/>
<wire x1="-104.14" y1="0" x2="-104.14" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="D_RELAY" gate="G$1" pin="C"/>
<wire x1="-104.14" y1="-5.08" x2="-93.98" y2="5.08" width="0.1524" layer="91"/>
<junction x="-104.14" y="-5.08"/>
</segment>
</net>
<net name="PB5" class="0">
<segment>
<pinref part="MCU" gate="G$1" pin="PB5"/>
<pinref part="U$1" gate="G$1" pin="RESET"/>
<wire x1="-27.94" y1="38.1" x2="-38.1" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="45.72" x2="-38.1" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="71.12" x2="-45.72" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MISO" class="1">
<segment>
<pinref part="MCU" gate="G$1" pin="PB1"/>
<pinref part="U$1" gate="G$1" pin="MISO"/>
<wire x1="-53.34" y1="48.26" x2="-66.04" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="53.34" x2="-66.04" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="88.9" x2="-45.72" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="R_DIV_1" gate="G$1" pin="GND"/>
<wire x1="-35.56" y1="-5.08" x2="-30.48" y2="0" width="0.1524" layer="91"/>
<pinref part="R_DIV_2" gate="G$1" pin="GND"/>
<wire x1="-30.48" y1="0" x2="-35.56" y2="2.54" width="0.1524" layer="91"/>
<pinref part="MCU" gate="G$1" pin="PB3"/>
<wire x1="-30.48" y1="0" x2="-27.94" y2="43.18" width="0.1524" layer="91"/>
<junction x="-30.48" y="0"/>
<pinref part="ZD_DIV" gate="G$1" pin="C"/>
<wire x1="-25.4" y1="0" x2="-30.48" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V_RAW" class="0">
<segment>
<pinref part="5V_CBST" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="81.28" x2="53.34" y2="76.2" width="0.1524" layer="91"/>
<wire x1="53.34" y1="76.2" x2="53.34" y2="58.42" width="0.1524" layer="91"/>
<pinref part="5V-4A" gate="G$1" pin="SW"/>
<wire x1="53.34" y1="58.42" x2="45.72" y2="50.8" width="0.1524" layer="91"/>
<wire x1="45.72" y1="50.8" x2="60.96" y2="50.8" width="0.1524" layer="91"/>
<wire x1="60.96" y1="50.8" x2="73.66" y2="63.5" width="0.1524" layer="91"/>
<junction x="45.72" y="50.8"/>
<pinref part="5V_L1" gate="G$1" pin="1"/>
<wire x1="73.66" y1="63.5" x2="73.66" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
