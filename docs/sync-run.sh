#!/bin/bash
cd ~/workspace/running_page
uv run python run_page/joyrun_sync.py 你的uid 你的sid --from-uid-sid --with-gpx \
  && git add -A && git commit -m "update runs" && git push

  ## uid/sid 会过期（有效期不固定）。哪天这条命令突然报登录失败/权限错误，不是坏了，重新走一次短信流程换一组新的就行。