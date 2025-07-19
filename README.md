## Ugly Code

### SND A2联合任务LUA脚本

#### Autohook 预设

- 基于 https://github.com/PunishXIV/AutoHook/wiki/Cosmic-Exploration#bsmfsh-a-2-processed-aquatic-metals-cosmic-exploration 修改
  - 700GP才抛竿
  - 14条鱼自动结束
  - 关闭收藏品
  - 950+GP使用雄心避免溢出

```
AH4_H4sIAAAAAAAACtVXz4vbRhT+X+YsFWkkjX7cHHd3u+BNl9ihh6WHsfRsDytrnNEo2e1iaKDQ5lAIJBAKpeRS6LWHntp/p9v6vygjaWxJtnebYMr2Zr+Z973vfZo3780N6hWS92ku8/5kiqIbdJTRcQq9NEWRFAUYSC0OWAZq8XSacQFnnMczFE1omoNROyR6+2mCIhyEBjpZjGYC8hlPExT5lmWgc8G4YPIaRbaBTvOjqzgtEkg2ZoWwrCLWMW5Q+QOXwRUyCTrIdgf5bugSI/RbHta9ZPqzYq4ZuLbldigEHQrai6cpxLLhaDe34fvDcpEwmm6+SktkGxMSNgHd2u2Y5bOja8gbgb0OY89rMSZadHoJwxmbyEeUlbyVIdeGoaTxZY4ir5aRBNu4TdSwRj2nkkEWQ4MP6fqRtoJYuwr2FfSprI6Cjtr1DoK2t1N7j2Y0ZfQyP6bPuVAALYNOxzHa9icQ8+cgUGQrkXadbhKoI9AIqPV7xKYndF4m2sumKYhcB1EfO0GR41tulz1uQQXLpYGOrqSgrXpcE1AfYsSHL+jiNJMFk4xnJ5RlWh7TNtCgEHAGeU6ngCKEDPS45IRu371HNcD1AlCkZNoBN+C5/Fi4cwE57OaHTLRnvQpYrm/oDBcQS0HTfiEEZPIwOXZAD5XpTq5b+e4MXu465iKGssJe0IX+0KUxUdayZrzQ84z6VA0lX6giZ9l0KGFRXqebJOuT1xMHya2JVpJ9mrFnBShY5AEG2/Udk3gJMV0c++YYEtsk48SyY3BCHABaGmjAcvn5RMXIUXRxU0ZT/Nf8wvAOgq++vv3x1erXP1Y//7bF9DEXc5p+xvmlwtIXzRdAy//KnoNcV1CrYdWLTclrUwXv2r66wDTmUAqeTQ+AajkN1AFMIUuouN5U+h6EEZuD6NwFZyxbL6lL8xPLQKpV7dqr7O39RG3fRe5TXozT+0RsOWISrv3uFWqvZ0uMPc5n9KqZ8lYKFd7THEaCLSoxtQKV5YPS8j2sBKk8PzCxlu9Wav/F59QU1HXRm0gQfVpMZ3LA5qq529VC9x4pp71CVNOD+qE7mL2zFzq+F3bHoVD1zb2jjRrC9M2vC/cJPCuYgGQoqSzUhKGmvP95NR8C+CFX4g7nB1Vh/9b9MNXh7C+HO98Xy1ZDHcdBkoRj30xwTE03Jr4ZWCGYoTUmFvFDOg4stPxSd9T6jXSxNlRN9eIGNbur64W2v7+/rr79/vbd+79+f3P70zerH35ZvXnZ6rL2tkT6xO5RzlVSQCZZTFOll+JR7ejNeZE1FK7ZdQdip/04CRSDQkxoDMNU1cs6re7rA3feYd7SQA/mHbkZ0NBHjmXKV1n6SsVSwOagVo9n6mdl3mzbPskWdlsHLwntMXYoMenYwqbrhdQMCISmPbETF3w7Ji4tD14FXZPs4b9fvv3z9XftqTCmfmyDMzETsGLT9QGbgYs9E7v+hDgJsSzsoOU/kurgbXkQAAA=
```

- 使用方式

  - 需要SND/ICE/Autohook/Arstian/Simpletweaks

  - 导入lua脚本并配置`comsic = 1`

  - 切换为采集职业配置ICE领取第一个任务：A-2 加工水产金属锭，领取成功以后运行脚本

    ```
    /equipjob 捕鱼人
    /ice only 508 (会清空配置，建议手动给钓鱼配)
    /ice start
    /snd run Lua宏名
    ```

  - 已知问题（不会/懒）/TODO

    - 过段时间会警惕
    - 最后时间钓上鱼会搓不完浪费GP(没找到获取GP的函数)