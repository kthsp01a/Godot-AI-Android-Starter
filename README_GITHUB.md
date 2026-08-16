# GitHub 연결 역할

이 폴더를 저장소 루트에 올리면 GitHub는 다음 역할을 맡습니다.

- 소스 버전 관리
- Codex 작업 브랜치/PR 경로
- Android 빌드 자동화의 기반
- 실패한 변경의 rollback 기준점

현재 ChatGPT GitHub 커넥터에서 접근 가능한 사용자 저장소가 0개로 확인되어
이 스타터는 아직 실제 사용자 저장소에 push되지 않았습니다.

권장 흐름:
1. 새 GitHub 저장소 생성
2. ChatGPT GitHub 앱에 해당 저장소 접근 허용
3. 이 스타터의 game/ 내용을 저장소 루트로 업로드
4. Godot AI 플러그인 설치
5. Codex MCP 연결 확인
6. Android export preset 생성
7. GitHub Actions 또는 Android의 GABE로 APK 빌드
