source ./utils.sh

clear_func

mkdir src
cd src
git init
git config user.name "red"
git config user.email "red@poop.us"

# master r0
unzip -o ../story/commit0.zip -d ./
git add .
git commit --allow-empty -m "r0"

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

# merge br4 br1
git checkout br1
git merge br4
../conflict_resolver.sh ../story/commit20.zip "r20" "blue <blue@poop.us>"

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

# br15
git checkout br15

# merge br15 br27
git merge br27 -m "merged br27 to br15"
../conflict_resolver.sh ../story/commit28.zip "r28" "red <red@poop.us>"


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

# br1
git checkout br1

# merge r1 r5
git merge br5 -m "merged br1 to br5"
../conflict_resolver.sh ../story/commit40.zip "r40" "blue <blue@poop.us>"

# br3 r41
commit_func "r41" "blue" "br3" false

# br3 r42
commit_func "r42" "blue" "br3" false

# br11 r43
commit_func "r43" "blue" "br11" false

# br2 r44
commit_func "r44" "blue" "br2" false


# br13
git checkout br13

# merge br13 br2
git merge br2 -m "merged br13 to br2"
../conflict_resolver.sh ../story/commit45.zip "r45" "blue <blue@poop.us>"


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

# br15
git checkout br15

# merge br15 br8
git merge br8 -m "merged br15 to br8"
../conflict_resolver.sh ../story/commit51.zip "r51" "red <red@poop.us>"

# br32 r52
commit_func "r52" "red" "br32" false

# br17 r53
commit_func "r53" "red" "br17" false

# br15 r54
commit_func "r54" "red" "br15" false

# br13 r55
commit_func "r55" "blue" "br13" false

# br17
git checkout br17

# merge br17 br13
git merge br13 -m "merged br17 to br13"
../conflict_resolver.sh ../story/commit56.zip "r56" "red <red@poop.us>"


# br1 r57
commit_func "r57" "blue" "br1" false

# br17
git checkout br17

# merge br17 br1
git merge br1 -m "merged br17 to br1"
../conflict_resolver.sh ../story/commit58.zip "r58" "red <red@poop.us>"


# br3 r59
commit_func "r59" "blue" "br3" false

# br15
git checkout br15

# merge br15 br3
git merge br3 -m "merged br15 to br3"
../conflict_resolver.sh ../story/commit58.zip "r60" "red <red@poop.us>"

# br32
git checkout br32

# merge br32 br15
git merge br15 -m "merged br15 to br32"
../conflict_resolver.sh ../story/commit61.zip "r61" "red <red@poop.us>"

# br17
git checkout br17

# merge br17 br32
git merge br32 -m "merged br17 to br32"
../conflict_resolver.sh ../story/commit62.zip "r62" "red <red@poop.us>"


# br17 r63
commit_func "r63" "red" "br17" false


# br9 r64
commit_func "r64" "blue" "br9" false


# br6
git checkout br6

# merge br6 br9
git merge br9 -m "merged br9 to br6"
../conflict_resolver.sh ../story/commit65.zip "r65" "red <red@poop.us>"

# master
git checkout master

# merge master br6
git merge br6 -m "merged br6 to master"
../conflict_resolver.sh ../story/commit66.zip "r66" "red <red@poop.us>"


# master r67
commit_func "r67" "red" "master" false

# br11 r68
commit_func "r68" "blue" "br11" false

# br17
git checkout br17

# merge br17 br11
git merge br11 -m "merged br11 to br17"
../conflict_resolver.sh ../story/commit69.zip "r69" "red <red@poop.us>"

# master
git checkout master

# merge master br17
git merge br17 -m "merged br17 to master"
../conflict_resolver.sh ../story/commit70.zip "r70" "red <red@poop.us>"