; test.g - Test file for validating syntax coloring in Iro editor
; this is a block comment
M561                    ; this comment ends a line
G1 X2 (this is an inline comment) Y"" () F20000
G1 X1.1 Y2.24.4 Z3.2 A4.4 B5.5 C6.6 D7.7 U8.8 V9.9 W10.0
M300 S1 P0.io1 R"text" K{"expression block " ^ " this is not an expression inside this string: { 1.0 }"} E100:100:100:100
T-1 K500 F4
T4

; expression blocks start with keywords
if move.axes[4].x >= 3
    while iterations >= 0
        echo "constants: " true ^ false ^ null ^ iterations ^ pi ^ line ^ result
        continue
        abort "nope"
        
; blocks end with indentation changes, like Python

; expressions can appear in gcode lines, curly braces start and end the expression
G1 X{axes[0].position > 100 ? 50.5 : "vogon poetry"} F1000.5

; things that dont work:

; inline comments are not permitted inside expressions:
if foo = (not a comment) true ;comments end expressions
G1 X{100 + (not a valid comment) 1}

; expressions are not allowed for gcodes
G{1}
M{1}

; but they are for T codes
T{2}

; brackets that are not matching are illegal (not implemented yet):
G1 X{{}{}}}

; you cant do scripting without wrapping it in expression blocks
G1 X atan 2 ; not going to work
G1 X{atan 2} ; works