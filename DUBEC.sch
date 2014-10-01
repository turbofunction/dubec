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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="jne">
<description>By Janne Savukoski 2014</description>
<packages>
<package name="QFN-18">
<smd name="22" x="-0.28" y="0" dx="0.356" dy="0.22" layer="1"/>
<smd name="21" x="-1.05" y="0" dx="0.4" dy="0.22" layer="1"/>
<smd name="13" x="-0.25" y="-1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="14" x="0.25" y="-1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="15" x="0.75" y="-1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="16" x="1.25" y="-1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="11" x="-1.25" y="-1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="9" x="-2" y="-0.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="8" x="-2" y="0.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="7" x="-2" y="0.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="10" x="-2" y="-0.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="4" x="-0.25" y="1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="3" x="0.25" y="1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="2" x="0.75" y="1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="1" x="1.25" y="1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="6" x="-1.25" y="1.4" dx="0.25" dy="0.7" layer="1"/>
<smd name="18" x="2" y="-0.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="19" x="2" y="0.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="20" x="2" y="0.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="17" x="2" y="-0.75" dx="0.7" dy="0.25" layer="1"/>
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
</package>
<package name="8MA4">
<wire x1="1.05" y1="-0.25" x2="1.05" y2="0.25" width="0.1524" layer="21"/>
<wire x1="-1.05" y1="0.25" x2="-1.05" y2="-0.25" width="0.1524" layer="21"/>
<smd name="5" x="0.75" y="0.8" dx="0.25" dy="0.4" layer="1"/>
<smd name="6" x="0.25" y="0.8" dx="0.25" dy="0.4" layer="1"/>
<smd name="7" x="-0.25" y="0.8" dx="0.25" dy="0.4" layer="1"/>
<smd name="4" x="0.75" y="-0.8" dx="0.25" dy="0.4" layer="1"/>
<smd name="3" x="0.25" y="-0.8" dx="0.25" dy="0.4" layer="1"/>
<smd name="2" x="-0.25" y="-0.8" dx="0.25" dy="0.4" layer="1"/>
<smd name="1" x="-0.75" y="-0.8" dx="0.25" dy="0.4" layer="1"/>
<smd name="8" x="-0.75" y="0.8" dx="0.25" dy="0.4" layer="1"/>
<text x="-1.016" y="1.27" size="0.508" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.778" size="0.508" layer="25">&gt;VALUE</text>
<circle x="-1.4" y="-1.6" radius="0.2" width="0.1524" layer="21"/>
</package>
<package name="GULLWINGS">
<smd name="6" x="2.2" y="3" dx="0.7" dy="2" layer="1"/>
<smd name="5" x="4.4" y="3" dx="0.7" dy="2" layer="1"/>
<smd name="3" x="2.2" y="-3" dx="0.7" dy="2" layer="1"/>
<smd name="4" x="4.4" y="-3" dx="0.7" dy="2" layer="1"/>
<smd name="7" x="0" y="3" dx="0.7" dy="2" layer="1"/>
<smd name="2" x="0" y="-3" dx="0.7" dy="2" layer="1"/>
<smd name="8" x="-3.2" y="3" dx="0.7" dy="2" layer="1"/>
<smd name="1" x="-3.2" y="-3" dx="0.7" dy="2" layer="1"/>
<text x="-3.573" y="4.346" size="0.762" layer="25">&gt;NAME</text>
<text x="-3.573" y="-5.165" size="0.762" layer="27">&gt;VALUE</text>
<wire x1="-3.8" y1="2.4" x2="-4.4" y2="2.4" width="0.127" layer="21"/>
<wire x1="-4.4" y1="2.4" x2="-4.4" y2="-2.4" width="0.127" layer="21"/>
<wire x1="-4.4" y1="-2.4" x2="-3.8" y2="-2.4" width="0.127" layer="21"/>
<wire x1="-2.6" y1="-2.4" x2="-0.6" y2="-2.4" width="0.127" layer="21"/>
<wire x1="0.6" y1="-2.4" x2="1.6" y2="-2.4" width="0.127" layer="21"/>
<wire x1="2.8" y1="-2.4" x2="3.8" y2="-2.4" width="0.127" layer="21"/>
<wire x1="-2.6" y1="2.4" x2="-0.6" y2="2.4" width="0.127" layer="21"/>
<wire x1="0.6" y1="2.4" x2="1.6" y2="2.4" width="0.127" layer="21"/>
<wire x1="2.8" y1="2.4" x2="3.8" y2="2.4" width="0.127" layer="21"/>
<wire x1="5" y1="-2.4" x2="5.8" y2="-2.4" width="0.127" layer="21"/>
<wire x1="5.8" y1="-2.4" x2="5.8" y2="2.4" width="0.127" layer="21"/>
<wire x1="5.8" y1="2.4" x2="5" y2="2.4" width="0.127" layer="21"/>
</package>
<package name="DFN-16">
<smd name="12" x="0.25" y="1.95" dx="0.25" dy="0.7" layer="1"/>
<smd name="11" x="0.75" y="1.95" dx="0.25" dy="0.7" layer="1"/>
<smd name="10" x="1.25" y="1.95" dx="0.25" dy="0.7" layer="1"/>
<smd name="9" x="1.75" y="1.95" dx="0.25" dy="0.7" layer="1"/>
<smd name="5" x="0.25" y="-2" dx="0.25" dy="0.7" layer="1"/>
<smd name="6" x="0.75" y="-2" dx="0.25" dy="0.7" layer="1"/>
<smd name="7" x="1.25" y="-2" dx="0.25" dy="0.7" layer="1"/>
<smd name="8" x="1.75" y="-2" dx="0.25" dy="0.7" layer="1"/>
<smd name="1" x="-1.75" y="-2" dx="0.25" dy="0.7" layer="1"/>
<smd name="2" x="-1.25" y="-2" dx="0.25" dy="0.7" layer="1"/>
<smd name="3" x="-0.75" y="-2" dx="0.25" dy="0.7" layer="1"/>
<smd name="4" x="-0.25" y="-2" dx="0.25" dy="0.7" layer="1"/>
<smd name="16" x="-1.75" y="1.95" dx="0.25" dy="0.7" layer="1"/>
<smd name="15" x="-1.25" y="1.95" dx="0.25" dy="0.7" layer="1"/>
<smd name="14" x="-0.75" y="1.95" dx="0.25" dy="0.7" layer="1"/>
<smd name="13" x="-0.25" y="1.95" dx="0.25" dy="0.7" layer="1"/>
<smd name="17" x="0" y="0" dx="4.34" dy="2.44" layer="1"/>
<text x="-2.032" y="2.667" size="0.762" layer="25">&gt;NAME</text>
<text x="-2.032" y="-3.429" size="0.762" layer="27">&gt;VALUE</text>
<circle x="-2.893" y="-2.393" radius="0.22360625" width="0.1524" layer="21"/>
<wire x1="2.127" y1="2" x2="2.5" y2="2" width="0.1524" layer="21"/>
<wire x1="2.5" y1="2" x2="2.5" y2="-2" width="0.1524" layer="21"/>
<wire x1="2.5" y1="-2" x2="2.127" y2="-2" width="0.1524" layer="21"/>
<wire x1="-2.127" y1="2" x2="-2.5" y2="2" width="0.1524" layer="21"/>
<wire x1="-2.5" y1="2" x2="-2.5" y2="-2" width="0.1524" layer="21"/>
<wire x1="-2.5" y1="-2" x2="-2.127" y2="-2" width="0.1524" layer="21"/>
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
<text x="-20.32" y="30.48" size="1.778" layer="95">&gt;NAME</text>
<text x="-20.32" y="-30.48" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="ATTINY10">
<pin name="NC1" x="-12.7" y="2.54" visible="pin" length="middle"/>
<pin name="PB1" x="-12.7" y="7.62" visible="pin" length="middle"/>
<pin name="NC2" x="-12.7" y="-2.54" visible="pin" length="middle"/>
<pin name="GND" x="-12.7" y="-7.62" visible="pin" length="middle"/>
<pin name="PB2" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="VCC" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="PB3" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="PB0" x="12.7" y="-7.62" length="middle" rot="R180"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-7.62" y="12.7" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="IMRELAY">
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<pin name="VCC" x="12.7" y="-7.62" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="NO_1" x="12.7" y="7.62" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="CO_1" x="12.7" y="5.08" visible="pin" length="middle" direction="sup" rot="R180"/>
<pin name="NC_1" x="12.7" y="2.54" visible="pin" length="middle" direction="pas" rot="R180"/>
<pin name="GND" x="-12.7" y="-7.62" visible="pin" length="middle" direction="pwr"/>
<pin name="NC_2" x="-12.7" y="2.54" visible="pin" length="middle" direction="pas"/>
<pin name="CO_2" x="-12.7" y="5.08" visible="pin" length="middle" direction="sup"/>
<pin name="NO_2" x="-12.7" y="7.62" visible="pin" length="middle" direction="pas"/>
<text x="-7.62" y="12.7" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
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
<pin name="2" x="0" y="-3.556" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="1" x="0" y="3.556" visible="off" length="short" direction="pas" rot="R270"/>
<rectangle x1="-2.54" y1="0.508" x2="2.54" y2="1.016" layer="94"/>
<rectangle x1="-2.54" y1="-1.016" x2="2.54" y2="-0.508" layer="94"/>
<text x="0.762" y="1.778" size="1.27" layer="95">&gt;NAME</text>
<text x="0.508" y="-3.048" size="1.27" layer="96">&gt;VALUE</text>
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
<pin name="1" x="-3.556" y="0" visible="off" length="short" direction="pas"/>
<rectangle x1="-2.032" y1="-0.762" x2="2.032" y2="0.762" layer="94"/>
<pin name="2" x="3.556" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-3.048" y="1.27" size="1.27" layer="95">&gt;NAME</text>
<text x="-3.048" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="RES">
<pin name="1" x="-6.35" y="0" visible="off" length="short" direction="pas"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="2.54" width="0.254" layer="94"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-2.54" x2="-0.635" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.635" y1="-2.54" x2="1.905" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="-2.54" width="0.254" layer="94"/>
<wire x1="3.175" y1="-2.54" x2="3.81" y2="0" width="0.254" layer="94"/>
<pin name="2" x="6.35" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-5.08" y="3.81" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LT8614XUDC">
<gates>
<gate name="G$1" symbol="LT8614" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFN-18">
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
<connect gate="G$1" pin="SW" pad="8 9 21 22"/>
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
<deviceset name="ATTINY10-MAHR">
<description>8-bit AVR Microcontroller with 1kB flash</description>
<gates>
<gate name="G$1" symbol="ATTINY10" x="0" y="0"/>
</gates>
<devices>
<device name="" package="8MA4">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="NC1" pad="2"/>
<connect gate="G$1" pin="NC2" pad="3"/>
<connect gate="G$1" pin="PB0" pad="5"/>
<connect gate="G$1" pin="PB1" pad="1"/>
<connect gate="G$1" pin="PB2" pad="8"/>
<connect gate="G$1" pin="PB3" pad="6"/>
<connect gate="G$1" pin="VCC" pad="7"/>
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
<connect gate="G$1" pin="GND" pad="4 5"/>
<connect gate="G$1" pin="PGND" pad="17"/>
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
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1210" package="1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0402" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805NUDE" package="0805NUDE">
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
<class number="0" name="35V" width="0.508" drill="0.3">
<clearance class="0" value="0.254"/>
</class>
<class number="1" name="GND" width="0.508" drill="0.3">
<clearance class="0" value="0.205"/>
<clearance class="1" value="0.254"/>
</class>
<class number="2" name="12V" width="0.508" drill="0.3">
<clearance class="0" value="0.205"/>
<clearance class="1" value="0.205"/>
<clearance class="2" value="0.254"/>
</class>
</classes>
<parts>
<part name="5V-4A" library="jne" deviceset="LT8614XUDC" device=""/>
<part name="CPU" library="jne" deviceset="ATTINY10-MAHR" device=""/>
<part name="RELAY" library="jne" deviceset="IM03DGR" device="GW"/>
<part name="12V-1A4" library="jne" deviceset="LTC3115XDHD-1" device=""/>
<part name="DC_C1" library="jne" deviceset="CAP" device="C0805" value="22uF"/>
<part name="5V_C2" library="jne" deviceset="CAP" device="C0603" value="4.7uF"/>
<part name="5V_L2" library="jne" deviceset="IND" device="I2525Z" value="INDI2525Z"/>
<part name="5V_FB1" library="jne" deviceset="BEAD" device="B0805"/>
<part name="5V_C3" library="jne" deviceset="CAP" device="C0805" value="10uF"/>
<part name="5V_CIN1" library="jne" deviceset="CAP" device="C0402" value="1uF"/>
<part name="5V_CIN2" library="jne" deviceset="CAP" device="C0402" value="1uF"/>
<part name="DC_C2" library="jne" deviceset="CAP" device="0805NUDE" value="22uF"/>
<part name="12V_C1" library="jne" deviceset="CAP" device="C0402" value="0.1uF"/>
<part name="12V_C2" library="jne" deviceset="CAP" device="C0402" value="0.1uF"/>
<part name="12V_L1" library="jne" deviceset="IND" device="I2020Z" value="10uH"/>
<part name="12V_C3" library="jne" deviceset="CAP" device="C0805" value="4.7uF"/>
<part name="12V_RT" library="jne" deviceset="RES" device="R0402" value="35.7kOhm"/>
<part name="12V_RBOT" library="jne" deviceset="RES" device="R0402" value="90.9kOhm"/>
<part name="12V_RFF" library="jne" deviceset="RES" device="R0402" value="10kOhm"/>
<part name="12V_CFF" library="jne" deviceset="CAP" device="C0402" value="33pF"/>
<part name="RFB" library="jne" deviceset="RES" device="R0402" value="40.2kOhm"/>
<part name="12V_CFB" library="jne" deviceset="CAP" device="C0402" value="820pF"/>
<part name="RTOP" library="jne" deviceset="RES" device="R0402" value="1MOhm"/>
<part name="12V_CO" library="jne" deviceset="CAP" device="C1206" value="22uF"/>
<part name="12V_CIN" library="jne" deviceset="CAP" device="C0402" value="0.1uF"/>
<part name="5V_L1" library="jne" deviceset="IND" device="I0420CDMCB/DS" value="2.2uH"/>
<part name="5V_CBST" library="jne" deviceset="CAP" device="C0402" value="0.1uF"/>
<part name="5V_CVCC" library="jne" deviceset="CAP" device="C0402" value="1uF"/>
<part name="5V_R2A" library="jne" deviceset="RES" device="R0402" value="121kOhm"/>
<part name="5V_R2B" library="jne" deviceset="RES" device="R0402" value="121kOhm"/>
<part name="5V_CBIAS" library="jne" deviceset="CAP" device="C0603" value="4.7uF"/>
<part name="5V_R1" library="jne" deviceset="RES" device="R0402" value="1MOhm"/>
<part name="5V_CSS" library="jne" deviceset="CAP" device="C0402" value="10nF"/>
<part name="5V_RT" library="jne" deviceset="RES" device="R0402" value="18.2kOhm"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-184.15" y="41.91" size="1.778" layer="97">DC_C1, DC_C2, 12V_CO = C2012X5R1V226M125AC
5V_C2, 5V_CBIAS = C1608JB1V475K080AC
5V_FB1 = 742792012
5V_L2 = IHLP2525CZER6R8M01
5V_C3 = C2012JB1V106K085AC
5V_CIN1, 5V_CIN2 = C1005JB1V105K050BC
5V_L1 = 0420CDMCBDS-2R2MC
5V_R2 = 2x TNPW0402121RBEED
5V_CSS = CGA2B3X7R1V103K050BB
5V_RT = 5-1879215-9
12V_C1, 12V_C2, 12V_CIN = UMK105B7104KV-FR
12V_L1 = IHLP2020CZER100M01
12V_RT = TNPW040235K7BEED
12V_RBOT = TNPW040290K9BEED
12V_RFF = MCS0402MD1002BE100
12V_CFF = C0402C330F5GACTU
12V_CFB = VJ0402Y821KNAAJ
12V_RTOP = CRCW04021M00DHEDP
12V_CO = C3216JB1V226M160AC
</text>
</plain>
<instances>
<instance part="5V-4A" gate="G$1" x="-67.31" y="13.97"/>
<instance part="CPU" gate="G$1" x="-78.74" y="-50.8"/>
<instance part="RELAY" gate="G$1" x="-180.34" y="15.24" rot="R90"/>
<instance part="12V-1A4" gate="G$1" x="-146.05" y="-48.26"/>
<instance part="DC_C1" gate="G$1" x="-161.29" y="17.78"/>
<instance part="5V_C2" gate="G$1" x="-107.95" y="10.16"/>
<instance part="5V_L2" gate="G$1" x="-125.73" y="29.21"/>
<instance part="5V_FB1" gate="G$1" x="-144.78" y="29.21"/>
<instance part="5V_C3" gate="G$1" x="-139.7" y="19.05"/>
<instance part="5V_CIN1" gate="G$1" x="-90.17" y="46.99"/>
<instance part="5V_CIN2" gate="G$1" x="-77.47" y="-25.4"/>
<instance part="DC_C2" gate="G$1" x="-152.4" y="17.78"/>
<instance part="12V_C1" gate="G$1" x="-175.26" y="-31.75"/>
<instance part="12V_C2" gate="G$1" x="-186.69" y="-31.75"/>
<instance part="12V_L1" gate="G$1" x="-162.56" y="-11.43"/>
<instance part="12V_C3" gate="G$1" x="-185.42" y="-16.51"/>
<instance part="12V_RT" gate="G$1" x="-176.53" y="-45.72"/>
<instance part="12V_RBOT" gate="G$1" x="-176.53" y="-60.96"/>
<instance part="12V_RFF" gate="G$1" x="-177.8" y="-76.2"/>
<instance part="12V_CFF" gate="G$1" x="-198.12" y="-15.24"/>
<instance part="RFB" gate="G$1" x="-203.2" y="-31.75"/>
<instance part="12V_CFB" gate="G$1" x="-198.12" y="-48.26"/>
<instance part="RTOP" gate="G$1" x="-212.09" y="-43.18"/>
<instance part="12V_CO" gate="G$1" x="-209.55" y="-58.42"/>
<instance part="12V_CIN" gate="G$1" x="-173.99" y="-20.32"/>
<instance part="5V_L1" gate="G$1" x="-53.34" y="-25.4"/>
<instance part="5V_CBST" gate="G$1" x="-93.98" y="-24.13"/>
<instance part="5V_CVCC" gate="G$1" x="-102.87" y="-25.4"/>
<instance part="5V_R2A" gate="G$1" x="-107.95" y="-12.7"/>
<instance part="5V_R2B" gate="G$1" x="-115.57" y="-22.86"/>
<instance part="5V_CBIAS" gate="G$1" x="-107.95" y="-38.1"/>
<instance part="5V_R1" gate="G$1" x="-107.95" y="-53.34"/>
<instance part="5V_CSS" gate="G$1" x="-66.04" y="-31.75"/>
<instance part="5V_RT" gate="G$1" x="-107.95" y="-63.5"/>
</instances>
<busses>
</busses>
<nets>
<net name="35V" class="0">
<segment>
<wire x1="-140.97" y1="29.21" x2="-139.7" y2="22.86" width="0.1524" layer="91"/>
<pinref part="5V_L2" gate="G$1" pin="1"/>
<wire x1="-139.7" y1="22.86" x2="-133.35" y2="29.21" width="0.1524" layer="91"/>
<junction x="-139.7" y="22.86"/>
</segment>
<segment>
<pinref part="5V_L2" gate="G$1" pin="2"/>
<pinref part="5V-4A" gate="G$1" pin="EN/UV"/>
<wire x1="-118.11" y1="29.21" x2="-107.95" y2="13.97" width="0.1524" layer="91"/>
<wire x1="-107.95" y1="13.97" x2="-72.39" y2="-11.43" width="0.1524" layer="91"/>
<junction x="-107.95" y="13.97"/>
<pinref part="5V-4A" gate="G$1" pin="VIN2"/>
<wire x1="-107.95" y1="13.97" x2="-80.01" y2="-11.43" width="0.1524" layer="91"/>
<wire x1="-80.01" y1="-11.43" x2="-77.47" y2="-21.59" width="0.1524" layer="91"/>
<junction x="-80.01" y="-11.43"/>
<wire x1="-107.95" y1="13.97" x2="-90.17" y2="43.18" width="0.1524" layer="91"/>
<pinref part="5V-4A" gate="G$1" pin="VIN1"/>
<wire x1="-90.17" y1="43.18" x2="-80.01" y2="39.37" width="0.1524" layer="91"/>
<label x="-110.49" y="26.67" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-161.29" y1="21.59" x2="-152.4" y2="21.59" width="0.1524" layer="91"/>
<wire x1="-152.4" y1="21.59" x2="-148.59" y2="29.21" width="0.1524" layer="91"/>
<pinref part="RELAY" gate="G$1" pin="CO_1"/>
<wire x1="-185.42" y1="27.94" x2="-161.29" y2="21.59" width="0.1524" layer="91"/>
<junction x="-148.59" y="29.21"/>
</segment>
<segment>
<wire x1="-151.13" y1="24.13" x2="-123.19" y2="-40.64" width="0.1524" layer="91"/>
<junction x="-151.13" y="24.13"/>
<pinref part="12V-1A4" gate="G$1" pin="PVIN"/>
<pinref part="12V-1A4" gate="G$1" pin="VIN"/>
<wire x1="-123.19" y1="-40.64" x2="-130.81" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="-123.19" y1="-40.64" x2="-130.81" y2="-60.96" width="0.1524" layer="91"/>
<junction x="-123.19" y="-40.64"/>
</segment>
</net>
<net name="GND" class="1">
<segment>
<pinref part="RELAY" gate="G$1" pin="CO_2"/>
<wire x1="-185.42" y1="2.54" x2="-151.13" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-151.13" y1="15.24" x2="-139.7" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-139.7" y1="15.24" x2="-107.95" y2="6.35" width="0.1524" layer="91"/>
<wire x1="-107.95" y1="6.35" x2="-77.47" y2="-29.21" width="0.1524" layer="91"/>
<label x="-130.81" y="6.35" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-116.84" y1="8.89" x2="-90.17" y2="50.8" width="0.1524" layer="91"/>
<junction x="-116.84" y="8.89"/>
</segment>
<segment>
<pinref part="5V-4A" gate="G$1" pin="GND1"/>
<junction x="-97.79" y="-5.08"/>
<wire x1="-97.79" y1="-5.08" x2="-92.71" y2="21.59" width="0.1524" layer="91"/>
<pinref part="5V-4A" gate="G$1" pin="GND"/>
<wire x1="-97.79" y1="-5.08" x2="-41.91" y2="8.89" width="0.1524" layer="91"/>
<pinref part="5V-4A" gate="G$1" pin="GND2"/>
<wire x1="-97.79" y1="-5.08" x2="-92.71" y2="6.35" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND_NC2" class="0">
<segment>
<pinref part="RELAY" gate="G$1" pin="NC_2"/>
<wire x1="-182.88" y1="2.54" x2="-182.88" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND_NC1" class="0">
<segment>
<pinref part="RELAY" gate="G$1" pin="NC_1"/>
<wire x1="-182.88" y1="27.94" x2="-182.88" y2="33.02" width="0.1524" layer="91"/>
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
