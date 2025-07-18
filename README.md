## Ugly Code

### SND A2联合任务LUA脚本

#### Autohook 预设

- 基于 https://github.com/PunishXIV/AutoHook/wiki/Cosmic-Exploration#bsmfsh-a-2-processed-aquatic-metals-cosmic-exploration 修改
  - 700GP才抛竿
  - 14条鱼自动结束
  - 关闭收藏品

```
AH4_H4sIAAAAAAAACtVXTW/bRhD9L3smC3L5teRNUW3XgJwakYIejB5W5FBamOIqy2Vi1xCQAAXaHAoUSIGgQFHkUqDXHnpq/07d+l8US3IlkpLsJjBa9ybN7rx587izM3uFBqXkQ1rIYpjOUHSFDnI6zWCQZSiSogQDqcURy0EtHs9yLuCE83iOopRmBRiNQ6K3HycowiQ00NFyMhdQzHmWoCiwLAOdCsYFk5cosg10XBxcxFmZQLIxK4RVHbGJcYWqH7gKrpB90kO2e8i3Q1cYYdDxsO4kM5yXC83AtS23R4H0KGgvnmUQy5aj3d6G7w7LRcJotvkqHZFt7PthG9Bt3A5ZMT+4hKIV2Osx9rwOY1+LTs9hPGepfERZxVsZCm0YSxqfFyjyGhl9so3bRg0b1FMqGeQxtPj4fT+/qyDWroJ9AUMq66Ogo/a9Cel6O433ZE4zRs+LQ/qcCwXQMeh0HKNrfwIxfw4CRbYSadfp9ok6Aq2AWr9HbHZEF1Wig3yWgSh0EPWxExQ5geX22eMOFFmtDHRwIQXt1OOagPoQEz5+QZfHuSyZZDw/oizX8pi2gUalgBMoCjoDFCFkoMcVJ3T99h1qAC6XgCIl0w64ES/kh8KdCihgNz9koj3rdcBqfUNnvIRYCpoNSyEgl/eTYw/0vjLdyXUr353Bq12HXMRQVdgLutQfujImylrVjBd6ntGcqrHkS1XkLJ+NJSyr63STZHPyBuJecmujVWSf5uxZCQoWYdtJHGIFpuelnukmfmwSSjwTCODAs1xKyBStDDRihfw0VTEKFJ1dVdEU/zW/MLyF4OuX1z+8vvnl95ufft1i+piLBc0+4fxcYemL5jOg1X9lL0CuK6jTsJrFtuSNqYZ37UBdYBpzLAXPZ/eAajkt1BHMIE+ouNxU+h6ECVuA6N0FJyxfL6lL8yPLQKpV7dqr7N39vtq+i9zHvJxmd4nYccR+uPa7U6i9nh0x9jif0It2ylsp1HhPC5gItqzF1ArUlvdKK/CwEqT2fM/EOr5bqf0bn1NTUNfFIJUghrSczeWILVRzt+uF/j1STXulqKcH9aPVJusO5oX9+efWCUoNXfqm14X6BJ6VTEAyllSWaqJQU93/vHrvA/ghV94O5wdVUf/U/T+vhlYDTW0/xCQITRxSbLquB+aUBmD6zhRDAAHxfIJWn+sO2ryJztaGuomeXaF2N3W90A7299Obr765fvvuz9/eXP/45c33P9+8edXpqva2RPrE7lHOVVJALllMM6WX4lHvGCx4mbcUbtj1B2Cn+xghikEpUhrDOFP1sk6r/9rAvXeXtzLQg3k3bgYy9IFjmPJVlqFSsRKwPZg145j6WZs327ZPsoXdzsGLp46dTmMwY4uEpktJYk5TyzVTSAJq2WGYJEl18GrohuQA//Xquz++/bo7BcY0iG1wUjMBKzbdALBJXOyZ2A1S30l8y8IOWv0Ntx7DXGkQAAA=
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