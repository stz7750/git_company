let i = 0;

function timedCount() {
  i ++;
  postMessage(i);
  setTimeout("timedCount()",500);
}
//postMessage() : HTML 페이지에 메시지를 다시 게시하는 데 사용되는 메서드
timedCount();