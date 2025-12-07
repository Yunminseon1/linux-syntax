# 프로세스 목록조회
ps -ef | grep "nginx"

# 패키지관련
# yum -레드햇계열 패키지관리도구, apt-데비안계열 패키지관리도구
# 패키지 목록 최신화
sudo apt update
# nginx 등 프로그램 설치
sudo apt install
# 프로세스 실행관리 도구 : systemctl
sudo systemctl start nginx
sudo systemctl stop nginx
# 프로세스 강제 종료
sudo kill -9 PID(프로세스ID(ps -ef로 찾기))

# 특정 도메인의 ip 주소 정보 조회ㅣ : DNS서버에 문의
nslookup google.com
(www는 서브도메인 이미 본인소유)

# 로컬 ip 정보 조회
ifconfig

# 네트워크연결상태 조회 
# 일반적으로 ping은 보안상 막아두고 있음.(DDOS공격 장애 보안목적상)
ping IP주소
ping 8.8.8.8 (구글 DNS서버중의 하나)

# IP와 포트를 이용해, 특정 서버의 특정 프로그램의 통신상태까지 확인가능
# 일반적으로 telnet은 막혀있고, 사용하기를 권장하지 않음.
telnet IP주소 포트번호(잘안씀)
nc -zv IP주소(또는도메인) 포트번호(넷캣)

# 원격접속 :  22 port open(허용) 22번포트를연결해야되고 사용자는 ssh라는 명령어를 사용한다.
ssh 계정명@도메인주소(또는IP주소)
ex) aws
        펨키
ssh -i "test.pem" unbuntu@ldkfjsldkfj
                  unbuntu라는 계정을 만들어줌
# 원격파일전송 22 port open 파일을 원격지로 전송
scp 전송하고자하는파일 원격지주소