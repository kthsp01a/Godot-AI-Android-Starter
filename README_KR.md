# Godot AI → Codex/ChatGPT → GitHub → Android 스타터

## 채택안
1순위: Godot AI (무료, MIT)
2순위: Godot MCP Pro (대체 경로)

Godot AI 공식 저장소 기준:
- Godot 4.5+ 필요, 4.7+ 권장
- Codex 지원
- Python 서버 실행에 uv 필요
- Godot 플러그인이 MCP 서버와 WebSocket으로 연결
- Codex MCP 설정 자동/수동 구성 가능

## 실제 연결 구조

Codex
  ↓ MCP stdio attach
Godot AI Python MCP server :8000
  ↓ WebSocket :9500
Godot AI Editor Plugin
  ↓
Godot Editor + game/
  ↓
GitHub
  ↓
Android APK/AAB

## 설치 순서

### A. Godot
Godot 4.7+ 권장.

### B. Godot AI
Godot의 AssetLib에서 `Godot AI` 검색 → Download → Install.
Project > Project Settings > Plugins → Godot AI 활성화.

최신 버전이 필요하면 hi-godot/godot-ai 저장소의
`plugin/addons/godot_ai`를 프로젝트의 `addons/`에 복사.

### C. uv
Godot AI Python MCP server 구동에 필요.
OS별 설치 후 `uv` 또는 Godot AI가 안내하는 launcher를 사용.

### D. Codex
Godot AI Dock의 Clients 메뉴에서 Codex Configure를 우선 사용.
자동구성이 안 되면 mcp/codex_config.toml.example 참고.

### E. 연결 시험
mcp/godot_ai_test_prompts.txt 순서대로 실행.
씬 계층 읽기 → 스크립트 읽기 → 텍스트 수정 → 프로젝트 실행 →
Android 세로 viewport 확인이 모두 통과해야 연결 완료로 판정.

### F. Android
Android 기기 자체 빌드는 Godot Android Editor + GABE 조합을 사용 가능.
GABE는 Gradle 빌드 환경을 제공한다.
처음에는 Debug APK, 이후 release keystore + AAB로 확장.

## 이 스타터의 테스트 프로젝트

game/ 폴더는 720×1280 세로 화면을 기본으로 만든 최소 Godot 프로젝트다.
버튼을 누르면 "터치 입력 정상"으로 바뀐다.

이 프로젝트의 목적은 게임 제작이 아니라:
- Godot 프로젝트 정상 로드
- GDScript 정상 실행
- 모바일 버튼 입력
- MCP가 scene/script를 읽고 수정
- Android 세로 화면
을 한 번에 확인하는 최소 연결 테스트다.

## 완료 판정

다음 6개가 실제로 확인되어야 GREEN:
1. Godot 프로젝트 로드
2. Godot AI 플러그인 활성
3. Codex에서 godot-ai MCP 표시
4. scene hierarchy read 성공
5. 프로젝트 run 및 오류 0
6. APK 빌드 및 Android 실기기 실행

현재 이 ZIP 자체는 준비 완료지만,
사용자 GitHub 저장소 접근 권한과 실제 Godot 런타임이 없으므로
3~6은 아직 실증되지 않았다.
