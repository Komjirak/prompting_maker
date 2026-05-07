# Release Log

## v1.0.0 - 2026-05-07
### Added
- Gemini 3 flash preview 특화 **전문가용 멀티 에이전트 프롬프트 작성기** 문서 추가.
- 서비스 역할 기반 입력 블록(INPUT BLOCK) 제공.
- 복사/붙여넣기 가능한 최종 시스템 프롬프트 템플릿 제공.
- 가드레일(욕설/비속어/성인/개인정보/불법행위) 및 할루시네이션 억제 정책 내장.
- 범위 외 질문 거절 템플릿 및 내부 Self-Review 체크리스트 추가.

### Notes
- 배포 시 버전 증가 규칙: 기능 추가(minor), 정책 변경(major), 오탈자/문구 개선(patch).

## v1.1.0 - 2026-05-07
### Added
- 서비스 테스트/배포를 위한 FastAPI 앱(`app.py`) 추가.
- 프롬프트 생성 API `POST /v1/prompt` 및 헬스체크 `GET /health` 추가.
- 컨테이너 배포용 `Dockerfile`, 의존성 `requirements.txt`, 원클릭 배포 스크립트 `deploy.sh` 추가.

### Notes
- 로컬 테스트: `uvicorn app:app --reload --port 8000`
- 배포 테스트: `./deploy.sh` 후 `curl http://localhost:8000/health`

## v1.2.0 - 2026-05-07
### Added
- Vercel 웹 배포용 엔트리포인트 `api/index.py` 추가.
- Vercel 라우팅/빌드 설정 `vercel.json` 추가.
- 즉시 배포용 스크립트 `deploy_vercel.sh` 추가.

### Notes
- 배포 명령: `./deploy_vercel.sh`
- 배포 후 확인: `/`, `/health`, `/v1/prompt`

## v1.2.1 - 2026-05-07
### Changed
- `deploy_vercel.sh`를 토큰 기반 비대화형 배포(`VERCEL_TOKEN`) 지원 형태로 개선.
- npm 설치 실패 환경을 고려해 standalone 설치 경로를 우선 시도하도록 조정.
