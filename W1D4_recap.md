# Simple nonblocking
## 1. new
- get '/' => erb :index,
- <form>을 통해 제목(title), 내용(content) 입력

## 2. ㅊㄱㄷㅁㅅㄷ
- get 'write' => erb :write,
- File.open을 통해 내용 쓰기

## 3. read
- get 'show' => erb :show
- File.open을 통해 모든 블로그 내용 읽기
