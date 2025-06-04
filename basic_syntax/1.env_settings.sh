# .은 모든 변경사항을 의미. 특정 파일만 add 시키는 것도 가능 
# add 는 staging area로 변경사항을 이동함을 의미
git add .

# commit 은 변경사항을 확정 짓고, 변경이력(commit ID) 발생.
#commit 시에 staging area는 비워지고, local repository에 변경이력 발생
git commit -m "메시지"

# origin : 원격의미.
git push origin 브랜치명 

# github 인증방법 2가지
# 1. 직접토큰발급 2.웹을 통한 인증(vscode, intellij 등을 통해)
# 직접 토큰을 발급 받으면 권한을 통제할 수 있다.

# git 프로젝트 생성방법 2가지
# 1. 원격에서부터 repo 생성 후 clone
# 2. 로컬에서부터 프로젝트 생성 후 github에 업로드 
# 둘의 차이는 .git파일의 여부.
# 2-1) .git 폴더를 생성 
git init 
# 2-2) 원격지 주소를 추가
git remote add origin 레포주소 

# 다른 repo에서 클론을 받아 나의 github으로 올리기
#1. 커밋이력 그대로 가져가기
git clone 타인 repo 주소
git remote set-url origin 본인 repo 주소
git push origin main

# 2.커밋이력 없이 가져가지
git clone 타인 repo 주소
.git 폴더 삭제
git init
git remote add origin 본인 repo 주소
git checkout -b main #main을 만들면서 main응로 switching 
add, commit, push했다.

# 사용자지정
# 전역적 사용자지정(이름, email)
git config --global user.name "유저명"
git config --global user.email "이메일명"

#git 설정정보 조회
git config --list #나올때는 q - vi 편집기 명령어

# .gitignore파일은 git추적목록에서 제외
# 경로 : root경로에서부터 시작. ex) testfolder/important_config.yml
# 만약 이미 git에서 추적되고 있는 파일은 캐시 삭제 필요
git rm -r --cached .