source git_utils.sh

clear_func

mkdir src
cd src

git_init_func

# br1 r1
commit_func "r1" "blue" "br1" true

# br2 r2
commit_func "r2" "blue" "br2" true

# br3 r3
commit_func "r3" "blue" "br3" true

# br4 r4
commit_func "r4" "blue" "br4" true

# br5 r5
commit_func "r5" "red" "br5" true

# br6 r6
commit_func "r6" "red" "br6" true

# br4 r7
commit_func "r7" "blue" "br4" false

# br8 r8
commit_func "r8" "blue" "br8" true

# br9 r9
commit_func "r9" "blue" "br9" true

# br1 r10
commit_func "r10" "blue" "br1" false

# br11 r11
commit_func "r11" "blue" "br11" true

# br1 r12
commit_func "r12" "blue" "br1" false

# br13 r13
commit_func "r13" "blue" "br13" true

# master r14
commit_func "r14" "red" "master" false

# br15 r15
commit_func "r15" "red" "br15" true

# br3 r16
commit_func "r16" "blue" "br3" false

# br17 r17
commit_func "r17" "red" "br17" true

# br15 r18
commit_func "r18" "red" "br15" false

# br4 r19
commit_func "r19" "blue" "br4" false

# br4 -> br1
merge_func "br1" "br4" "red" "r20"

# br9 r21
commit_func "r21" "blue" "br9" false

# br8 r22
commit_func "r22" "blue" "br8" false

# br11 r23
commit_func "r23" "blue" "br11" false

# master r24
commit_func "r24" "red" "master" false

# br17 r25
commit_func "r25" "red" "br17" false

# br8 r26
commit_func "r26" "blue" "br8" false

# br27 r27
commit_func "r27" "blue" "br27" true

# br27 -> br15
merge_func "br15" "br27" "red" "r28"

# br15 r29
commit_func "r29" "red" "br15" false

# br3 r30
commit_func "r30" "blue" "br3" false

# br9 r31
commit_func "r31" "blue" "br9" false

# br32 r32
commit_func "r32" "red" "br32" true

# br5 r33
commit_func "r33" "red" "br5" false

# br9 r34
commit_func "r34" "blue" "br9" false

# br8 r35
commit_func "r35" "blue" "br8" false

# br1 r36
commit_func "r36" "blue" "br1" false

# br13 r37
commit_func "r37" "blue" "br13" false

# br15 r38
commit_func "r38" "red" "br15" false

# br5 r39
commit_func "r39" "red" "br5" false

# br5 -> br1
merge_func "br1" "br5" "blue" "r40"

# br3 r41
commit_func "r41" "blue" "br3" false

# br3 r42
commit_func "r42" "blue" "br3" false

# br11 r43
commit_func "r43" "blue" "br11" false

# br2 r44
commit_func "r44" "blue" "br2" false

# br2 -> br13
merge_func "br13" "br2" "blue" "r45"

# br13 r46
commit_func "r46" "blue" "br13" false


# br1 r47
commit_func "r47" "blue" "br1" false

# br8 r48
commit_func "r48" "blue" "br8" false

# br17 r49
commit_func "r49" "red" "br17" false

# br8 r50
commit_func "r50" "blue" "br8" false

# br8 -> br15
merge_func "br15" "br8" "red" "r51"

# br32 r52
commit_func "r52" "red" "br32" false

# br17 r53
commit_func "r53" "red" "br17" false

# br15 r54
commit_func "r54" "red" "br15" false

# br13 r55
commit_func "r55" "blue" "br13" false

# br13 -> br17
merge_func "br17" "br13" "red" "r56"

# br1 r57
commit_func "r57" "blue" "br1" false

# br1 -> br17
merge_func "br17" "br1" "red" "r58"

# br3 r59
commit_func "r59" "blue" "br3" false

# br3 -> br15
merge_func "br15" "br3" "red" "r60"

# br15 -> br32
merge_func "br32" "br15" "red" "r61"

# br32 -> br17
merge_func "br17" "br32" "red" "r62"

# br17 r63
commit_func "r63" "red" "br17" false

# br9 r64
commit_func "r64" "blue" "br9" false

# br9 -> br6
merge_func "br6" "br9" "red" "r65"

# br6 -> master
merge_func "master" "br6" "red" "r66"

# master r67
commit_func "r67" "red" "master" false

# br11 r68
commit_func "r68" "blue" "br11" false

# br11 -> br17
merge_func "br17" "br11" "red" "r69"

# br17 -> master
merge_func "master" "br17" "red" "r70"
