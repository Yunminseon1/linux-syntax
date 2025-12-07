# 사용자 추가 및 비밀번호 지정
sudo useradd newuser1
sudp passwd newuser1 
# sudo : root의 권한으로 실행 -> root의 비밀번호가 아닌, 현재 사용자의 비밀번호 입력

# SU : 사용자 변경 -> 변경하고자 하는 계정의 비밀번호 
su - newuser1

# chmod는 권한변경 : u(소유자)g(그룹)o(그외)로 구성
chmod rwx 파일명
chmod u+x 파일명
chmod g-x 파일명
chmod o=r 파일명 

# chown은 소유자 : 그룹 변경 
sudo chown newuser1 : newuser1 
