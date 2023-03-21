# docker_jupyter

## 備忘録

- Jupyter notebookを起動した後、ホスト端末のブラウザでトークン認証を求められる場合は前のプロセスが使用していたポートが埋まっていることが考えられる。その場合は以下のコマンドで解決

%sudo lsof -i:8888

出力の中で、COMMANDがPythonのプロセスをkillすればよい

%sudo kill <PID>

