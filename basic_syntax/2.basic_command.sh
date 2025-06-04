# 현재 working directory, staging area 상태 확인 
git status

# .은 모든 수정/추가 사항 add
git add .

# 특정 파일만 add할 경우(경로까지 포함함)
git add testfolder/test1.txt

# commit을 통해 메시지타이틀과 메시지내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"

# git commit만 입력하고 엔터시 vi모드 -> 첫줄 : 타이틀, 두번째줄부터 내용
git commit 

#commit 이력 확인
git log
git log --oneline
# head 하단의 로그만 보이는 것이아니라, 모든 commit이력을 조회
# head : 현재 checkout 하고 있는 commitId를 의미
git log --all

#원격저장소로 업로드
git push origin 브랜치명

# 충돌발생시 충돌무시하고, 로컬기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force 

## add와 동시에 커밋밋
git commit -am "커밋메시지" 

# 특정 commit Id로 전환
git checkout 커밋ID

# 특정 branch로의 전환
git checkout 브랜치명

#pull은 원격 변경사항을 local로 내려받는 것(fetch+merge)
git pull origin main

#fetch는 변경사항을 local로 가져오되, 병합은 하지 않는 것
git fetch origin main 

#만약 모든 브랜치의 변경사항을 가져오려면 
git fetch --all

#버전별(commit간) 비교 명령여
git diff a b 
git diff commitID1 commitID2
git diff 브랜치1 브랜치2


# 가장 최신의 커밋 취소
git reset head~1
git reset head^

# 이미 push된 commit 사항 되돌리기(완전한 취소X) commitID 생성성
git revert 커밋ID


