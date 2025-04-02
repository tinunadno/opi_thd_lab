./clear.sh

mkdir src
cd src
git init
git config user.name "red"
git config user.email "red@poop.us"

# master r0
unzip -o ../story/commit0.zip -d ./
git add .
git commit --allow-empty -m "r0"

# br1
git checkout -b br1

# br1 r1
unzip -o ../story/commit1.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r1"

# br2
git checkout -b br2

# br2 r2
unzip -o ../story/commit2.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r2"

# br3
git checkout -b br3

# br3 r3
unzip -o ../story/commit3.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r3"

# br4
git checkout -b br4

# br4 r4
unzip -o ../story/commit4.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r4"

# br5
git checkout -b br5

# br5 r5
unzip -o ../story/commit5.zip -d ./
git add .
git commit --allow-empty -m "r5"

# br6
git checkout -b br6

# br6 r6
unzip -o ../story/commit6.zip -d ./
git add .
git commit --allow-empty -m "r6"


# br4
git checkout br4

# br4 r7
unzip -o ../story/commit7.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r7"

# br8
git checkout -b br8

# br8 r8
unzip -o ../story/commit8.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r8"

# br9
git checkout -b br9

# br9 r9
unzip -o ../story/commit9.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r9"

# br1
git checkout br1

# br1 r10
unzip -o ../story/commit10.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r10"

# br11
git checkout -b br11


# br11 r11
unzip -o ../story/commit11.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r11"

# br1
git checkout br1

# br1 r12
unzip -o ../story/commit12.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r12"

# br13
git checkout -b br13

# br13 r13
unzip -o ../story/commit13.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r13"

# master
git checkout master

# master r14
unzip -o ../story/commit14.zip -d ./
git add .
git commit --allow-empty -m "r14"

# br15
git checkout -b br15

# br15 r15
unzip -o ../story/commit15.zip -d ./
git add .
git commit --allow-empty -m "r15"

# br3
git checkout br3

# br3 r16
unzip -o ../story/commit16.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r16"

# br17
git checkout -b br17

# br17 r17
unzip -o ../story/commit17.zip -d ./
git add .
git commit --allow-empty -m "r17"

# br15
git checkout br15

# br15 r18
unzip -o ../story/commit18.zip -d ./
git add .
git commit --allow-empty -m "r18"

# br4
git checkout br4

# br4 r19
unzip -o ../story/commit19.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r19"

# merge br4 br1
git checkout br1
git merge br4
../conflict_resolver.sh ../story/commit20.zip "r20" "blue <blue@poop.us>"

# br9
git checkout br9

# br9 r21
unzip -o ../story/commit21.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r21"

# br8
git checkout br8

# br8 r22
unzip -o ../story/commit22.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r22"

# br11
git checkout br11

# br11 r23
unzip -o ../story/commit23.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r23"

# master
git checkout master

# master r24
unzip -o ../story/commit24.zip -d ./
git add .
git commit --allow-empty -m "r24"

# br17
git checkout br17

# br17 r25
unzip -o ../story/commit25.zip -d ./
git add .
git commit --allow-empty -m "r25"

# br8
git checkout br8

# br8 r26
unzip -o ../story/commit26.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r26"

# br8
git checkout -b br27

# br8 r27
unzip -o ../story/commit27.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r27"

# br15
git checkout br15

# merge br15 br27
git merge br27 -m "merged br27 to br15"
../conflict_resolver.sh ../story/commit28.zip "r28" "red <red@poop.us>"

# br15 r29
unzip -o ../story/commit29.zip -d ./
git add .
git commit --allow-empty -m "r29"

# br3
git checkout br3

# br3 r30
unzip -o ../story/commit30.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r30"

# br9
git checkout br9

# br9 r31
unzip -o ../story/commit31.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r31"

# br32
git checkout -b br32

# br32 r32
unzip -o ../story/commit32.zip -d ./
git add .
git commit --allow-empty -m "r32"

# br5
git checkout br5

# br5 r33
unzip -o ../story/commit33.zip -d ./
git add .
git commit --allow-empty -m "r33"

# br9
git checkout br9

# br9 r34
unzip -o ../story/commit34.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r34"

# br8
git checkout br8

# br8 r35
unzip -o ../story/commit35.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r35"

# br1
git checkout br1

# br1 r36
unzip -o ../story/commit36.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r36"

# br13
git checkout br13

# br13 r37
unzip -o ../story/commit37.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r37"

# br15
git checkout br15

# br15 r38
unzip -o ../story/commit38.zip -d ./
git add .
git commit --allow-empty -m "r38"

# br5
git checkout br5

# br5 r39
unzip -o ../story/commit39.zip -d ./
git add .
git commit --allow-empty -m "r39"

# br1
git checkout br1

# merge r1 r5
git merge br5 -m "merged br1 to br5"
../conflict_resolver.sh ../story/commit40.zip "r40" "blue <blue@poop.us>"

# br3
git checkout br3

# br3 r41
unzip -o ../story/commit41.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r41"

# br3 r42
unzip -o ../story/commit42.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r42"

# br11
git checkout br11

# br11 r43
unzip -o ../story/commit43.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r43"

# br2
git checkout br2

# br2 r44
unzip -o ../story/commit44.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r44"

# br13
git checkout br13

# merge br13 br2
git merge br2 -m "merged br13 to br2"
../conflict_resolver.sh ../story/commit45.zip "r45" "blue <blue@poop.us>"

# br23 r46
unzip -o ../story/commit46.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r46"

# br1
git checkout br1

# br1 r47
unzip -o ../story/commit47.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r47"

# br8
git checkout br8

# br8 r48
unzip -o ../story/commit48.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r48"

# br17
git checkout br17

# br17 r49
unzip -o ../story/commit49.zip -d ./
git add .
git commit --allow-empty -m "r49"

# br8
git checkout br8

# br8 r50
unzip -o ../story/commit50.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r50"

# br15
git checkout br15

# merge br15 br8
git merge br8 -m "merged br15 to br8"
../conflict_resolver.sh ../story/commit51.zip "r51" "red <red@poop.us>"

# br32
git checkout br32

# br32 r52
unzip -o ../story/commit52.zip -d ./
git add .
git commit --allow-empty -m "r52"

# br17
git checkout br17

# br17 r32
unzip -o ../story/commit53.zip -d ./
git add .
git commit --allow-empty -m "r53"

# br15
git checkout br15

# br15 r54
unzip -o ../story/commit54.zip -d ./
git add .
git commit --allow-empty -m "r54"

# br13
git checkout br13

# br13 r55
unzip -o ../story/commit55.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r55"

# br17
git checkout br17

# merge br17 br13
git merge br13 -m "merged br17 to br13"
../conflict_resolver.sh ../story/commit56.zip "r56" "red <red@poop.us>"

# br1
git checkout br1

# br1 r57
unzip -o ../story/commit57.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r57"

# br17
git checkout br17

# merge br17 br1
git merge br1 -m "merged br17 to br1"
../conflict_resolver.sh ../story/commit58.zip "r58" "red <red@poop.us>"

# br3
git checkout br3

# br3 r59
unzip -o ../story/commit59.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r59"

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

# br17
git checkout br17

# br17 r63
unzip -o ../story/commit63.zip -d ./
git add .
git commit --allow-empty -m "r63"

# br9
git checkout br9

# br9 r64
unzip -o ../story/commit64.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r64"

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

# master
git checkout master

# master r67
unzip -o ../story/commit67.zip -d ./
git add .
git commit --allow-empty -m "r67"

# br11
git checkout br11

# br11 r68
unzip -o ../story/commit68.zip -d ./
git add .
git commit --allow-empty --author="blue <blue@poop.us>" -m "r68"

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