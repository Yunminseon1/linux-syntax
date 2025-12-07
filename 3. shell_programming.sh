# 쉘 스크립트는 반드시 .sh 확장자를 가진다.
# 쉘 스크립트는 실행할 떄, ./myscript.sh로 실행하고, 
# 실행을 위해서는 실행권한(x)가 필요하다.

touch mtscript.sh
namo myscript.sh

echo"hello world"

chmod u+x myscript.sh
./myscript.sh

# 실습1
# myscript2 쉘스크립트파일 생성
# 터미널창에 script start라는 문구 출력
# 홈디렉토리에서 mydir이라는 폴더 생성
# mydir로 이동해서 file1.txt, file2.txt 파일생성
# file1.txt에는 hello from file1이라는 문구 입력
# file2.txt에는 hello from file2이라는 문구 입력
cd
mkdir mydir
cd mydir
touch file1.txt file2.txt
echo "hello from file1" > file1.txt
echo "hello from file2" > file2.txt

# 실습2
# 요구사항 
# myscript3 쉘스크립트파일 생성
# script2 start 터미널창에 출력
# 홈디렉토리의 mydir로 이동(절대경로로 이동)
# file1.txt파일의 백업본 생성. 이름은 file1_backup.txt
# file2.txt파일의 이름을 file2_rename.txt로 변경
# script2 end 터미널창에 출력
echo "script3 start"
cd /home/realview45/mydir
cp file1.txt file1_backup.txt
mv file2.txt file2_rename.txt
echo "script3 end"

chmod 741 myscript3.sh
./myscript3.sh

# if문 1이 2보다크면
if [ 1 -gt 2 ]; then
 echo "hello world1"
else
 echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
# 현재위치에서 파일명의 파일이 있다면
file_name=first_file.txt
if [ -f "$file_name" ]; then
    echo "$file_name file exists"
else
    echo "$file_name file does not exists"
fi

# for문
for a in {1..100}
do
    echo "hello world $a"
done

# for문과 파일/디렉토리 목록조회
for a in *
do
    echo "$a"
done

#for문을 통해 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1
done
echo "count value is $count"