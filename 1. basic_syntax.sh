## 주요 명령어 목록

# 현재 위치 경로를 출력
pwd

# 현재위치에서 파일 및 폴더 목록 조회
ls

# 목록조회 자세히 
ls -l

# 목록 조회 자세히, 숨김파일까지
ls -al

# 목록 조회 자세히, 숨김파일까지, 오래된순정렬
ls -alrt

# 디렉토리 생성
mkdir [디렉토리명]

# 특정 디렉토리로 이동
cd [디렉토리명]

# 상위 디렉토리 이동
cd .. 

# 하위 디렉토리 이동
cd .

# 루트 디렉토리 이동(최상위디렉토리)
cd /

# 직전 폴더로 이동
cd -

# 홈경로 이동 
cd

# 파일내용 터미널창에 출력 명령
cat [파일이름]

# 편집기(nano, vi)
nano [파일명.txt] 
vi [파일명.txt]

# 파일 내용 상위 10줄 출력
head [파일명]

# 파일 내용 하위 10줄 출력
tail [파일명]

# 파일내용 하위 n줄 출력
tail -숫자 [파일명]

# 파일내용 실시간 조회
tail -f [파일명]

# 도스키(화살표키)를 통해 이전 명령어 조회
# history를 통해 이전 명령어 모두 조회
# clear를 통해 이전 명령어 내역 삭제 
# ctrl + c를 통해 입력중인 명령어 취소 

# 파일삭제 
rm [파일명]

# 파일+ 폴더 삭제
rm -r [폴더명]

# 터미널창에 입력한 문자열 출력
echo "hello  world"

# echo + >는 덮어쓰기(이전 내용 삭제), echo + >> 는 추가모드(이전 내용 유지)
echo "hello world" > [파일명.txt]

# 복사 명령어
cp [복사대상파일명] [복사될파일명]

# 파일 이동 명령어
mv 이동대상 파일 경로/이동될 파일명

# 현재 폴더에서 파일명 변경
mv 파일1.txt ./파일2.txt

# 상위 폴더로 파일 이동
mv 파일1.txt ../

# grep : 파일 내에서 문자열 찾기 
grep -rni "hello world".

#find: 이름으로 파일 or 디렉토리 찾기
find . -name "*.txt"
find . type f

# find와 grep의 혼용
# | xargs를 통해 왼쪽 실행문의 결과값을 오른쪽 실행문의 input값으로 전달
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# arguments: 인수값 인자값 txt로 끝나는걸 다찾아서 hello를 찾는다.

# find - 이름이 test1으로 시작하는 파일찾기
# grep - hello 라는 키워드가 들어있는 문장찾기 
find . -type f -name "test1*"| xargs grep -rni "hello"
